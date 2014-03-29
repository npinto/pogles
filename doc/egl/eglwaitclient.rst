:func:`~pogles.egl.eglWaitClient`
=================================

.. function:: pogles.egl.eglWaitClient()

    Complete client API execution prior to subsequent native rendering calls.

    :raises: :exc:`~pogles.egl.EGLException`


Description
-----------

All rendering calls for the currently bound context, for the current rendering
API, made prior to :func:`~pogles.egl.eglWaitClient` are guaranteed to be
executed before native rendering calls made after
:func:`~pogles.egl.eglWaitClient`.  The same result can be achieved using
client API-specific commands such as :func:`~pogles.gles2.glFinish`.

:func:`~pogles.egl.eglWaitClient` is ignored if there is no current EGL
rendering context for the current rendering API.


Notes
-----

:func:`~pogles.egl.eglWaitClient` is supported only if the EGL version is 1.2
or greater.

:func:`~pogles.egl.eglWaitClient` is a generalized version of
:func:`~pogles.egl.eglWaitGL` supporting multiple client APIs.
