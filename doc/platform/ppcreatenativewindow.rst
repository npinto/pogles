:func:`~pogles.egl.ppCreateNativeWindow`
========================================

.. function:: pogles.platform.ppCreateNativeWindow() -> native window

    Platform: Raspberry Pi

    :return:
        The :class:`~pogles.egl.EGLNativeWindowType` native window.


.. function:: pogles.platform.ppCreateNativeWindow(title="pogles-x11", width=320, height=240) -> native window

    Platform: X11

    :param title:
        is the text used as the window's title.
    :param width:
        is the width of the window.
    :param height:
        is the height of the window.
    :return:
        The :class:`~pogles.egl.EGLNativeWindowType` native window.


Description
-----------

:func:`~pogles.platform.ppCreateNativeWindow` is implemented for every platform
to create an :class:`~pogles.egl.EGLNativeWindowType` instance that can be
passed to the :func:`~pogles.egl.eglCreateWindowSurface` function.  It may
always be called with no arguments.  A particular platform implementation may
accept additional optional arguments that allow some platform specific
configuration to be specified.
