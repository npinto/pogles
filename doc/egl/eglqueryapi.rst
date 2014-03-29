:func:`~pogles.egl.eglQueryAPI`
===============================

.. function:: pogles.egl.eglQueryAPI() -> api

    Query the current rendering API.

    :raises: :exc:`~pogles.egl.EGLException`
    :return: The API.


Description
-----------

:func:`~pogles.egl.eglQueryAPI` returns the value of the current rendering API
for EGL in the thread it is called from.  The current rendering API is set by
:func:`~pogles.egl.eglBindAPI` and affects the behavior of other EGL commands.

The value returned will be one of the valid *api* parameters to
:func:`~pogles.egl.eglBindAPI` or :data:`~pogles.egl.EGL_NONE`.


Notes
-----

:func:`~pogles.egl.eglQueryAPI` is supported only if the EGL version is 1.2 or
greater.

The initial value of the current rendering API is
:data:`~pogles.egl.EGL_OPENGL_ES_API` unless OpenGL ES is not supported by an
implementation, in which case the initial value is
:data:`~pogles.egl.EGL_NONE` (however :data:`~pogles.egl.EGL_NONE` is not a
valid *api* parameter to :func:`~pogles.egl.eglQueryAPI`).

The current rendering API can be changed by calling
:func:`~pogles.egl.eglBindAPI`.
