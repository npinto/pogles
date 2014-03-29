/*
 * This is the SIP interface definition for the egl module of pogles.
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


%Module(name=pogles.egl, language="C", use_argument_names=True)

%Platforms {PP_RPI PP_X11}

%Copying
Copyright (c) 2012 Riverbank Computing Limited

This file is part of pogles.

This copy of pogles is licensed for use under the terms of the BSD license.
  
pogles is supplied WITHOUT ANY WARRANTY; without even the implied warranty
of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
%End


%Include egl_h.sip


%ModuleHeaderCode
/* Forward declarations. */
extern int egl_pending_error;

void egl_raise_exception(void);
%End

%ModuleCode
int egl_pending_error = -1;
static PyObject *egl_exception;

void egl_raise_exception(void)
{
    static struct error_map {
        EGLint code;
        const char *name;
    } map[] = {
        {EGL_NOT_INITIALIZED, "EGL_NOT_INITIALIZED"},
        {EGL_BAD_ACCESS, "EGL_BAD_ACCESS"},
        {EGL_BAD_ALLOC, "EGL_BAD_ALLOC"},
        {EGL_BAD_ATTRIBUTE, "EGL_BAD_ATTRIBUTE"},
        {EGL_BAD_CONFIG, "EGL_BAD_CONFIG"},
        {EGL_BAD_CONTEXT, "EGL_BAD_CONTEXT"},
        {EGL_BAD_CURRENT_SURFACE, "EGL_BAD_CURRENT_SURFACE"},
        {EGL_BAD_DISPLAY, "EGL_BAD_DISPLAY"},
        {EGL_BAD_MATCH, "EGL_BAD_MATCH"},
        {EGL_BAD_NATIVE_PIXMAP, "EGL_BAD_NATIVE_PIXMAP"},
        {EGL_BAD_NATIVE_WINDOW, "EGL_BAD_NATIVE_WINDOW"},
        {EGL_BAD_PARAMETER, "EGL_BAD_PARAMETER"},
        {EGL_BAD_SURFACE, "EGL_BAD_SURFACE"},
        {EGL_CONTEXT_LOST, "EGL_CONTEXT_LOST"},
        {-1, NULL}
    };

    int i;

    egl_pending_error = eglGetError();

    for (i = 0; map[i].name != NULL; ++i)
        if (map[i].code == egl_pending_error)
        {
            PyErr_Format(egl_exception, "OpenGL ES error: %s", map[i].name);
            return;
        }

    PyErr_Format(egl_exception,
            "OpenGL ES error: unknown error code %d", egl_pending_error);
}
%End


%PostInitialisationCode
    egl_exception = PyErr_NewException("egl.EGLException", NULL, NULL);

    if (egl_exception == NULL)
        Py_FatalError("Failed to create pogles.egl.EGLException object");

    if (PyDict_SetItemString(sipModuleDict, "EGLException", egl_exception) < 0)
        Py_FatalError("Failed to set pogles.egl.EGLException object");
%End
