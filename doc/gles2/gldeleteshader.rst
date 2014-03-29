:func:`~pogles.gles2.glDeleteShader`
====================================

.. function:: pogles.gles2.glDeleteShader(shader)

    Delete a shader object.

    :param shader: is the shader object to be deleted.
    :type shader: int
    :raises: :exc:`~pogles.gles2.GLException`


Description
-----------

:func:`~pogles.gles2.glDeleteShader` frees the memory and invalidates the name
associated with the shader object specified by *shader*.  This command
effectively undoes the effects of a call to
:func:`~pogles.gles2.glCreateShader`.

If a shader object to be deleted is attached to a program object, it will be
flagged for deletion, but it will not be deleted until it is no longer attached
to any program object, for any rendering context (i.e. it must be detached from
wherever it was attached before it will be deleted).  A value of 0 for *shader*
will be silently ignored.

To determine whether an object has been flagged for deletion, call
:func:`~pogles.gles2.glGetShaderiv` with arguments shader and
:data:`~pogles.gles2.GL_DELETE_STATUS`.
