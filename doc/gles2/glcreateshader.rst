:func:`~pogles.gles2.glCreateShader`
====================================

.. function:: pogles.gles2.glCreateShader(shaderType) -> shader

    Create a shader object.

    :param shaderType: is the type of shader to be created.  It must be either
            :data:`~pogles.gles2.GL_VERTEX_SHADER` or
            :data:`~pogles.gles2.GL_FRAGMENT_SHADER`.
    :type shaderType: int
    :raises: :exc:`~pogles.gles2.GLException`
    :return: The shader.


Description
-----------

:func:`~pogles.gles2.glCreateShader` creates an empty shader object and returns
a non-zero value by which it can be referenced.  A shader object is used to
maintain the source code strings that define a shader.  *shaderType* indicates
the type of shader to be created.  Two types of shaders are supported.  A
shader of type :data:`~pogles.gles2.GL_VERTEX_SHADER` is a shader that is
intended to run on the programmable vertex processor.  A shader of type
:data:`~pogles.gles2.GL_FRAGMENT_SHADER` is a shader that is intended to run on
the programmable fragment processor.

When created, a shader object's :data:`~pogles.gles2.GL_SHADER_TYPE` parameter
is set to either :data:`~pogles.gles2.GL_VERTEX_SHADER` or
:data:`~pogles.gles2.GL_FRAGMENT_SHADER`, depending on the value of
*shaderType*.


Notes
-----

Like texture objects, the name space for shader objects may be shared across a set of contexts, as long as the server sides of the contexts share the same address space. If the name space is shared across contexts, any attached objects and the data associated with those attached objects are shared as well.

Applications are responsible for providing the synchronization across API calls when objects are accessed from different execution threads.
