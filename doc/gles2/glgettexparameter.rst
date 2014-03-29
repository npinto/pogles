:func:`~pogles.gles2.glGetTexParameterfv` :func:`~pogles.gles2.glGetTexParameteriv`
===================================================================================

.. function:: pogles.gles2.glGetTexParameterfv(target, pname) -> (value, ...)

    Return texture parameter values as floats.

    :param target: is the target texture of the active texture unit.  It must
            be :data:`~pogles.gles2.GL_TEXTURE_2D` or
            :data:`~pogles.gles2.GL_TEXTURE_CUBE_MAP`.
    :type target: int
    :param pname: is the name of a texture parameter.  It must be
            :data:`~pogles.gles2.GL_TEXTURE_MAG_FILTER`,
            :data:`~pogles.gles2.GL_TEXTURE_MIN_FILTER`,
            :data:`~pogles.gles2.GL_TEXTURE_WRAP_S` or
            :data:`~pogles.gles2.GL_TEXTURE_WRAP_T`.
    :type pname: int
    :raises: :exc:`~pogles.gles2.GLException`
    :return: A tuple of the parameter's values.


.. function:: pogles.gles2.glGetTexParameteriv(target, pname) -> (value, ...)

    Return texture parameter values as ints.

    :param target: is the target texture of the active texture unit.  It must
            be :data:`~pogles.gles2.GL_TEXTURE_2D` or
            :data:`~pogles.gles2.GL_TEXTURE_CUBE_MAP`.
    :type target: int
    :param pname: is the name of a texture parameter.  It must be
            :data:`~pogles.gles2.GL_TEXTURE_MAG_FILTER`,
            :data:`~pogles.gles2.GL_TEXTURE_MIN_FILTER`,
            :data:`~pogles.gles2.GL_TEXTURE_WRAP_S` or
            :data:`~pogles.gles2.GL_TEXTURE_WRAP_T`.
    :type pname: int
    :raises: :exc:`~pogles.gles2.GLException`
    :return: A tuple of the parameter's values.


Description
-----------

:func:`~pogles.gles2.glGetTexParameterfv` and
:func:`~pogles.gles2.glGetTexParameteriv` return a tuple of the values of the
texture parameter specified as *pname*.  *target* defines the target texture of
the active texture unit, either :data:`~pogles.gles2.GL_TEXTURE_2D` or
:data:`~pogles.gles2.GL_TEXTURE_CUBE_MAP`, to specify two-dimensional or
cube-mapped texturing.  *pname* accepts the same symbols as
:func:`~pogles.gles2.glTexParameterf` and
:func:`~pogles.gles2.glTexParameteri`, with the same interpretations:

:data:`~pogles.gles2.GL_TEXTURE_MAG_FILTER`
    Returns a 1-tuple, the texture magnification filter.  The initial value is
    :data:`~pogles.gles2.GL_LINEAR`.

:data:`~pogles.gles2.GL_TEXTURE_MIN_FILTER`
    Returns a 1-tuple, the texture minification filter.  The initial value is
    :data:`~pogles.gles2.GL_NEAREST_MIPMAP_LINEAR`.

:data:`~pogles.gles2.GL_TEXTURE_WRAP_S`
    Returns a 1-tuple, the wrapping function for texture coordinate ``s``.  The
    initial value is :data:`~pogles.gles2.GL_REPEAT`.

:data:`~pogles.gles2.GL_TEXTURE_WRAP_T`
    Returns a 1-tuple, the wrapping function for texture coordinate ``t``.  The
    initial value is :data:`~pogles.gles2.GL_REPEAT`.
