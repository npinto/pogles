:func:`~pogles.egl.eglTerminate`
================================

.. function:: pogles.egl.eglTerminate(display)

    Terminate an EGL display connection.

    :param display: is the EGL display.
    :type display: :class:`~pogles.egl.EGLDisplay`
    :raises: :exc:`~pogles.egl.EGLException`


Description
-----------

:func:`~pogles.egl.eglTerminate` releases resources associated with an EGL
display connection.  Termination marks all EGL resources associated with the
EGL display connection for deletion.  If contexts or surfaces associated with
display is current to any thread, they are not released until they are no
longer current as a result of :func:`~pogles.egl.eglMakeCurrent`.

Terminating an already terminated EGL display connection has no effect.  A
terminated display may be re-initialized by calling
:func:`~pogles.egl.eglInitialize` again.
