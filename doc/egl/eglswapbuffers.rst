:func:`~pogles.egl.eglSwapBuffers`
==================================

.. function:: pogles.egl.eglSwapBuffers(display, surface)

    Post EGL surface color buffer to a native window.

    :param display: is the EGL display.
    :type display: :class:`~pogles.egl.EGLDisplay`
    :param surface: is the EGL drawing surface whose buffers are to be swapped.
    :type surface: :class:`~pogles.egl.EGLSurface`
    :raises: :exc:`~pogles.egl.EGLException`


Description
-----------

If *surface* is a window surface, :func:`~pogles.egl.eglSwapBuffers` posts its
color buffer to the associated native window.

The contents of ancillary buffers are always undefined after calling
:func:`~pogles.egl.eglSwapBuffers`.  The contents of the color buffer are left
unchanged if the value of the :data:`~pogles.egl.EGL_SWAP_BEHAVIOR` attribute
of *surface* is :data:`~pogles.egl.EGL_BUFFER_PRESERVED`, and are undefined if
the value is :data:`~pogles.egl.EGL_BUFFER_DESTROYED`.  The value of
:data:`~pogles.egl.EGL_SWAP_BEHAVIOR` can be set for some surfaces using
:func:`~pogles.egl.eglSurfaceAttrib`.

:func:`~pogles.egl.eglSwapBuffers` performs an implicit flush operation on the
context (:func:`~pogles.gles2.glFlush` for an OpenGL ES or OpenGL context)
bound to *surface* before swapping.  Subsequent client API commands may be
issued on that context immediately after calling
:func:`~pogles.egl.eglSwapBuffers`, but are not executed until the buffer
exchange is completed.

If *surface* is a pixel buffer or a pixmap,
:func:`~pogles.egl.eglSwapBuffers` has no effect, and no exception is raised.


Notes
-----

Attribute :data:`~pogles.egl.EGL_SWAP_BEHAVIOR` is supported only if the EGL
version is 1.2 or greater.  In earlier versions, behavior is as though the
attribute exists, and always has the value
:data:`~pogles.egl.EGL_BUFFER_DESTROYED`.

The EGL 1.4 specification was updated to acknowledge that ancillary buffers are
not necessarily preserved after a swap, and that the
:data:`~pogles.egl.EGL_SWAP_BEHAVIOR` attribute applies only to the color
buffer.  This change in the specification acknowledged the behavior of many
shipping implementations, and is not intended to result in behavior changes in
any existing implementation.  Applications which require preservation of
ancillary buffers across a swap should be aware that not all implementations
can preserve them, and that EGL 1.4 has no way to query whether or not they are
preserved.
