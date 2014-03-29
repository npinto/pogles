:func:`~pogles.gles2.glLineWidth`
=================================

.. function:: pogles.gles2.glLineWidth(width)

    Specify the width of rasterized lines.

    :param width: is the width of rasterized lines.  The initial value is 1.
    :type width: float
    :raises: :exc:`~pogles.gles2.GLException`


Description
-----------

:func:`~pogles.gles2.glLineWidth` specifies the rasterized width of lines.

The actual width is determined by rounding the supplied *width* to the nearest
integer.  (If the rounding results in the value 0, it is as if the line width
were 1.)  If :math:`\lvert \Delta x \rvert \geq \lvert \Delta y \rvert`,
:math:`i` pixels are filled in each column that is rasterized, where :math:`i`
is the rounded value of *width*.  Otherwise, :math:`i` pixels are filled in
each row that is rasterized.

There is a range of supported line widths. Only width 1 is guaranteed to be
supported; others depend on the implementation.  To query the range of
supported widths, call :func:`~pogles.gles2.glGetFloatv` with argument
:data:`~pogles.gles2.GL_ALIASED_LINE_WIDTH_RANGE`.


Notes
-----

The line width specified by :func:`~pogles.gles2.glLineWidth` is always
returned when :data:`~pogles.gles2.GL_LINE_WIDTH` is queried.  Clamping and
rounding have no effect on the specified value.

Line width may be clamped to an implementation-dependent maximum.  Call
:func:`~pogles.gles2.glGetFloatv` with
:data:`~pogles.gles2.GL_ALIASED_LINE_WIDTH_RANGE` to determine the maximum
width.
