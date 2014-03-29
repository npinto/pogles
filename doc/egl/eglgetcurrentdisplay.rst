:func:`~pogles.egl.eglGetCurrentDisplay`
========================================

.. function:: pogles.egl.eglGetCurrentDisplay() -> display

    Return the display for the current EGL rendering context.

    :return: The :class:`~pogles.egl.EGLDisplay` display.


Description
-----------

:func:`~pogles.egl.eglGetCurrentDisplay` returns the current EGL display
connection for the current EGL rendering context, as specified by
:func:`~pogles.egl.eglMakeCurrent`.  If no context is current, ``None`` is
returned.
