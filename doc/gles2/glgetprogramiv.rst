:func:`~pogles.gles2.glGetProgramiv`
====================================

.. function:: pogles.gles2.glGetProgramiv(program, pname) -> (value, ...)

    Return a parameter from a program object.

    :param program: is the program object to be queried.
    :type program: int
    :param pname: is the object parameter.  It must be
            :data:`~pogles.gles2.GL_DELETE_STATUS`,
            :data:`~pogles.gles2.GL_LINK_STATUS`,
            :data:`~pogles.gles2.GL_VALIDATE_STATUS`,
            :data:`~pogles.gles2.GL_INFO_LOG_LENGTH`,
            :data:`~pogles.gles2.GL_ATTACHED_SHADERS`,
            :data:`~pogles.gles2.GL_ACTIVE_ATTRIBUTES`,
            :data:`~pogles.gles2.GL_ACTIVE_ATTRIBUTE_MAX_LENGTH`,
            :data:`~pogles.gles2.GL_ACTIVE_UNIFORMS` or
            :data:`~pogles.gles2.GL_ACTIVE_UNIFORM_MAX_LENGTH`.
    :type pname: int
    :raises: :exc:`~pogles.gles2.GLException`
    :return: A tuple of the parameter's values.


Description
-----------

:func:`~pogles.gles2.glGetProgramiv` returns a tuple of the values of a
parameter for a specific program object.  The following parameters are defined:

:data:`~pogles.gles2.GL_DELETE_STATUS`
    Returns a 1-tuple, ``True`` if *program* is currently flagged for deletion,
    and ``False`` otherwise.

:data:`~pogles.gles2.GL_LINK_STATUS`
    Returns a 1-tuple, ``True`` if the last link operation on *program* was
    successful, and ``False`` otherwise.

:data:`~pogles.gles2.GL_VALIDATE_STATUS`
    Returns a 1-tuple, ``True`` or if the last validation operation on
    *program* was successful, and ``False`` otherwise.

:data:`~pogles.gles2.GL_INFO_LOG_LENGTH`
    Returns a 1-tuple, the number of characters in the information log for
    *program* including the null termination character (i.e. the size of the
    character buffer required to store the information log).  If *program* has
    no information log, a value of 0 is returned.

:data:`~pogles.gles2.GL_ATTACHED_SHADERS`
    Returns a 1-tuple, the number of shader objects attached to *program*.

:data:`~pogles.gles2.GL_ACTIVE_ATTRIBUTES`
    Returns a 1-tuple, the number of active attribute variables for *program*.

:data:`~pogles.gles2.GL_ACTIVE_ATTRIBUTE_MAX_LENGTH`
    Returns a 1-tuple, the length of the longest active attribute name for
    *program*, including the null termination character (i.e., the size of the
    character buffer required to store the longest attribute name).  If no
    active attributes exist, 0 is returned.

:data:`~pogles.gles2.GL_ACTIVE_UNIFORMS`
    Returns a 1-tuple, the number of active uniform variables for *program*.

:data:`~pogles.gles2.GL_ACTIVE_UNIFORM_MAX_LENGTH`
    Returns a 1-tuple, the length of the longest active uniform variable name
    for *program*, including the null termination character (i.e. the size of
    the character buffer required to store the longest uniform variable name).
    If no active uniform variables exist, 0 is returned.
