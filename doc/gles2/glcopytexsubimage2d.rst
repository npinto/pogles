:func:`~pogles.gles2.glCopyTexSubImage2D`
=========================================

.. function:: pogles.gles2.glCopyTexSubImage2D(target, level, xoffset, yoffset, x, y, width, height)

    Copy a two-dimensional texture subimage.

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
    :param x: is the x coordinate of the lower left corner of the rectangular
            region of pixels to be copied.
    :type x: int
    :param y: is the y coordinate of the lower left corner of the rectangular
            region of pixels to be copied.
    :type y: int
    :param width: is the width of the texture subimage.
    :type width: int
    :param height: is the height of the texture subimage.
    :type height: int
    :raises: :exc:`~pogles.gles2.GLException`


Description
-----------

Texturing maps a portion of a specified texture image onto each graphical
primitive for which texturing is active.  Texturing is active when the current
fragment shader or vertex shader makes use of built-in texture lookup
functions.

:func:`~pogles.gles2.glCopyTexSubImage2D` replaces a rectangular portion of a
two-dimensional texture image or cube-map texture image with pixels from the
current framebuffer (rather than from client memory, as is the case for
:func:`~pogles.gles2.glTexSubImage2D`).

The screen-aligned pixel rectangle with lower left corner at (*x*, *y*) and
with width *width* and height *height* replaces the portion of the texture
array with x indices *xoffset* through *xoffset*\ +\ *width*\ +\ 1, inclusive,
and y indices *yoffset* through *yoffset*\ +\ *height*\ +\ 1, inclusive, at the
mipmap level specified by *level*.

The pixels in the rectangle are processed exactly as if
:func:`~pogles.gles2.glReadPixels` had been called with *format* set to
:data:`~pogles.gles2.GL_RGBA`, but the process stops just after conversion of
RGBA values.  Subsequent processing is identical to that described for
:func:`~pogles.gles2.glTexSubImage2D`, beginning with the clamping of the R, G,
B and A values to the range :math:`[0,1]` and then conversion to the texture's
internal format for storage in the texel array.

The destination rectangle in the texture array may not include any texels
outside the texture array as it was originally specified.  It is not an error
to specify a subtexture with zero width or height, but such a specification has
no effect.

If any of the pixels within the specified rectangle are outside the framebuffer
associated with the current rendering context, then the values obtained for
those pixels are undefined.

No change is made to the *internalformat*, *width* or *height* parameters of
the specified texture array or to texel values outside the specified subregion.


Notes
-----

:func:`~pogles.gles2.glCopyTexSubImage2D` specifies the two-dimensional or
cube-map texture for the current texture unit, specified with
:func:`~pogles.gles2.glActiveTexture`.
