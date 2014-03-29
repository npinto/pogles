:func:`~pogles.egl.eglBindAPI`
==============================

.. function:: pogles.egl.eglBindAPI(api)

    Set the current rendering API.

    :param api: is the rendering API.
    :type api: :data:`~pogles.egl.EGL_OPENGL_API`,
            :data:`~pogles.egl.EGL_OPENGL_ES_API`, or
            :data:`~pogles.egl.EGL_OPENVG_API`
    :raises: :exc:`~pogles.egl.EGLException`


Description
-----------

:func:`~pogles.egl.eglBindAPI` defines the current rendering API for EGL in the
thread it is called from.  The current rendering API is one of the client
rendering APIs supported by the EGL implementation, and affects the behavior of
other EGL commands including :func:`~pogles.egl.eglCreateContext`,
:func:`~pogles.egl.eglGetCurrentContext`,
:func:`~pogles.egl.eglGetCurrentDisplay`,
:func:`~pogles.egl.eglGetCurrentSurface`, :func:`~pogles.egl.eglMakeCurrent`,
:func:`~pogles.egl.eglWaitClient` and :func:`~pogles.egl.eglWaitNative`.

If *api* is :data:`~pogles.egl.EGL_OPENGL_API`, the current rendering API is
set to the OpenGL API.  If it is :data:`~pogles.egl.EGL_OPENGL_ES_API`, the
current rendering API is set to the OpenGL ES API.  If it is
:data:`~pogles.egl.EGL_OPENVG_API`, the current rendering API is set to the
OpenVG API.

If an error occurs, the current rendering API is unchanged.


Notes
-----

:func:`~pogles.egl.eglBindAPI`, :data:`~pogles.egl.EGL_OPENGL_ES_API` and
:data:`~pogles.egl.EGL_OPENVG_API` are supported only if the EGL version is 1.2
or greater.  :data:`~pogles.egl.EGL_OPENGL_API` is supported only if the EGL
version is 1.4 or greater.

The initial value of the current rendering API is
:data:`~pogles.egl.EGL_OPENGL_ES_API` unless OpenGL ES is not supported by an
implementation, in which case the initial value is :data:`~pogles.egl.EGL_NONE`
(however, :data:`~pogles.egl.EGL_NONE` is not a valid parameter to
:func:`~pogles.egl.eglBindAPI`).

The current rendering API can be queried by calling
:func:`~pogles.egl.eglQueryAPI`.
