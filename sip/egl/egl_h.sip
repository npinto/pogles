/*
 * This is the SIP interface definitions corresponding to the egl.h file for
 * the egl module of pogles.
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


%ModuleHeaderCode
#include <EGL/egl.h>
%End


%Include eglplatform_h.sip


/* EGL Types */
/* EGLint is defined in eglplatform.h */
//typedef unsigned int EGLBoolean;
typedef unsigned int EGLenum;
typedef void *EGLConfig /Capsule/;
typedef void *EGLContext /Capsule/;
typedef void *EGLDisplay /Capsule/;
typedef void *EGLSurface /Capsule/;
//typedef void *EGLClientBuffer /Capsule/;

/* EGL Versioning */
const int EGL_VERSION_1_0;
const int EGL_VERSION_1_1;
const int EGL_VERSION_1_2;
const int EGL_VERSION_1_3;
const int EGL_VERSION_1_4;

/* EGL Enumerants. Bitmasks and other exceptional cases aside, most
 * enums are assigned unique values starting at 0x3000.
 */

/* EGL aliases */
//#define EGL_FALSE       0
//#define EGL_TRUE        1

/* Out-of-band handle values */
//#define EGL_DEFAULT_DISPLAY		((EGLNativeDisplayType)0)
//#define EGL_NO_CONTEXT			((EGLContext)0)
//#define EGL_NO_DISPLAY			((EGLDisplay)0)
//#define EGL_NO_SURFACE			((EGLSurface)0)

/* Out-of-band attribute value */
const int EGL_DONT_CARE;

/* Errors / GetError return values */
const int EGL_SUCCESS;
const int EGL_NOT_INITIALIZED;
const int EGL_BAD_ACCESS;
const int EGL_BAD_ALLOC;
const int EGL_BAD_ATTRIBUTE;
const int EGL_BAD_CONFIG;
const int EGL_BAD_CONTEXT;
const int EGL_BAD_CURRENT_SURFACE;
const int EGL_BAD_DISPLAY;
const int EGL_BAD_MATCH;
const int EGL_BAD_NATIVE_PIXMAP;
const int EGL_BAD_NATIVE_WINDOW;
const int EGL_BAD_PARAMETER;
const int EGL_BAD_SURFACE;
const int EGL_CONTEXT_LOST;

/* Reserved 0x300F-0x301F for additional errors */

/* Config attributes */
const int EGL_BUFFER_SIZE;
const int EGL_ALPHA_SIZE;
const int EGL_BLUE_SIZE;
const int EGL_GREEN_SIZE;
const int EGL_RED_SIZE;
const int EGL_DEPTH_SIZE;
const int EGL_STENCIL_SIZE;
const int EGL_CONFIG_CAVEAT;
const int EGL_CONFIG_ID;
const int EGL_LEVEL;
const int EGL_MAX_PBUFFER_HEIGHT;
const int EGL_MAX_PBUFFER_PIXELS;
const int EGL_MAX_PBUFFER_WIDTH;
const int EGL_NATIVE_RENDERABLE;
const int EGL_NATIVE_VISUAL_ID;
const int EGL_NATIVE_VISUAL_TYPE;
const int EGL_SAMPLES;
const int EGL_SAMPLE_BUFFERS;
const int EGL_SURFACE_TYPE;
const int EGL_TRANSPARENT_TYPE;
const int EGL_TRANSPARENT_BLUE_VALUE;
const int EGL_TRANSPARENT_GREEN_VALUE;
const int EGL_TRANSPARENT_RED_VALUE;
const int EGL_NONE;
const int EGL_BIND_TO_TEXTURE_RGB;
const int EGL_BIND_TO_TEXTURE_RGBA;
const int EGL_MIN_SWAP_INTERVAL;
const int EGL_MAX_SWAP_INTERVAL;
const int EGL_LUMINANCE_SIZE;
const int EGL_ALPHA_MASK_SIZE;
const int EGL_COLOR_BUFFER_TYPE;
const int EGL_RENDERABLE_TYPE;
const int EGL_MATCH_NATIVE_PIXMAP;
const int EGL_CONFORMANT;

/* Reserved 0x3041-0x304F for additional config attributes */

/* Config attribute values */
const int EGL_SLOW_CONFIG;
const int EGL_NON_CONFORMANT_CONFIG;
const int EGL_TRANSPARENT_RGB;
const int EGL_RGB_BUFFER;
const int EGL_LUMINANCE_BUFFER;

/* More config attribute values, for EGL_TEXTURE_FORMAT */
const int EGL_NO_TEXTURE;
const int EGL_TEXTURE_RGB;
const int EGL_TEXTURE_RGBA;
const int EGL_TEXTURE_2D;

/* Config attribute mask bits */
const int EGL_PBUFFER_BIT;
const int EGL_PIXMAP_BIT;
const int EGL_WINDOW_BIT;
const int EGL_VG_COLORSPACE_LINEAR_BIT;
const int EGL_VG_ALPHA_FORMAT_PRE_BIT;
const int EGL_MULTISAMPLE_RESOLVE_BOX_BIT;
const int EGL_SWAP_BEHAVIOR_PRESERVED_BIT;

const int EGL_OPENGL_ES_BIT;
const int EGL_OPENVG_BIT;
const int EGL_OPENGL_ES2_BIT;
const int EGL_OPENGL_BIT;

/* QueryString targets */
const int EGL_VENDOR;
const int EGL_VERSION;
const int EGL_EXTENSIONS;
const int EGL_CLIENT_APIS;

/* QuerySurface / SurfaceAttrib / CreatePbufferSurface targets */
const int EGL_HEIGHT;
const int EGL_WIDTH;
const int EGL_LARGEST_PBUFFER;
const int EGL_TEXTURE_FORMAT;
const int EGL_TEXTURE_TARGET;
const int EGL_MIPMAP_TEXTURE;
const int EGL_MIPMAP_LEVEL;
const int EGL_RENDER_BUFFER;
const int EGL_VG_COLORSPACE;
const int EGL_VG_ALPHA_FORMAT;
const int EGL_HORIZONTAL_RESOLUTION;
const int EGL_VERTICAL_RESOLUTION;
const int EGL_PIXEL_ASPECT_RATIO;
const int EGL_SWAP_BEHAVIOR;
const int EGL_MULTISAMPLE_RESOLVE;

/* EGL_RENDER_BUFFER values / BindTexImage / ReleaseTexImage buffer targets */
const int EGL_BACK_BUFFER;
const int EGL_SINGLE_BUFFER;

/* OpenVG color spaces */
const int EGL_VG_COLORSPACE_sRGB;
const int EGL_VG_COLORSPACE_LINEAR;

/* OpenVG alpha formats */
const int EGL_VG_ALPHA_FORMAT_NONPRE;
const int EGL_VG_ALPHA_FORMAT_PRE;

/* Constant scale factor by which fractional display resolutions &
 * aspect ratio are scaled when queried as integer values.
 */
const int EGL_DISPLAY_SCALING;

/* Unknown display resolution/aspect ratio */
const int EGL_UNKNOWN;

/* Back buffer swap behaviors */
const int EGL_BUFFER_PRESERVED;
const int EGL_BUFFER_DESTROYED;

/* CreatePbufferFromClientBuffer buffer types */
const int EGL_OPENVG_IMAGE;

/* QueryContext targets */
const int EGL_CONTEXT_CLIENT_TYPE;

/* CreateContext attributes */
const int EGL_CONTEXT_CLIENT_VERSION;

/* Multisample resolution behaviors */
const int EGL_MULTISAMPLE_RESOLVE_DEFAULT;
const int EGL_MULTISAMPLE_RESOLVE_BOX;

/* BindAPI/QueryAPI targets */
const int EGL_OPENGL_ES_API;
const int EGL_OPENVG_API;
const int EGL_OPENGL_API;

/* GetCurrentSurface targets */
const int EGL_DRAW;
const int EGL_READ;

/* WaitNative engines */
const int EGL_CORE_NATIVE_ENGINE;

/* EGL 1.2 tokens renamed for consistency in EGL 1.3 */
const int EGL_COLORSPACE;
const int EGL_ALPHA_FORMAT;
const int EGL_COLORSPACE_sRGB;
const int EGL_COLORSPACE_LINEAR;
const int EGL_ALPHA_FORMAT_NONPRE;
const int EGL_ALPHA_FORMAT_PRE;


/* EGL Functions */

EGLint eglGetError(void);
%MethodCode
    if (egl_pending_error < 0)
    {
        sipRes = eglGetError();
    }
    else
    {
        sipRes = egl_pending_error;
        egl_pending_error = -1;
    }
%End


// We don't require an explicit EGL_DEFAULT_DISPLAY argument.  If we want to
// allow a platform specific EGLNativeDisplayType argument in the future then
// we will add an overload.
SIP_PYOBJECT eglGetDisplay() /DocType="EGLDisplay"/;
%MethodCode
    EGLDisplay display;

    if ((display = eglGetDisplay(EGL_DEFAULT_DISPLAY)) == EGL_NO_DISPLAY)
    {
        sipRes = Py_None;
        Py_INCREF(sipRes);
    }
    else
    {
        sipRes = SIPCapsule_FromVoidPtr(display, "EGLDisplay");
    }
%End

void eglInitialize(EGLDisplay dpy, EGLint *major, EGLint *minor);
%MethodCode
    if (!eglInitialize(dpy, &major, &minor))
    {
        egl_raise_exception();
        sipIsErr = 1;
    }
%End

void eglTerminate(EGLDisplay dpy);
%MethodCode
    if (!eglTerminate(dpy))
    {
        egl_raise_exception();
        sipIsErr = 1;
    }
%End

const char *eglQueryString(EGLDisplay dpy, EGLint name);
%MethodCode
    sipRes = eglQueryString(dpy, name);

    if (sipRes == NULL)
    {
        egl_raise_exception();
        sipIsErr = 1;
    }
%End

SIP_PYLIST eglGetConfigs(EGLDisplay dpy) /DocType="list-of-EGLConfig"/;
%MethodCode
    EGLint nr_configs;
    EGLConfig *configs;

    if ((configs = egl_create_config_array(dpy, &nr_configs)) == NULL)
    {
        sipIsErr = 1;
    }
    else if (!eglGetConfigs(dpy, configs, nr_configs, &nr_configs))
    {
        egl_raise_exception();
        sipIsErr = 1;
    }
    else if ((sipRes = egl_config_list_from_array(configs, nr_configs)) == NULL)
    {
        sipIsErr = 1;
    }

    if (configs != NULL)
        sipFree(configs);
%End

SIP_PYLIST eglChooseConfig(EGLDisplay dpy, SIP_PYLIST attrib_list /DocType="list-of-int"/) /DocType="list-of-EGLConfig"/;
%MethodCode
    EGLint nr_configs;
    EGLConfig *configs;

    if ((configs = egl_create_config_array(dpy, &nr_configs)) == NULL)
    {
        sipIsErr = 1;
    }
    else
    {
        EGLint *attribs;

        if ((attribs = egl_create_attrib_list(attrib_list)) == NULL)
        {
            sipIsErr = 1;
        }
        else if (!eglChooseConfig(dpy, attribs, configs, nr_configs, &nr_configs))
        {
            egl_raise_exception();
            sipIsErr = 1;
        }
        else if ((sipRes = egl_config_list_from_array(configs, nr_configs)) == NULL)
        {
            sipIsErr = 1;
        }

        if (attribs != NULL)
            sipFree(attribs);
    }

    if (configs != NULL)
        sipFree(configs);
%End

EGLint eglGetConfigAttrib(EGLDisplay dpy, EGLConfig config, EGLint attribute);
%MethodCode
    if (!eglGetConfigAttrib(dpy, config, attribute, &sipRes))
    {
        egl_raise_exception();
        sipIsErr = 1;
    }
%End

EGLSurface eglCreateWindowSurface(EGLDisplay dpy, EGLConfig config,
        EGLNativeWindowType win,
        SIP_PYLIST attrib_list /DocType="list-of-int"/);
%MethodCode
    EGLint *attribs;

    if ((attribs = egl_create_attrib_list(attrib_list)) == NULL)
    {
        sipIsErr = 1;
    }
    else if ((sipRes = eglCreateWindowSurface(dpy, config, win, attribs)) == EGL_NO_SURFACE)
    {
        egl_raise_exception();
        sipIsErr = 1;
    }

    if (attribs != NULL)
        sipFree(attribs);
%End

EGLSurface eglCreatePbufferSurface(EGLDisplay dpy, EGLConfig config,
        SIP_PYLIST attrib_list /DocType="list-of-int"/);
%MethodCode
    EGLint *attribs;

    if ((attribs = egl_create_attrib_list(attrib_list)) == NULL)
    {
        sipIsErr = 1;
    }
    else if ((sipRes = eglCreatePbufferSurface(dpy, config, attribs)) == EGL_NO_SURFACE)
    {
        egl_raise_exception();
        sipIsErr = 1;
    }

    if (attribs != NULL)
        sipFree(attribs);
%End

//EGLSurface eglCreatePixmapSurface(EGLDisplay dpy, EGLConfig config,
//        EGLNativePixmapType pixmap, const EGLint *attrib_list);

void eglDestroySurface(EGLDisplay dpy, EGLSurface surface);
%MethodCode
    if (!eglDestroySurface(dpy, surface))
    {
        egl_raise_exception();
        sipIsErr = 1;
    }
%End

EGLint eglQuerySurface(EGLDisplay dpy, EGLSurface surface, EGLint attribute);
%MethodCode
    if (!eglQuerySurface(dpy, surface, attribute, &sipRes))
    {
        egl_raise_exception();
        sipIsErr = 1;
    }
%End

void eglBindAPI(EGLenum api);
%MethodCode
    if (!eglBindAPI(api))
    {
        egl_raise_exception();
        sipIsErr = 1;
    }
%End

EGLenum eglQueryAPI(void);

void eglWaitClient(void) /ReleaseGIL/;
%MethodCode
    EGLBoolean rc;

    Py_BEGIN_ALLOW_THREADS
    rc = eglWaitClient();
    Py_END_ALLOW_THREADS

    if (!rc)
    {
        egl_raise_exception();
        sipIsErr = 1;
    }
%End

void eglReleaseThread(void);
%MethodCode
    if (!eglReleaseThread())
    {
        egl_raise_exception();
        sipIsErr = 1;
    }
%End

//EGLSurface eglCreatePbufferFromClientBuffer( EGLDisplay dpy, EGLenum buftype,
//        EGLClientBuffer buffer, EGLConfig config, const EGLint *attrib_list);

void eglSurfaceAttrib(EGLDisplay dpy, EGLSurface surface, EGLint attribute,
        EGLint value);
%MethodCode
    if (!eglSurfaceAttrib(dpy, surface, attribute, value))
    {
        egl_raise_exception();
        sipIsErr = 1;
    }
%End

void eglBindTexImage(EGLDisplay dpy, EGLSurface surface, EGLint buffer);
%MethodCode
    if (!eglBindTexImage(dpy, surface, buffer))
    {
        egl_raise_exception();
        sipIsErr = 1;
    }
%End

void eglReleaseTexImage(EGLDisplay dpy, EGLSurface surface, EGLint buffer);
%MethodCode
    if (!eglReleaseTexImage(dpy, surface, buffer))
    {
        egl_raise_exception();
        sipIsErr = 1;
    }
%End

void eglSwapInterval(EGLDisplay dpy, EGLint interval);
%MethodCode
    if (!eglSwapInterval(dpy, interval))
    {
        egl_raise_exception();
        sipIsErr = 1;
    }
%End

EGLContext eglCreateContext(EGLDisplay dpy, EGLConfig config,
        EGLContext share_context,
        SIP_PYLIST attrib_list /DocType="list-of-int"/);
%MethodCode
    EGLint *attribs;

    if ((attribs = egl_create_attrib_list(attrib_list)) == NULL)
    {
        sipIsErr = 1;
    }
    else if ((sipRes = eglCreateContext(dpy, config, share_context, attribs)) == EGL_NO_CONTEXT)
    {
        egl_raise_exception();
        sipIsErr = 1;
    }

    if (attribs != NULL)
        sipFree(attribs);
%End

void eglDestroyContext(EGLDisplay dpy, EGLContext ctx);
%MethodCode
    if (!eglDestroyContext(dpy, ctx))
    {
        egl_raise_exception();
        sipIsErr = 1;
    }
%End

void eglMakeCurrent(EGLDisplay dpy, EGLSurface draw, EGLSurface read,
        EGLContext ctx);
%MethodCode
    if (!eglMakeCurrent(dpy, draw, read, ctx))
    {
        egl_raise_exception();
        sipIsErr = 1;
    }
%End

SIP_PYOBJECT eglGetCurrentContext(void) /DocType="EGLContext"/;
%MethodCode
    EGLDisplay display;

    if ((display = eglGetCurrentContext()) == EGL_NO_CONTEXT)
    {
        sipRes = Py_None;
        Py_INCREF(sipRes);
    }
    else
    {
        sipRes = SIPCapsule_FromVoidPtr(display, "EGLContext");
    }
%End

SIP_PYOBJECT eglGetCurrentSurface(EGLint readdraw) /DocType="EGLSurface"/;
%MethodCode
    EGLDisplay display;

    if ((display = eglGetCurrentSurface(readdraw)) == EGL_NO_SURFACE)
    {
        sipRes = Py_None;
        Py_INCREF(sipRes);
    }
    else
    {
        sipRes = SIPCapsule_FromVoidPtr(display, "EGLSurface");
    }
%End

SIP_PYOBJECT eglGetCurrentDisplay(void) /DocType="EGLDisplay"/;
%MethodCode
    EGLDisplay display;

    if ((display = eglGetCurrentDisplay()) == EGL_NO_DISPLAY)
    {
        sipRes = Py_None;
        Py_INCREF(sipRes);
    }
    else
    {
        sipRes = SIPCapsule_FromVoidPtr(display, "EGLDisplay");
    }
%End

EGLint eglQueryContext(EGLDisplay dpy, EGLContext ctx, EGLint attribute);
%MethodCode
    if (!eglQueryContext(dpy, ctx, attribute, &sipRes))
    {
        egl_raise_exception();
        sipIsErr = 1;
    }
%End

void eglWaitGL(void) /ReleaseGIL/;
%MethodCode
    EGLBoolean rc;

    Py_BEGIN_ALLOW_THREADS
    rc = eglWaitGL();
    Py_END_ALLOW_THREADS

    if (!rc)
    {
        egl_raise_exception();
        sipIsErr = 1;
    }
%End

void eglWaitNative(EGLint engine) /ReleaseGIL/;
%MethodCode
    EGLBoolean rc;

    Py_BEGIN_ALLOW_THREADS
    rc = eglWaitNative(engine);
    Py_END_ALLOW_THREADS

    if (!rc)
    {
        egl_raise_exception();
        sipIsErr = 1;
    }
%End

void eglSwapBuffers(EGLDisplay dpy, EGLSurface surface);
%MethodCode
    if (!eglSwapBuffers(dpy, surface))
    {
        egl_raise_exception();
        sipIsErr = 1;
    }
%End

//EGLBoolean eglCopyBuffers(EGLDisplay dpy, EGLSurface surface,
//        EGLNativePixmapType target);


%ModuleCode
/*
 * Return an array of EGLConfig large enough to hold all available and the
 * length of the array.  Any exception will have been raised.
 */
static EGLConfig *egl_create_config_array(EGLDisplay dpy,
        EGLint *nr_configs)
{
    EGLConfig *configs;

    if (!eglGetConfigs(dpy, NULL, 0, nr_configs))
    {
        egl_raise_exception();
        configs = NULL;
    }
    else
    {
        configs = sipMalloc(*nr_configs * sizeof (EGLConfig));
    }

    return configs;
}


/*
 * An array of EGLConfig is converted to a Python list.
 */
static PyObject *egl_config_list_from_array(EGLConfig *configs,
        EGLint nr_configs)
{
    PyObject *list;

    if ((list = PyList_New(nr_configs)) != NULL)
    {
        EGLint i;

        for (i = 0; i < nr_configs; ++i)
        {
            PyObject *config = SIPCapsule_FromVoidPtr(configs[i], "EGLConfig");

            if (config == NULL)
            {
                Py_DECREF(list);
                list = 0;

                break;
            }

            PyList_SET_ITEM(list, i, config);
        }
    }

    return list;
}


/*
 * A Python list of attribute name/values is converted to an array of EGLint on
 * the heap.
 */
static EGLint *egl_create_attrib_list(PyObject *attrib_list)
{
    EGLint *attribs;
    SIP_SSIZE_T len;

    /* Add an extra one in case there is no terminating EGL_NONE. */
    len = PyList_GET_SIZE(attrib_list);

    if ((attribs = sipMalloc((len + 1) * sizeof (EGLint))) != NULL)
    {
        SIP_SSIZE_T i;

        attribs[len] = EGL_NONE;

        PyErr_Clear();

        for (i = 0; i < len; ++i)
        {
            EGLint attrib = SIPLong_AsLong(PyList_GET_ITEM(attrib_list, i));

            if (PyErr_Occurred())
            {
                sipFree(attribs);
                attribs = NULL;
                break;
            }

            attribs[i] = attrib;
        }
    }

    return attribs;
}
%End
