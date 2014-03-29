:func:`~pogles.gles2.glTexSubImage2D`
=====================================

.. function:: pogles.gles2.glTexSubImage2D(target, level, xoffset, yoffset, width, height, format, type, data)

    Specify a two-dimensional texture subimage.

    :param target: is the target texture of the active texture unit.  It must
            be :data:`~pogles.gles2.GL_TEXTURE_2D`,
            :data:`~pogles.gles2.GL_TEXTURE_CUBE_MAP_POSITIVE_X`,
            :data:`~pogles.gles2.GL_TEXTURE_CUBE_MAP_NEGATIVE_X`,
            :data:`~pogles.gles2.GL_TEXTURE_CUBE_MAP_POSITIVE_Y`,
            :data:`~pogles.gles2.GL_TEXTURE_CUBE_MAP_NEGATIVE_Y`,
            :data:`~pogles.gles2.GL_TEXTURE_CUBE_MAP_POSITIVE_Z` or
            :data:`~pogles.gles2.GL_TEXTURE_CUBE_MAP_NEGATIVE_Z`.
    :type target: int
    :param level: is the level-of-detail number.  Level 0 is the base image
            level.  Level :math:`n` is the :math:`n`\ th mipmap reduction
            image.
    :type level: int
    :param xoffset: is the texel offset in the x direction within the texture
            array.
    :type xoffset: int
    :param yoffset: is the texel offset in the y direction within the texture
            array.
    :type yoffset: int
    :param width: is the width of the texture subimage.
    :type width: int
    :param height: is the height of the texture subimage.
    :type height: int
    :param format: is the format of the pixel data.  It must be
            :data:`~pogles.gles2.GL_ALPHA`, :data:`~pogles.gles2.GL_RGB`,
            :data:`~pogles.gles2.GL_RGBA`, :data:`~pogles.gles2.GL_LUMINANCE`
            or :data:`~pogles.gles2.GL_LUMINANCE_ALPHA`.
    :type format: int
    :param type: is the data type of the pixel data.  It must be
            :data:`~pogles.gles2.GL_UNSIGNED_BYTE`,
            :data:`~pogles.gles2.GL_UNSIGNED_SHORT_5_6_5`,
            :data:`~pogles.gles2.GL_UNSIGNED_SHORT_4_4_4_4` or
            :data:`~pogles.gles2.GL_UNSIGNED_SHORT_5_5_5_1`.
    :type type: int
    :param data: is the image data in memory.
    :type data: object that implements the buffer protocol
    :raises: :exc:`~pogles.gles2.GLException`


Description
-----------

Texturing maps a portion of a specified texture image onto each graphical
primitive for which texturing is active.  Texturing is active when the current
fragment shader or vertex shader makes use of built-in texture lookup
functions.

:func:`~pogles.gles2.glTexSubImage2D` redefines a contiguous subregion of an
existing two-dimensional texture image.  The texels referenced by *data*
replace the portion of the existing texture array with x indices *xoffset* and
:math:`xoffset+width-1`, inclusive, and y indices *yoffset* and
:math:`yoffset+height-1`, inclusive.  This region may not include any texels
outside the range of the texture array as it was originally specified.  It is
not an error to specify a subtexture with zero width or height, but such a
specification has no effect.


Notes
-----

Storage parameter :data:`~pogles.gles2.GL_UNPACK_ALIGNMENT`, set by
:func:`~pogles.gles2.glPixelStorei`, affects the way that data is read out of
client memory.  See :func:`~pogles.gles2.glPixelStorei` for a description.

:func:`~pogles.gles2.glTexSubImage2D` specifies a two-dimensional or cube-map
subtexture for the current texture unit, specified with
:func:`~pogles.gles2.glActiveTexture`.
