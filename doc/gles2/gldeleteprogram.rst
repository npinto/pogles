:func:`~pogles.gles2.glDeleteProgram`
=====================================

.. function:: pogles.gles2.glDeleteProgram(program)

    Delete a program object.

    :param program: is the program object to be deleted.
    :type program: int
    :raises: :exc:`~pogles.gles2.GLException`


Description
-----------

:func:`~pogles.gles2.glDeleteProgram` frees the memory and invalidates the name
associated with the program object specified by *program*.  This command
effectively undoes the effects of a call to
:func:`~pogles.gles2.glCreateProgram`.

If a program object is in use as part of current rendering state, it will be
flagged for deletion, but it will not be deleted until it is no longer part of
current state for any rendering context.  If a program object to be deleted has
shader objects attached to it, those shader objects will be automatically
detached but not deleted unless they have already been flagged for deletion by
a previous call to :func:`~pogles.gles2.glDeleteShader`.  A value of 0 for
*program* will be silently ignored.

To determine whether a program object has been flagged for deletion, call
:func:`~pogles.gles2.glGetProgramiv` with arguments *program* and
:data:`~pogles.gles2.GL_DELETE_STATUS`.
