:func:`~pogles.gles2.glCompressedTexSubImage2D`
===============================================

.. function:: pogles.gles2.glCompressedTexSubImage2D(target, level, xoffset, yoffset, width, height, format, imageSize, data)

    Specify a two-dimensional texture subimage in a compressed format.

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
            level.  Level **n** is the **n**\ th mipmap reduction image.
    :type level: int
    :param xoffset: is a texel offset in the x direction within the texture
            array.
    :type xoffset: int
    :param yoffset: is a texel offset in the y direction within the texture
            array.
    :type yoffset: int
    :param width: is the width of the texture subimage.
    :type width: int
    :param height: is the height of the texture subimage.
    :type height: int
    :param format: is the format of the compressed image data stored at address
            *data*.
    :type format: int
    :param imageSize: is the number of unsigned bytes of image data starting at
            the address specified by *data*.
    :type imageSize: int
    :param data: is a pointer to the compressed image data in memory.
    :type data: object that implements the buffer protocol
    :raises: :exc:`~pogles.gles2.GLException`


Description
-----------

Texturing maps a portion of a specified texture image onto each graphical
primitive for which texturing is active.  Texturing is active when the current
fragment shader or vertex shader makes use of built-in texture lookup
functions.

:func:`~pogles.gles2.glCompressedTexSubImage2D` redefines a contiguous
subregion of an existing two-dimensional texture image.  The texels referenced
by *data* replace the portion of the existing texture array with x indices
*xoffset* and *xoffset*\ +\ *width*\ +\ 1, and the y indices *yoffset* and
*yoffset*\ +\ *height*\ +\ 1, inclusive.  This region may not include any
texels outside the range of the texture array as it was originally specified.
It is not an error to specify a subtexture with width of 0, but such a
specification has no effect.

*format* must be the same extension-specified compressed-texture format
previously specified by :func:`~pogles.gles2.glCompressedTexImage2D`.


Notes
-----

:func:`~pogles.gles2.glCompressedTexSubImage2D` specifies a two-dimensional or
cube-map texture for the current texture unit, specified with
:func:`~pogles.gles2.glActiveTexture`.
