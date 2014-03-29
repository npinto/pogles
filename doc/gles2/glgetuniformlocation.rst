:func:`~pogles.gles2.glGetUniformLocation`
==========================================

.. function:: pogles.gles2.glGetUniformLocation(program, name) -> location

    Return the location of a uniform variable.

    :param program: is the program object to be queried.
    :type program: int
    :param name: is the name of the uniform variable whose location is to be
            queried.
    :type name: str
    :raises: :exc:`~pogles.gles2.GLException`
    :return: The location.


Description
-----------

:func:`~pogles.gles2.glGetUniformLocation` returns an integer that represents
the location of a specific uniform variable within a program object.  *name*
must be a string that contains no white space.  *name* must be an active
uniform variable name in *program* that is not a structure, an array of
structures, or a subcomponent of a vector or a matrix.  This function returns
-1 if *name* does not correspond to an active uniform variable in *program* or
if *name* starts with the reserved prefix ``gl_``.

Uniform variables that are structures or arrays of structures may be queried by
calling :func:`~pogles.gles2.glGetUniformLocation` for each field within the
structure.  The array element operator ``[]`` and the structure field operator
``.`` may be used in *name* in order to select elements within an array or
fields within a structure.  The result of using these operators is not allowed
to be another structure, an array of structures, or a subcomponent of a vector
or a matrix.  Except if the last part of *name* indicates a uniform variable
array, the location of the first element of an array can be retrieved by using
the name of the array, or by using the name appended by ``[0]``.

The actual locations assigned to uniform variables are not known until the
program object is linked successfully.  After linking has occurred, the command
:func:`~pogles.gles2.glGetUniformLocation` can be used to obtain the location
of a uniform variable . This location value can then be passed to
:func:`~pogles.gles2.glUniform1f` etc. to set the value of the uniform variable
or to :func:`~pogles.gles2.glGetUniformfv` or
:func:`~pogles.gles2.glGetUniformiv` in order to query the current value of the
uniform variable.  After a program object has been linked successfully, the
index values for uniform variables remain fixed until the next link command
occurs.  Uniform variable locations and values can only be queried after a link
if the link was successful.
