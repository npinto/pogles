:func:`~pogles.gles2.glGetAttachedShaders`
==========================================

.. function:: pogles.gles2.glGetAttachedShaders(program) -> shaders

    Return the shader objects attached to a program object.

    :param program: is the program object to be queried.
    :type program: int
    :raises: :exc:`~pogles.gles2.GLException`
    :return: The list of names of attached shader objects.


Description
-----------

:func:`~pogles.gles2.glGetAttachedShaders` returns a list of the names of the
shader objects attached to *program*.

The actual number of attached shaders can be obtained by calling
:func:`~pogles.gles2.glGetProgramiv` with the value
:data:`~pogles.gles2.GL_ATTACHED_SHADERS`.
