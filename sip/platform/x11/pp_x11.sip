/*
 * This is the SIP interface definitions that implement the platform specific
 * pp*() functions for the X11 platform.
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


%Module(name=pogles.platform, language="C", use_argument_names=True)

%Copying
Copyright (c) 2012 Riverbank Computing Limited

This file is part of pogles.

This copy of pogles is licensed for use under the terms of the BSD license.
  
pogles is supplied WITHOUT ANY WARRANTY; without even the implied warranty
of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
%End


%Include ../pp_common.sip
%Include egl_x11.sip


%ModuleHeaderCode
#include <X11/Xlib.h>
#include <X11/Xatom.h>
#include <X11/Xutil.h>
#include <EGL/egl.h>
%End


const char *ppGetPlatformName(void);
%MethodCode
    sipRes = "x11";
%End


int ppGetPlatformHexVersion(void);
%MethodCode
    sipRes = 0x010000;
%End


EGLNativeWindowType ppCreateNativeWindow(const char *title="pogles-x11",
        int width=320, int height=240) /KeywordArgs="Optional"/;
%MethodCode
    static Display *x_display = NULL;

    if (x_display == NULL)
        x_display = XOpenDisplay(NULL);

    if (x_display == NULL)
    {
        platform_raise_exception("XOpenDisplay()");
        sipIsErr = 1;
    }
    else
    {
        Window root, win;
        XSetWindowAttributes swa, xattr;
        XWMHints hints;
        Atom wm_state;
        XEvent xev;

        root = DefaultRootWindow(x_display);

        swa.event_mask = ExposureMask | PointerMotionMask | KeyPressMask;

        win = XCreateWindow(x_display, root, 0, 0, width, height, 0,
                CopyFromParent, InputOutput, CopyFromParent, CWEventMask,
                &swa);

        xattr.override_redirect = 0;
        XChangeWindowAttributes (x_display, win, CWOverrideRedirect, &xattr);

        hints.input = 1;
        hints.flags = InputHint;
        XSetWMHints(x_display, win, &hints);

        /* Make the window visible on the screen. */
        XMapWindow(x_display, win);
        XStoreName(x_display, win, title);

        /* Get identifiers for the provided atom name strings. */
        wm_state = XInternAtom(x_display, "_NET_WM_STATE", 0);

        memset(&xev, 0, sizeof (xev));
        xev.type = ClientMessage;
        xev.xclient.window = win;
        xev.xclient.message_type = wm_state;
        xev.xclient.format = 32;
        xev.xclient.data.l[0] = 1;
        xev.xclient.data.l[1] = 0;

        XSendEvent(x_display, root, 0, SubstructureNotifyMask, &xev);

        sipRes = win;
    }
%End
