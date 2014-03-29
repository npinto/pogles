:func:`~pogles.gles2.glClearColor`
==================================

.. function:: pogles.gles2.glClearColor(red, green, blue, alpha)

    Specify clear values for the color buffers.

    :param red: is the red value used when the color buffers are cleared.  The
            initial value is 0.
    :type red: float
    :param green: is the green value used when the color buffers are cleared.
            The initial value is 0.
    :type green: float
    :param blue: is the blue value used when the color buffers are cleared.
            The initial value is 0.
    :type blue: float
    :param alpha: is the alpha value used when the color buffers are cleared.
            The initial value is 0.
    :type alpha: float


Description
-----------

:func:`~pogles.gles2.glClearColor` specifies the red, green, blue and alpha
values used by :func:`~pogles.gles2.glClear` to clear the color buffers.
Values specified by :func:`~pogles.gles2.glClearColor` are clamped to the range
:math:`[0,1]`.
