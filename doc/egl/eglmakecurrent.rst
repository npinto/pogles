:func:`~pogles.egl.eglMakeCurrent`
==================================

.. function:: pogles.egl.eglMakeCurrent(display, draw, read, context)

    Attach an EGL rendering context to EGL surfaces.

    :param display: is the EGL display.
    :type display: :class:`~pogles.egl.EGLDisplay`
    :param draw: is the EGL draw surface.
    :type draw: :class:`~pogles.egl.EGLSurface`
    :param read: is the EGL read surface.
    :type read: :class:`~pogles.egl.EGLSurface`
    :param context: is the EGL rendering context to be attached to the
            surfaces.
    :type context: :class:`~pogles.egl.EGLContext`
    :raises: :exc:`~pogles.egl.EGLException`


Description
-----------

:func:`~pogles.egl.eglMakeCurrent` binds context to the current rendering
thread and to the draw and read surfaces.  *draw* is used for all GL operations
except for any pixel data read back (:func:`~pogles.gles2.glReadPixels`,
:func:`~pogles.gles2.glCopyTexImage2D` and
:func:`~pogles.gles2.glCopyTexSubImage2D`), which is taken from the frame
buffer values of *read*.

If the calling thread has already a current rendering context, that context is
flushed and marked as no longer current.

The first time that *context* is made current, the viewport and scissor
dimensions are set to the size of the *draw* surface.  The viewport and scissor
are not modified when *context* is subsequently made current.

To release the current context without assigning a new one, call
:func:`~pogles.egl.eglMakeCurrent` with *draw*, *read* and *context* set to
``None``.

Use :func:`~pogles.egl.eglGetCurrentContext`,
:func:`~pogles.egl.eglGetCurrentDisplay` and
:func:`~pogles.egl.eglGetCurrentSurface` to query the current rendering context
and associated display connection and surfaces.
