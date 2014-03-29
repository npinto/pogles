:func:`~pogles.gles2.glCopyTexImage2D`
======================================

.. function:: pogles.gles2.glCopyTexImage2D(target, level, internalformat, x, y, width, height, border)

    Copy pixels into a 2D texture image.

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
    :param internalformat: is the internal format of the texture.  It must be
            :data:`~pogles.gles2.GL_ALPHA`, :data:`~pogles.gles2.GL_LUMINANCE`,
            :data:`~pogles.gles2.GL_LUMINANCE_ALPHA`,
            :data:`~pogles.gles2.GL_RGB` or :data:`~pogles.gles2.GL_RGBA`.
    :type internalformat: int
    :param x: is the x coordinate of the lower left corner of the rectangular
            region of pixels to be copied.
    :type x: int
    :param y: is the y coordinate of the lower left corner of the rectangular
            region of pixels to be copied.
    :type y: int
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
    :raises: :exc:`~pogles.gles2.GLException`


Description
-----------

Texturing maps a portion of a specified texture image onto each graphical
primitive for which texturing is active.  Texturing is active when the current
fragment shader or vertex shader makes use of built-in texture lookup
functions.

:func:`~pogles.gles2.glCopyTexImage2D` defines a two-dimensional texture image
or cube-map texture image with pixels from the current framebuffer (rather than
from client memory, as is the case for :func:`~pogles.gles2.glTexImage2D`).

The screen-aligned pixel rectangle with lower left corner at (*x*, *y*) and
with a width of *width* and a height of *height* defines the texture array at
the mipmap level specified by *level*.  *internalformat* specifies the internal
format of the texture array.

The pixels in the rectangle are processed exactly as if
:func:`~pogles.gles2.glReadPixels` had been called with *format* set to
:data:`~pogles.gles2.GL_RGBA`, but the process stops just after conversion of
RGBA values.  Subsequent processing is identical to that described for
:func:`~pogles.gles2.glTexImage2D`, beginning with the clamping of the R, G, B
and A values to the range :math:`[0,1]` and then conversion to the texture's
internal format for storage in the texel array.

The components required for *internalformat* must be a subset of those present
in the framebuffer's format.  For example, a :data:`~pogles.gles2.GL_RGBA`
framebuffer can be used to supply components for any *internalformat*.
However, a :data:`~pogles.gles2.GL_RGB` framebuffer can only be used to supply
components for :data:`~pogles.gles2.GL_RGB` or
:data:`~pogles.gles2.GL_LUMINANCE` base internal format textures, not
:data:`~pogles.gles2.GL_ALPHA`, :data:`~pogles.gles2.GL_LUMINANCE_ALPHA` or
:data:`~pogles.gles2.GL_RGBA` textures.

Pixel ordering is such that lower *x* and *y* screen coordinates correspond to
lower **s** and **t** texture coordinates.

If any of the pixels within the specified rectangle are outside the framebuffer
associated with the current rendering context, then the values obtained for
those pixels are undefined.


Notes
-----

A GL implementation may choose to store the texture array at any internal
resolution it chooses.

An image with height or width of 0 indicates a NULL texture.

:func:`~pogles.gles2.glCopyTexImage2D` specifies a two-dimensional or cube-map
texture for the current texture unit, specified with
:func:`~pogles.gles2.glActiveTexture`.
