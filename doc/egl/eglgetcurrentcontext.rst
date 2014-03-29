:func:`~pogles.egl.eglGetCurrentContext`
========================================

.. function:: pogles.egl.eglGetCurrentContext() -> context

    Return the current EGL rendering context.

    :return: The :class:`~pogles.egl.EGLContext` context.


Description
-----------

:func:`~pogles.egl.eglGetCurrentContext` returns the current EGL rendering
context, as specified by :func:`~pogles.egl.eglMakeCurrent`.  If no context is
current, ``None`` is returned.
