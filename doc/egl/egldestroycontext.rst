:func:`~pogles.egl.eglDestroyContext`
=====================================

.. function:: pogles.egl.eglDestroyContext(display, context)

    Destroy an EGL rendering context.

    :param display: is the EGL display.
    :type display: :class:`~pogles.egl.EGLDisplay`
    :param context: is the EGL rendering context to be destroyed.
    :type context: :class:`~pogles.egl.EGLContext`
    :raises: :exc:`~pogles.egl.EGLException`


Description
-----------

If the EGL rendering context *context* is not current to any thread,
:func:`~pogles.egl.eglDestroyContext` destroys it immediately.  Otherwise,
*context* is destroyed when it is no longer not current in any thread.
