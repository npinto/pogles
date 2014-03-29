/*
 * This is the SIP interface definitions common to all platforms.
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


%ModuleCode
static PyObject *platform_exception;

static void platform_raise_exception(const char *func_call)
{
    PyErr_Format(platform_exception, "%s call failed", func_call);
}
%End


%PostInitialisationCode
    platform_exception = PyErr_NewException("platform.PPException", NULL, NULL);

    if (platform_exception == NULL)
        Py_FatalError("Failed to create pogles.platform.PPException object");

    if (PyDict_SetItemString(sipModuleDict, "PPException", platform_exception) < 0)
        Py_FatalError("Failed to set pogles.platform.PPException object");
%End
