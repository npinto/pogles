:func:`~pogles.egl.eglSwapInterval`
===================================

.. function:: pogles.egl.eglSwapInterval(display, interval)

    Specify the minimum number of video frame periods per buffer swap for the
    window associated with the current context.

    :param display: is the EGL display.
    :type display: :class:`~pogles.egl.EGLDisplay`
    :param interval: is the minimum number of video frames that are displayed
            before a buffer swap will occur.
    :type interval: int
    :raises: :exc:`~pogles.egl.EGLException`


Description
-----------

The interval takes effect when :func:`~pogles.egl.eglSwapBuffers` is first
called subsequent to the :func:`~pogles.egl.eglSwapInterval` call.

*interval* applies to the draw surface bound to the context that is current on
the calling thread.

If *interval* is set to a value of 0, buffer swaps are not synchronized to a
video frame, and the swap happens as soon as the render is complete.
*interval* is silently clamped to minimum and maximum implementation dependent
values before being stored; these values are defined by
:class:`~pogles.egl.EGLConfig` attributes
:data:`~pogles.egl.EGL_MIN_SWAP_INTERVAL` and
:data:`~pogles.egl.EGL_MAX_SWAP_INTERVAL` respectively.


Notes
-----

The default swap interval is 1.
