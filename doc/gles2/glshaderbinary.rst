:func:`~pogles.gles2.glShaderBinary`
====================================

.. function:: pogles.gles2.glShaderBinary(shaders, binaryformat, binary, length)

    Load a precompiled shader binary.

    :param shaders: is the list of shaders into which the shader binary will be
            loaded.
    :type shaders: list of int
    :param binaryformat: is the shader binary format.
    :type binaryformat: int
    :param binary: is the shader binary data in client memory.
    :type binary: object that implements the buffer protocol
    :param length: is the length of the shader binary data in bytes.
    :type length: int
    :raises: :exc:`~pogles.gles2.GLException`


Description
-----------

For implementations that support them, :func:`~pogles.gles2.glShaderBinary`
loads precompiled shader binaries.  *shaders* contains a list of shader object
handles.  Each handle refers to a unique shader type (vertex shader or fragment
shader).  *binary* points to precompiled binary shader code in client memory,
and *binaryformat* denotes the format of the pre-compiled code.

The binary image is decoded according to the extension specification defining
the specified *binaryformat*.  OpenGL ES defines no specific binary formats,
but does provide a mechanism to obtain symbolic constants for such formats
provided by extensions.  The number of shader binary formats supported can be
obtained by querying the value of
:data:`~pogles.gles2.GL_NUM_SHADER_BINARY_FORMATS`.  The list of specific
binary formats supported can be obtained by querying the value of
:data:`~pogles.gles2.GL_SHADER_BINARY_FORMATS`.

Depending on the types of the shader objects in *shaders*,
:func:`~pogles.gles2.glShaderBinary` will individually load binary vertex or
fragment shaders, or load an executable binary that contains an optimized pair
of vertex and fragment shaders stored in the same binary.

If :func:`~pogles.gles2.glShaderBinary` fails, the old state of shader objects
for which the binary was being loaded will not be restored.


Notes
-----

Shader binary support is optional and thus must be queried before use by
calling :func:`~pogles.gles2.glGetIntegerv` with arguments
:data:`~pogles.gles2.GL_NUM_SHADER_BINARY_FORMATS` and
:data:`~pogles.gles2.GL_SHADER_BINARY_FORMATS`.
:func:`~pogles.gles2.glShaderBinary` generates
:data:`~pogles.gles2.GL_INVALID_OPERATION` on implementations that do not
support any shader binary formats.  Such implementations instead offer the
:func:`~pogles.gles2.glShaderSource` alternative for supplying OpenGL ES
Shading Language shader source for compilation.

If shader binary formats are supported, then an implementation may require that
an optimized pair of vertex and fragment shader binaries that were compiled
together to be specified to :func:`~pogles.gles2.glLinkProgram`.  Not
specifying an optimized pair my cause :func:`~pogles.gles2.glLinkProgram` to
fail.  Such a restriction, if it exists, will be documented in the extension
specification defining *binaryformat*.

OpenGL copies the shader binary data when :func:`~pogles.gles2.glShaderBinary`
is called, so an application does not need to keep a reference to *binary*.
