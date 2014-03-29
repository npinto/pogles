:func:`~pogles.gles2.glViewport`
================================

.. function:: pogles.gles2.glViewport(x, y, width, height)

    Set the viewport.

    :param x: is the x coordinate of the lower left corner of the viewport
            rectangle, in pixels.  The initial value is 0.
    :type x: int
    :param y: is the y coordinate of the lower left corner of the viewport
            rectangle, in pixels.  The initial value is 0.
    :type y: int
    :param width: is the width of the viewport.
    :type width: int
    :param height: is the height of the viewport.
    :type height: int
    :raises: :exc:`~pogles.gles2.GLException`


Description
-----------

:func:`~pogles.gles2.glViewport` specifies the affine transformation of *x* and
*y* from normalized device coordinates to window coordinates.  When a GL
context is first attached to a window, *width* and *height* are set to the
dimensions of that window.

If :math:`(x_{nd},y_{nd})` are normalized device coordinates then the window
coordinates :math:`(x_w,y_w)` are computed as follows:

.. math::

    x_w = (x_{nd}+1)\left(\frac{width}{2}\right)+x

    y_w = (y_{nd}+1)\left(\frac{height}{2}\right)+y

Viewport width and height are silently clamped to a range that depends on the
implementation.  To query this range, call :func:`~pogles.gles2.glGetIntegerv`
with argument :data:`~pogles.gles2.GL_MAX_VIEWPORT_DIMS`.
