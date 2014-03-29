:func:`~pogles.egl.eglGetDisplay`
=================================

.. function:: pogles.egl.eglGetDisplay() -> display

    Return an EGL display connection.

    :return:
        The :class:`~pogles.egl.EGLDisplay` display.


Description
-----------

:func:`~pogles.egl.eglGetDisplay` obtains the default EGL display connection.

If no display connection is available, ``None`` is returned.

Use :func:`~pogles.egl.eglInitialize` to initialize the display connection.
