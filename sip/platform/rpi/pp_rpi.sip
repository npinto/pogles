/*
 * This is the SIP interface definitions that implement the platform specific
 * pp*() functions for the Raspberry Pi platform.
 *
 * Copyright (c) 2012 Riverbank Computing Limited
 *
 * This file is part of pogles.
 *
 * This copy of pogles is licensed for use under the terms of the BSD license.
 *
 * pogles is supplied WITHOUT ANY WARRANTY; without even the implied warranty
 * of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
 */


%Module(name=pogles.platform, language="C")

%Copying
Copyright (c) 2012 Riverbank Computing Limited

This file is part of pogles.

This copy of pogles is licensed for use under the terms of the BSD license.
  
pogles is supplied WITHOUT ANY WARRANTY; without even the implied warranty
of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
%End


%Include ../pp_common.sip
%Include egl_rpi.sip


%ModuleHeaderCode
#include <bcm_host.h>
#include <EGL/egl.h>
%End


const char *ppGetPlatformName(void);
%MethodCode
    sipRes = "rpi";
%End


int ppGetPlatformHexVersion(void);
%MethodCode
    sipRes = 0x010000;
%End


EGLNativeWindowType ppCreateNativeWindow(void);
%MethodCode
#define PP_DISPLAY_NUMBER       0
#define PP_DISPLAY_DEVICE       0
#define PP_UPDATE_PRIORITY      0
#define PP_ELEMENT_LAYER        0
#define PP_ELEMENT_SRC_RESOURCE 0
#define PP_ELEMENT_TRANSFORM    0

    static int needs_init = 1;
    uint32_t width, height;

    if (needs_init)
    {
        bcm_host_init();
        needs_init = 0;
    }

    if (graphics_get_display_size(PP_DISPLAY_NUMBER, &width, &height) < 0)
    {
        platform_raise_exception("graphics_get_display_size()");
        sipIsErr = 1;
    }
    else
    {
        DISPMANX_DISPLAY_HANDLE_T display = vc_dispmanx_display_open(PP_DISPLAY_DEVICE);

        if (display == DISPMANX_NO_HANDLE)
        {
            platform_raise_exception("vc_dispmanx_display_open()");
            sipIsErr = 1;
        }
        else
        {
            DISPMANX_UPDATE_HANDLE_T update = vc_dispmanx_update_start(PP_UPDATE_PRIORITY);

            if (update == DISPMANX_NO_HANDLE)
            {
                platform_raise_exception("vc_dispmanx_update_start()");
                sipIsErr = 1;
            }
            else
            {
                DISPMANX_ELEMENT_HANDLE_T element;
                VC_RECT_T dst_rect, src_rect;

                dst_rect.x = 0;
                dst_rect.y = 0;
                dst_rect.width = width;
                dst_rect.height = height;

                src_rect.x = 0;
                src_rect.y = 0;
                src_rect.width = width << 16;
                src_rect.height = height << 16;

                element = vc_dispmanx_element_add(update, display,
                        PP_ELEMENT_LAYER, &dst_rect, PP_ELEMENT_SRC_RESOURCE,
                        &src_rect, DISPMANX_PROTECTION_NONE, NULL, NULL,
                        PP_ELEMENT_TRANSFORM);

                if (element == DISPMANX_NO_HANDLE)
                {
                    platform_raise_exception("vc_dispmanx_element_add()");
                    sipIsErr = 1;
                }
                else
                {
                    EGL_DISPMANX_WINDOW_T *native_window;

                    vc_dispmanx_update_submit_sync(update);

                    native_window = sipMalloc(sizeof (EGL_DISPMANX_WINDOW_T));

                    if (native_window == NULL)
                    {
                        sipIsErr = 1;
                    }
                    else
                    {
                        native_window->element = element;
                        native_window->width = width;
                        native_window->height = height;

                        sipRes = native_window;
                    }
                }
            }
        }
    }
%End
