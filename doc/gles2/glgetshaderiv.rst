:func:`~pogles.gles2.glGetShaderiv`
===================================

.. function:: pogles.gles2.glGetShaderiv(shader, pname) -> (value, ...)

    Return a parameter from a shader object.

    :param shader: is the shader object to be queried.
    :type shader: int
    :param pname: is the object parameter.  It must be
            :data:`~pogles.gles2.GL_SHADER_TYPE`,
            :data:`~pogles.gles2.GL_DELETE_STATUS`,
            :data:`~pogles.gles2.GL_COMPILE_STATUS`,
            :data:`~pogles.gles2.GL_INFO_LOG_LENGTH` or
            :data:`~pogles.gles2.GL_SHADER_SOURCE_LENGTH`.
    :type pname: int
    :raises: :exc:`~pogles.gles2.GLException`
    :return: A tuple of the parameter's value.


Description
-----------

:func:`~pogles.gles2.glGetShaderiv` returns a tuple of the values of a
parameter for a specific shader object.  The following parameters are defined:

:data:`~pogles.gles2.GL_SHADER_TYPE`
    Returns a 1-tuple, :data:`~pogles.gles2.GL_VERTEX_SHADER` if *shader* is a
    vertex shader object, and :data:`~pogles.gles2.GL_FRAGMENT_SHADER` if
    *shader* is a fragment shader object.

:data:`~pogles.gles2.GL_DELETE_STATUS`
    Returns a 1-tuple, ``True`` if *shader* is currently flagged for deletion,
    and ``False`` otherwise.

:data:`~pogles.gles2.GL_COMPILE_STATUS`
    Returns a 1-tuple.  For implementations that support a shader compiler,
    the value is ``True`` if the last compile operation on shader was
    successful, and ``False`` otherwise.

:data:`~pogles.gles2.GL_INFO_LOG_LENGTH`
    Returns a 1-tuple.  For implementations that support a shader compiler,
    the value is the number of characters in the information log for *shader*
    including the null termination character (i.e. the size of the character
    buffer required to store the information log).  If *shader* has no
    information log, the value is 0.

:data:`~pogles.gles2.GL_SHADER_SOURCE_LENGTH`
    Returns a 1-tuple.  For implementations that support a shader compiler,
    the value is the length of the concatenation of the source that make up the
    shader source for the *shader*, including the null termination character
    (i.e. the size of the character buffer required to store the shader
    source).  If no source code exists, the value is 0.


Notes
-----

Shader compiler support is optional, and thus must be queried before use by
calling :func:`~pogles.gles2.glGetBooleanv` with argument
:data:`~pogles.gles2.GL_SHADER_COMPILER`.
:func:`~pogles.gles2.glShaderSource`, :func:`~pogles.gles2.glCompileShader`,
:func:`~pogles.gles2.glGetShaderPrecisionFormat` and
:func:`~pogles.gles2.glReleaseShaderCompiler` will each generate
:data:`~pogles.gles2.GL_INVALID_OPERATION` on implementations that do not
support a shader compiler, as will :func:`~pogles.gles2.glGetShaderiv` queries
of :data:`~pogles.gles2.GL_COMPILE_STATUS`,
:data:`~pogles.gles2.GL_INFO_LOG_LENGTH` and
:data:`~pogles.gles2.GL_SHADER_SOURCE_LENGTH`.  Such implementations instead
offer the :func:`~pogles.gles2.glShaderBinary` alternative for supplying a
pre-compiled shader binary.
