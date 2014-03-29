:func:`~pogles.gles2.glTexImage2D`
==================================

.. function:: pogles.gles2.glTexImage2D(target, level, internalformat, width, height, border, format, type, data)

    Specify a two-dimensional texture image.

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
    :param internalformat: is the internal format of the texture.  It must be
            :data:`~pogles.gles2.GL_ALPHA`, :data:`~pogles.gles2.GL_LUMINANCE`,
            :data:`~pogles.gles2.GL_LUMINANCE_ALPHA`,
            :data:`~pogles.gles2.GL_RGB` or :data:`~pogles.gles2.GL_RGBA`.
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
    :param format: is the format of the texel data.  It must match
            *internalformat*.
    :type format: int
    :param type: is the data type of the texel data.  It must be
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

To define texture images, call :func:`~pogles.gles2.glTexImage2D`.  The
arguments describe the parameters of the texture image, such as height, width,
level-of-detail number (see :func:`~pogles.gles2.glTexParameterf` etc.) and
*format*.  The last three arguments describe how the image is represented in
memory.

Data is read from *data* as a sequence of unsigned bytes or shorts, depending
on *type*.  When *type* is :data:`~pogles.gles2.GL_UNSIGNED_BYTE`, each of the
bytes is interpreted as one color component.  When type is one of
:data:`~pogles.gles2.GL_UNSIGNED_SHORT_5_6_5`,
:data:`~pogles.gles2.GL_UNSIGNED_SHORT_4_4_4_4` or
:data:`~pogles.gles2.GL_UNSIGNED_SHORT_5_5_5_1`, each unsigned short value is
interpreted as containing all the components for a single texel, with the color
components arranged according to *format*.  Color components are treated as
groups of one, two, three, or four values, again based on *format*.  Groups of
components are referred to as texels.

:math:`width \times height` texels are read from memory, starting at location
*data*.  By default, these texels are taken from adjacent memory locations,
except that after all *width* texels are read, the read pointer is advanced to
the next four-byte boundary.  The four-byte row alignment is specified by
:func:`~pogles.gles2.glPixelStorei` with argument
:data:`~pogles.gles2.GL_UNPACK_ALIGNMENT`, and it can be set to one, two, four
or eight bytes.

The first element corresponds to the lower left corner of the texture image.
Subsequent elements progress left-to-right through the remaining texels in the
lowest row of the texture image, and then in successively higher rows of the
texture image.  The final element corresponds to the upper right corner of the
texture image.

*format* determines the composition of each element in *data*.  It can assume
one of these symbolic values:

:data:`~pogles.gles2.GL_ALPHA`
    Each element is a single alpha component.  The GL converts it to floating
    point and assembles it into an RGBA element by attaching 0 for red, green
    and blue.  Each component is then clamped to the range :math:`[0,1]`.

:data:`~pogles.gles2.GL_RGB`
    Each element is an RGB triple.  The GL converts it to floating point and
    assembles it into an RGBA element by attaching 1 for alpha.  Each component
    is then clamped to the range :math:`[0,1]`.

:data:`~pogles.gles2.GL_RGBA`
    Each element contains all four components.  The GL converts it to floating
    point, then each component is clamped to the range :math:`[0,1]`.

:data:`~pogles.gles2.GL_LUMINANCE`
    Each element is a single luminance value.  The GL converts it to floating
    point, then assembles it into an RGBA element by replicating the luminance
    value three times for red, green and blue and attaching 1 for alpha.  Each
    component is then clamped to the range :math:`[0,1]`.

:data:`~pogles.gles2.GL_LUMINANCE_ALPHA`
    Each element is a luminance/alpha pair.  The GL converts it to floating
    point, then assembles it into an RGBA element by replicating the luminance
    value three times for red, green and blue.  Each component is then clamped
    to the range :math:`[0,1]`.

Color components are converted to floating point based on *type*.  When *type*
is :data:`~pogles.gles2.GL_UNSIGNED_BYTE`, each component is divided by
:math:`2^8-1`.  When *type* is :data:`~pogles.gles2.GL_UNSIGNED_SHORT_5_6_5`,
:data:`~pogles.gles2.GL_UNSIGNED_SHORT_4_4_4_4`, or
:data:`~pogles.gles2.GL_UNSIGNED_SHORT_5_5_5_1`, each component is divided by
:math:`2^N-1`, where :math:`N` is the number of bits in the bitfield.


Notes
-----

*internalformat* must match *format*.  No conversion between formats is
supported during texture image processing.  *type* may be used as a hint to
specify how much precision is desired, but a GL implementation may choose to
store the texture array at any internal resolution it chooses.

*data* may be ``None``.  In this case, texture memory is allocated to
accommodate a texture of width *width* and height *height*.  You can then
download subtextures to initialize this texture memory.  The image is undefined
if the user tries to apply an uninitialized portion of the texture image to a
primitive.

:func:`~pogles.gles2.glTexImage2D` specifies a two-dimensional or cube-map
texture for the current texture unit, specified with
:func:`~pogles.gles2.glActiveTexture`.
