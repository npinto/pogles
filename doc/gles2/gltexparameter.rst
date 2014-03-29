:func:`~pogles.gles2.glTexParameterf` :func:`~pogles.gles2.glTexParameteri`
===========================================================================

.. function:: pogles.gles2.glTexParameterf(target, pname, param)

    Set texture parameter from a float.

    :param target: is the target texture of the active texture unit.  It must
            be :data:`~pogles.gles2.GL_TEXTURE_2D` or
            :data:`~pogles.gles2.GL_TEXTURE_CUBE_MAP`.
    :type target: int
    :param pname: is the single-valued texture parameter.  It must be
            :data:`~pogles.gles2.GL_TEXTURE_MIN_FILTER`,
            :data:`~pogles.gles2.GL_TEXTURE_MAG_FILTER`,
            :data:`~pogles.gles2.GL_TEXTURE_WRAP_S` or
            :data:`~pogles.gles2.GL_TEXTURE_WRAP_T`.
    :type pname: int
    :param param: is is the value of *pname*.
    :type param: float
    :raises: :exc:`~pogles.gles2.GLException`


.. function:: pogles.gles2.glTexParameteri(target, pname, param)

    Set texture parameter from an int.

    :param target: is the target texture of the active texture unit.  It must
            be :data:`~pogles.gles2.GL_TEXTURE_2D` or
            :data:`~pogles.gles2.GL_TEXTURE_CUBE_MAP`.
    :type target: int
    :param pname: is the single-valued texture parameter.  It must be
            :data:`~pogles.gles2.GL_TEXTURE_MIN_FILTER`,
            :data:`~pogles.gles2.GL_TEXTURE_MAG_FILTER`,
            :data:`~pogles.gles2.GL_TEXTURE_WRAP_S` or
            :data:`~pogles.gles2.GL_TEXTURE_WRAP_T`.
    :type pname: int
    :param param: is is the value of *pname*.
    :type param: int
    :raises: :exc:`~pogles.gles2.GLException`


Description
-----------

Texture mapping is a technique that applies an image onto an object's surface
as if the image were a decal or cellophane shrink-wrap.  The image is created
in texture space, with an :math:`(s,t)` coordinate system.  A texture is a
two-dimensional or cube-mapped image and a set of parameters that determine how
samples are derived from the image.

:func:`~pogles.gles2.glTexParameterf` and :func:`~pogles.gles2.glTexParameteri`
assign the value *param* to the texture parameter specified as *pname*.
*target* defines the target texture of the active texture unit, either
:data:`~pogles.gles2.GL_TEXTURE_2D` or
:data:`~pogles.gles2.GL_TEXTURE_CUBE_MAP`.  The following symbols are accepted
in *pname*:

:data:`~pogles.gles2.GL_TEXTURE_MIN_FILTER`
    The texture minifying function is used whenever the pixel being textured
    maps to an area greater than one texture element.  There are six defined
    minifying functions.  Two of them use the nearest one or nearest four
    texture elements to compute the texture value.  The other four use mipmaps.

    A mipmap is an ordered set of arrays representing the same image at
    progressively lower resolutions.  If the texture has dimensions
    :math:`w \times h`, there are :math:`floor(log_2(max(w,h))+1` mipmap
    levels.  The first mipmap level is the original texture, with dimensions
    :math:`w \times h`.  Each subsequent mipmap level has dimensions
    :math:`max\left(1,floor\left(\frac{w}{2^i}\right)\right) \times  max\left(1, floor\left(\frac{h}{2^i}\right)\right)`,
    where :math:`i` is the mipmap level, until the final mipmap is reached,
    which has dimension :math:`1 \times 1`.

    To define the mipmap levels, call :func:`~pogles.gles2.glTexImage2D`,
    :func:`~pogles.gles2.glCompressedTexImage2D` or
    :func:`~pogles.gles2.glCopyTexImage2D` with the *level* argument indicating
    the order of the mipmaps.  Level 0 is the original texture; level
    :math:`floor(log_2(max(w,h)))` is the final :math:`1 \times 1` mipmap.

    *param* supplies a function for minifying the texture as one of the
    following:

    :data:`~pogles.gles2.GL_NEAREST`
        Returns the value of the texture element that is nearest (in Manhattan
        distance) to the center of the pixel being textured.

    :data:`~pogles.gles2.GL_LINEAR`
        Returns the weighted average of the four texture elements that are
        closest to the center of the pixel being textured.

    :data:`~pogles.gles2.GL_NEAREST_MIPMAP_NEAREST`
        Chooses the mipmap that most closely matches the size of the pixel
        being textured and uses the :data:`~pogles.gles2.GL_NEAREST` criterion
        (the texture element nearest to the center of the pixel) to produce a
        texture value.

    :data:`~pogles.gles2.GL_LINEAR_MIPMAP_NEAREST`
        Chooses the mipmap that most closely matches the size of the pixel
        being textured and uses the :data:`~pogles.gles2.GL_LINEAR` criterion
        (a weighted average of the four texture elements that are closest to
        the center of the pixel) to produce a texture value.

    :data:`~pogles.gles2.GL_NEAREST_MIPMAP_LINEAR`
        Chooses the two mipmaps that most closely match the size of the pixel
        being textured and uses the :data:`~pogles.gles2.GL_NEAREST` criterion
        (the texture element nearest to the center of the pixel) to produce a
        texture value from each mipmap.  The final texture value is a weighted
        average of those two values.

    :data:`~pogles.gles2.GL_LINEAR_MIPMAP_LINEAR`
        Chooses the two mipmaps that most closely match the size of the pixel
        being textured and uses the :data:`~pogles.gles2.GL_LINEAR` criterion
        (a weighted average of the four texture elements that are closest to
        the center of the pixel) to produce a texture value from each mipmap.
        The final texture value is a weighted average of those two values.

    As more texture elements are sampled in the minification process, fewer
    aliasing artifacts will be apparent.  While the
    :data:`~pogles.gles2.GL_NEAREST` and :data:`~pogles.gles2.GL_LINEAR`
    minification functions can be faster than the other four, they sample only
    one or four texture elements to determine the texture value of the pixel
    being rendered and can produce moire patterns or ragged transitions.  The
    initial value of :data:`~pogles.gles2.GL_TEXTURE_MIN_FILTER` is
    :data:`~pogles.gles2.GL_NEAREST_MIPMAP_LINEAR`.

:data:`~pogles.gles2.GL_TEXTURE_MAG_FILTER`
    The texture magnification function is used when the pixel being textured
    maps to an area less than or equal to one texture element.  It sets the
    texture magnification function to either :data:`~pogles.gles2.GL_NEAREST`
    or :data:`~pogles.gles2.GL_LINEAR` (see below).
    :data:`~pogles.gles2.GL_NEAREST` is generally faster than
    :data:`~pogles.gles2.GL_LINEAR`, but it can produce textured images with
    sharper edges because the transition between texture elements is not as
    smooth.  The initial value of :data:`~pogles.gles2.GL_TEXTURE_MAG_FILTER`
    is :data:`~pogles.gles2.GL_LINEAR`.

    :data:`~pogles.gles2.GL_NEAREST`
        Returns the value of the texture element that is nearest (in Manhattan
        distance) to the center of the pixel being textured.

    :data:`~pogles.gles2.GL_LINEAR`
        Returns the weighted average of the four texture elements that are
        closest to the center of the pixel being textured.

:data:`~pogles.gles2.GL_TEXTURE_WRAP_S`
    Sets the wrap parameter for texture coordinate :math:`s` to either
    :data:`~pogles.gles2.GL_CLAMP_TO_EDGE`,
    :data:`~pogles.gles2.GL_MIRRORED_REPEAT` or
    :data:`~pogles.gles2.GL_REPEAT`.  :data:`~pogles.gles2.GL_CLAMP_TO_EDGE`
    causes :math:`s` coordinates to be clamped to the range
    :math:`\left[\frac{1}{2N},1-\frac{1}{2N}\right]`, where :math:`N` is the
    size of the texture in the direction of clamping.
    :data:`~pogles.gles2.GL_REPEAT` causes the integer part of the :math:`s`
    coordinate to be ignored; the GL uses only the fractional part, thereby
    creating a repeating pattern.  :data:`~pogles.gles2.GL_MIRRORED_REPEAT`
    causes the :math:`s` coordinate to be set to the fractional part of the
    texture coordinate if the integer part of :math:`s` is even; if the integer
    part of :math:`s` is odd, then the :math:`s` texture coordinate is set to
    :math:`1-frac(s)`, where :math:`frac(s)` represents the fractional part of
    :math:`s`.  Initially, :data:`~pogles.gles2.GL_TEXTURE_WRAP_S` is set to
    :data:`~pogles.gles2.GL_REPEAT`.

:data:`~pogles.gles2.GL_TEXTURE_WRAP_T`
    Sets the wrap parameter for texture coordinate :math:`t` to either
    :data:`~pogles.gles2.GL_CLAMP_TO_EDGE`,
    :data:`~pogles.gles2.GL_MIRRORED_REPEAT` or
    :data:`~pogles.gles2.GL_REPEAT`.  See the discussion under
    :data:`~pogles.gles2.GL_TEXTURE_WRAP_S`.  Initially,
    :data:`~pogles.gles2.GL_TEXTURE_WRAP_T` is set to
    :data:`~pogles.gles2.GL_REPEAT`.


Notes
-----

Suppose that a texture is accessed from a fragment shader or vertex shader and
has set :data:`~pogles.gles2.GL_TEXTURE_MIN_FILTER` to one of the functions
that requires mipmaps.  If either the dimensions of the texture images
currently defined (with previous calls to :func:`~pogles.gles2.glTexImage2D`,
:func:`~pogles.gles2.glCompressedTexImage2D` or
:func:`~pogles.gles2.glCopyTexImage2D`) do not follow the proper sequence for
mipmaps (described above), or there are fewer texture images defined than are
needed, or the set of texture images were defined with different formats or
types, then the texture image unit will return :math:`(R,G,B,A) = (0,0,0,1)`.

Similarly, if the width or height of a texture image are not powers of two and
either the :data:`~pogles.gles2.GL_TEXTURE_MIN_FILTER` is set to one of the
functions that requires mipmaps or the :data:`~pogles.gles2.GL_TEXTURE_WRAP_S`
or :data:`~pogles.gles2.GL_TEXTURE_WRAP_T` is not set to
:data:`~pogles.gles2.GL_CLAMP_TO_EDGE`, then the texture image unit will return
:math:`(R,G,B,A) = (0,0,0,1)`.

:func:`~pogles.gles2.glTexParameterf` and :func:`~pogles.gles2.glTexParameteri`
specify the texture parameters for the texture bound to the active texture
unit, specified by calling :func:`~pogles.gles2.glActiveTexture`.
