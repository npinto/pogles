:func:`~pogles.gles2.glReleaseShaderCompiler`
=============================================

.. function:: pogles.gles2.glReleaseShaderCompiler()

    Release resources allocated by the shader compiler.

    :raises: :exc:`~pogles.gles2.GLException`


Description
-----------

For implementations that support a shader compiler,
:func:`~pogles.gles2.glReleaseShaderCompiler` frees resources allocated by the
shader compiler.  This is a hint from the application that additional shader
compilations are unlikely to occur, at least for some period of time, and that
the resources consumed by the shader compiler may be released and put to better
use elsewhere.

However, if a call to :func:`~pogles.gles2.glCompileShader` is made after a
call to :func:`~pogles.gles2.glReleaseShaderCompiler`, the shader compiler must
be restored to service the compilation request as if
:func:`~pogles.gles2.glReleaseShaderCompiler` had never been called.


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
