:func:`~pogles.gles2.glReadPixels`
==================================

.. function:: pogles.gles2.glReadPixels(x, y, width, height, format, type) -> pixels

    Read a block of pixels from the frame buffer.

    :param x: is the x window coordinate of the first pixel that is read from
            the frame buffer.  This location is the lower left corner of a
            rectangular block of pixels.
    :type x: int
    :param y: is the y window coordinate of the first pixel that is read from
            the frame buffer.  This location is the lower left corner of a
            rectangular block of pixels.
    :type y: int
    :param width: is the width of the pixel rectangle.  *width* and *height* of
            one correspond to a single pixel.
    :type width: int
    :param height: is the width of the pixel rectangle.  *width* and *height*
            of one correspond to a single pixel.
    :type height: int
    :param format: is the format of the pixel data.  It must be
            :data:`~pogles.gles2.GL_ALPHA`, :data:`~pogles.gles2.GL_RGB` or
            :data:`~pogles.gles2.GL_RGBA`.
    :type format: int
    :param type: is the data type of the pixel data.  It must be
            :data:`~pogles.gles2.GL_UNSIGNED_BYTE`,
            :data:`~pogles.gles2.GL_UNSIGNED_SHORT_5_6_5`,
            :data:`~pogles.gles2.GL_UNSIGNED_SHORT_4_4_4_4` or
            :data:`~pogles.gles2.GL_UNSIGNED_SHORT_5_5_5_1`.
    :type type: int
    :raises: :exc:`~pogles.gles2.GLException`
    :return: The pixels.


Description
-----------

:func:`~pogles.gles2.glReadPixels` returns pixel data from the frame buffer,
starting with the pixel whose lower left corner is at location (*x*, *y*).  The
:data:`~pogles.gles2.GL_PACK_ALIGNMENT` parameter, set with the
:func:`~pogles.gles2.glPixelStorei` command, affects the processing of the
pixel data before it is placed into client memory.

The pixels are returned as a bytes object in Python v3 and a str object in
Python v2.

:func:`~pogles.gles2.glReadPixels` returns values from each pixel with lower
left corner at (:math:`x + i, y + j`) for :math:`0 \leq i < width` and
:math:`0 \leq j < height`.  This pixel is said to be the :math:`i`\ th pixel in
the :math:`j`\ th row.  Pixels are returned in row order from the lowest to the
highest row, left to right in each row.

*format* specifies the format for the returned pixel values.

RGBA color components are read from the color buffer.  Each color component is
converted to floating point such that zero intensity maps to 0.0 and full
intensity maps to 1.0.

Unneeded data is then discarded.  For example, :data:`~pogles.gles2.GL_ALPHA`
discards the red, green and blue components, while :data:`~pogles.gles2.GL_RGB`
discards only the alpha component. The final values are clamped to the range
:math:`[0,1]`.

Finally, the components are converted to the proper format, as specified by
*type*.  When *type* is :data:`~pogles.gles2.GL_UNSIGNED_BYTE`, each component
is multiplied by :math:`2^8-1`.  When *type* is
:data:`~pogles.gles2.GL_UNSIGNED_SHORT_5_6_5`,
:data:`~pogles.gles2.GL_UNSIGNED_SHORT_4_4_4_4` or
:data:`~pogles.gles2.GL_UNSIGNED_SHORT_5_5_5_1`, each component is multiplied
by :math:`2^N - 1`, where :math:`N` is the number of bits in the bitfield.

Return values are placed in memory as follows.  If format is
:data:`~pogles.gles2.GL_ALPHA`, a single value is returned and the data for the
ith pixel in the :math:`j`\ th row is placed in location :math:`(j) width + i`.
:data:`~pogles.gles2.GL_RGB` returns three values and
:data:`~pogles.gles2.GL_RGBA` returns four values for each pixel, with all
values corresponding to a single pixel occupying contiguous space.  Storage
parameter :data:`~pogles.gles2.GL_PACK_ALIGNMENT`, set by
:func:`~pogles.gles2.glPixelStorei`, affects the way that data is written into
memory.  See :func:`~pogles.gles2.glPixelStorei` for a description.


Notes
-----

If the currently bound framebuffer is not the default framebuffer object, color
components are read from the color image attached to the
:data:`~pogles.gles2.GL_COLOR_ATTACHMENT0` attachment point.

Only two format/type parameter pairs are accepted.
:data:`~pogles.gles2.GL_RGBA`/:data:`~pogles.gles2.GL_UNSIGNED_BYTE` is always
accepted, and the other acceptable pair can be discovered by querying
:data:`~pogles.gles2.GL_IMPLEMENTATION_COLOR_READ_FORMAT` and
:data:`~pogles.gles2.GL_IMPLEMENTATION_COLOR_READ_TYPE`.

Values for pixels that lie outside the window connected to the current GL
context are undefined.
