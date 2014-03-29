:func:`~pogles.egl.eglInitialize`
=================================

.. function:: pogles.egl.eglInitialize(display) -> (major, minor)

    Initialize an EGL display connection.

    :param display: is the EGL display.
    :type display: :class:`~pogles.egl.EGLDisplay`
    :return:
        A 2-tuple of the integer major EGL version number and integer minor EGL
        version number.


Description
-----------

:func:`~pogles.egl.eglInitialize` initializes the EGL display connection
obtained with :func:`~pogles.egl.eglGetDisplay`.  Initializing an already
initialized EGL display connection has no effect besides returning the version
numbers.

Use :func:`~pogles.egl.eglTerminate` to release resources associated with an
EGL display connection.
