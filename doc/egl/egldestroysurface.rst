:func:`~pogles.egl.eglDestroySurface`
=====================================

.. function:: pogles.egl.eglDestroySurface(display, surface)

    Destroy an EGL surface.

    :param display: is the EGL display.
    :type display: :class:`~pogles.egl.EGLDisplay`
    :param surface: is the EGL surface to be destroyed.
    :type surface: :class:`~pogles.egl.EGLSurface`
    :raises: :exc:`~pogles.egl.EGLException`


Description
-----------

If the EGL surface *surface* is not current to any thread,
:func:`~pogles.egl.eglDestroySurface` destroys it immediately.  Otherwise,
*surface* is destroyed when it is no longer current in any thread.
Furthermore, resources associated with a pbuffer surface are not released until
all color buffers of that pbuffer bound to a texture object have been released.
