:func:`~pogles.gles2.glCompileShader`
=====================================

.. function:: pogles.gles2.glCompileShader(shader)

    Compile a shader object.

    :param shader: is the shader object to be compiled.
    :type shader: int
    :raises: :exc:`~pogles.gles2.GLException`


Description
-----------

For implementations that support a shader compiler,
:func:`~pogles.gles2.glCompileShader` compiles the source code strings that
have been stored in the shader object specified by shader.

The compilation status will be stored as part of the shader object's state.
This value will be set to ``True`` if the shader was compiled without errors
and is ready for use, and ``False`` otherwise.  It can be queried by calling
:func:`~pogles.gles2.glGetShaderiv` with arguments shader and
:data:`~pogles.gles2.GL_COMPILE_STATUS`.

Compilation of a shader can fail for a number of reasons as specified by the
OpenGL ES Shading Language Specification.  Whether or not the compilation was
successful, information about the compilation can be obtained from the shader
object's information log by calling :func:`~pogles.gles2.glGetShaderInfoLog`.


Notes
-----

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
