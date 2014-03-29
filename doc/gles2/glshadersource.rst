:func:`~pogles.gles2.glShaderSource`
====================================

.. function:: pogles.gles2.glShaderSource(shader, source)

    Replace the source code in a shader object.

    :param shader: is the shader object whose source code is to be replaced.
    :type shader: int
    :param source: is the list of strings containing the source code to be
            loaded into the shader.
    :type string: list of str
    :raises: :exc:`~pogles.gles2.GLException`


Description
-----------

For implementations that support a shader compiler,
:func:`~pogles.gles2.glShaderSource` sets the source code in *shader* to the
source code in the list of strings specified by *source*.  Any source code
previously stored in the shader object is completely replaced.  The source code
strings are not scanned or parsed at this time; they are simply copied into the
specified shader object.


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

OpenGL copies the shader source code strings when
:func:`~pogles.gles2.glShaderSource` is called, so an application does not need
to keep a reference to *source*.
