/*
 * This is the SIP interface definition for the gles2 module of pogles.
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


%Module(name=pogles.gles2, language="C", use_argument_names=True)

%Platforms {PP_RPI PP_X11}

%Feature Py_v3

%If (Py_v3)
%DefaultEncoding "ASCII"
%End

%Copying
Copyright (c) 2012 Riverbank Computing Limited

This file is part of pogles.

This copy of pogles is licensed for use under the terms of the BSD license.

pogles is supplied WITHOUT ANY WARRANTY; without even the implied warranty
of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
%End


%Include gl2_h.sip


%ModuleHeaderCode
/* Forward declarations. */
extern int gles2_pending_error;

int gles2_error_check(void);
void gles2_error(const char *message);
%End

%ModuleCode
int gles2_pending_error = -1;
static PyObject *gles2_exception;

int gles2_error_check(void)
{
    static struct error_map {
        GLenum code;
        const char *name;
    } map[] = {
        {GL_INVALID_ENUM, "GL_INVALID_ENUM"},
        {GL_INVALID_VALUE, "GL_INVALID_VALUE"},
        {GL_INVALID_OPERATION, "GL_INVALID_OPERATION"},
        {GL_OUT_OF_MEMORY, "GL_OUT_OF_MEMORY"},
        {-1, NULL}
    };

    int i;

    if ((gles2_pending_error = glGetError()) == GL_NO_ERROR)
        return 0;

    for (i = 0; map[i].name != NULL; ++i)
        if (map[i].code == gles2_pending_error)
        {
            PyErr_Format(gles2_exception, "OpenGL ES error: %s", map[i].name);
            return 1;
        }

    PyErr_Format(gles2_exception,
            "OpenGL ES error: unknown error code %d", gles2_pending_error);

    return 1;
}


void gles2_error(const char *message)
{
    PyErr_Format(gles2_exception, "OpenGL ES error: %s", message);
}
%End


%PostInitialisationCode
    gles2_exception = PyErr_NewException("gles2.GLException", NULL, NULL);

    if (gles2_exception == NULL)
        Py_FatalError("Failed to create pogles.gles2.GLException object");

    if (PyDict_SetItemString(sipModuleDict, "GLException", gles2_exception) < 0)
        Py_FatalError("Failed to set pogles.gles2.GLException object");
%End
