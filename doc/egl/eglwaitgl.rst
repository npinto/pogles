:func:`~pogles.egl.eglWaitGL`
=============================

.. function:: pogles.egl.eglWaitGL()

    Complete GL execution prior to subsequent native rendering calls.

    :raises: :exc:`~pogles.egl.EGLException`


Description
-----------

All OpenGL ES rendering calls for the currently bound OpenGL ES context made
prior to :func:`~pogles.egl.eglWaitGL` are guaranteed to be executed before
native rendering calls made after :func:`~pogles.egl.eglWaitGL`.  The same
result can be achieved using :func:`~pogles.egl.glFinish`.

:func:`~pogles.egl.eglWaitGL` is ignored if there is no current EGL rendering
context for OpenGL ES.


Notes
-----

:func:`~pogles.egl.eglWaitClient` is supported only if the EGL version is 1.2
or greater.

:func:`~pogles.egl.eglWaitClient` is a generalized version of
:func:`~pogles.egl.eglWaitGL` supporting multiple client APIs.  For backwards
compatibility, :func:`~pogles.egl.eglWaitGL` continues to be supported and is
equivalent to the series of commands::

    api = eglQueryAPI()
    eglBindAPI(EGL_OPENGL_ES_API)
    eglWaitClient()
    eglBindAPI(api)
