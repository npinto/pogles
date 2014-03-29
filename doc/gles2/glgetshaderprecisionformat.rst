:func:`~pogles.gles2.glGetShaderPrecisionFormat`
================================================

.. function:: pogles.gles2.glGetShaderPrecisionFormat(shadertype, precisiontype) -> ((min, max), precision)

    Return the range and precision for different shader numeric formats.

    :param shadertype: is the type of shader to query.  It must be
            :data:`~pogles.gles2.GL_VERTEX_SHADER` or
            :data:`~pogles.gles2.GL_FRAGMENT_SHADER`.
    :type shadertype: int
    :param precisiontype: is the numeric format to query, corresponding to a
            shader precision qualifier and variable type.  It must be
            :data:`~pogles.gles2.GL_LOW_FLOAT`,
            :data:`~pogles.gles2.GL_MEDIUM_FLOAT`,
            :data:`~pogles.gles2.GL_HIGH_FLOAT`,
            :data:`~pogles.gles2.GL_LOW_INT`,
            :data:`~pogles.gles2.GL_MEDIUM_INT` or
            :data:`~pogles.gles2.GL_HIGH_INT`.
    :type precisiontype: int
    :raises: :exc:`~pogles.gles2.GLException`
    :return: A 2-tuple of the range and precision, where range is a 2-tuple of
            the :math:`\log_2` of the minimum and maximum representable
            magnitudes of the format.


Description
-----------

:func:`~pogles.gles2.glGetShaderPrecisionFormat` returns range and precision
limits for floating-point and integer shader variable formats with low, medium
and high precision qualifiers.  When :math:`minRep` and :math:`maxRep` are the
minimum and maximum representable values of the format,
:math:`floor(log_2(\lvert minRep \rvert))` and
:math:`floor(log_2(\lvert maxRep \rvert))` are returned in range as the first
and second elements, respectively.

If the smallest representable value greater than 1 is :math:`1 + \in` then
:math:`floor(log_2(\in))` is returned as the precision.  An integer format will
have an :math:`\in` of 1, and thus will return 0.  Floating-point formats will
return values greater than 0.


Notes
-----

The minimum range and precision required for different formats is described in
the **OpenGL ES Shading Language Specification**.

If a high precision floating-point format is not supported for fragment
shaders, calling :func:`~pogles.gles2.glGetShaderPrecisionFormat` with
arguments :data:`~pogles.gles2.GL_FRAGMENT_SHADER` and
:data:`~pogles.gles2.GL_HIGH_FLOAT` will return 0 for both range and precision.
Support for a high precision floating-point format is mandatory for vertex
shaders.

Shader compiler support is optional, and thus must be queried before use by
calling :func:`~pogles.gles2.glGetBooleanv` with argument
:data:`~pogles.gles2.GL_SHADER_COMPILER`.
:func:`~pogles.gles2.glShaderSource`, :func:`~pogles.gles2.glCompileShader`,
:func:`~pogles.gles2.glGetShaderPrecisionFormat` and
:func:`~pogles.gles2.glReleaseShaderCompiler` will each generate
:data:`~pogles.gles2.GL_INVALID_OPERATION` on implementations that do not
support a shader compiler.  Such implementations instead offer the
:func:`~pogles.gles2.glShaderBinary` alternative for supplying a pre-compiled
shader binary.
