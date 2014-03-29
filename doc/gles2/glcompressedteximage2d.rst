:func:`~pogles.gles2.glCompressedTexImage2D`
============================================

.. function:: pogles.gles2.glCompressedTexImage2D(target, level, internalformat, width, height, border, imageSize, data)

    Specify a two-dimensional texture image in a compressed format.

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
    :param internalformat: is the format of the compressed image data stored at
            address *data*.
    :type internalformat: int
    :param width: is the width of the texture image.  All implementations
            support 2D texture images that are at least 64 texels wide and
            cube-mapped texture images that are at least 16 texels wide.
    :type width: int
    :param height: is the height of the texture image.  All implementations
            support 2D texture images that are at least 64 texels high and
            cube-mapped texture images that are at least 16 texels high.
    :type height: int
    :param border: is the width of the border.  It must be 0.
    :type border: int
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

:func:`~pogles.gles2.glCompressedTexImage2D` defines a two-dimensional texture
image or cube-map texture image using compressed image data from client memory.
The texture image is decoded according to the extension specification defining
the specified *internalformat*.  OpenGL ES defines no specific compressed
texture formats, but does provide a mechanism to obtain symbolic constants for
such formats provided by extensions.  The number of compressed texture formats
supported can be obtained by querying the value of
:data:`~pogles.gles2.GL_NUM_COMPRESSED_TEXTURE_FORMATS`.  The list of specific
compressed texture formats supported can be obtained by querying the value of
:data:`~pogles.gles2.GL_COMPRESSED_TEXTURE_FORMATS`.


Notes
-----

A GL implementation may choose to store the texture array at any internal
resolution it chooses.

:func:`~pogles.gles2.glCompressedTexImage2D` specifies a two-dimensional or
cube-map texture for the current texture unit, specified with
:func:`~pogles.gles2.glActiveTexture`.
