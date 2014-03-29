:func:`~pogles.gles2.glDetachShader`
====================================

.. function:: pogles.gles2.glDetachShader(program, shader)

    Detach a shader object from a program object.

    :param program: is the program object from which to detach the shader
            object.
    :type program: int
    :param shader: is the shader object to be detached.
    :type shader: int
    :raises: :exc:`~pogles.gles2.GLException`


Description
-----------

:func:`~pogles.gles2.glDetachShader` detaches the shader object specified by
*shader* from the program object specified by *program*.  This command can be
used to undo the effect of the command :func:`~pogles.gles2.glAttachShader`.

If *shader* has already been flagged for deletion by a call to
:func:`~pogles.gles2.glDeleteShader` and it is not attached to any other
program object, it will be deleted after it has been detached.
