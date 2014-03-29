:func:`~pogles.gles2.glGetActiveAttrib`
=======================================

.. function:: pogles.gles2.glGetActiveAttrib(program, index) -> (name, size, type)

    Return information about an active attribute variable.

    :param program: is the program object to be queried.
    :type program: int
    :param index: is the index of the attribute variable to be queried.
    :type index: int
    :raises: :exc:`~pogles.gles2.GLException`
    :return: A 3-tuple of the name, size and type of the attribute variable.


Description
-----------

:func:`~pogles.gles2.glGetActiveAttrib` returns information about an active
attribute variable in the program object specified by *program*.  The number of
active attributes can be obtained by calling
:func:`~pogles.gles2.glGetProgramiv` with the value
:data:`~pogles.gles2.GL_ACTIVE_ATTRIBUTES`.  A value of 0 for *index* selects
the first active attribute variable.  Permissible values for *index* range from
0 to the number of active attribute variables minus 1.

Attribute variables have arbitrary names and obtain their values through
numbered generic vertex attributes.  An attribute variable is considered active
if it is determined during the link operation that it may be accessed during
program execution.  Therefore, *program* should have previously been the target
of a call to :func:`~pogles.gles2.glLinkProgram`, but it is not necessary for
it to have been linked successfully.

:func:`~pogles.gles2.glGetActiveAttrib` returns the name, size and type of the
attribute variable indicated by *index*.

The type will be :data:`~pogles.gles2.GL_FLOAT`,
:data:`~pogles.gles2.GL_FLOAT_VEC2`, :data:`~pogles.gles2.GL_FLOAT_VEC3`,
:data:`~pogles.gles2.GL_FLOAT_VEC4`, :data:`~pogles.gles2.GL_FLOAT_MAT2`,
:data:`~pogles.gles2.GL_FLOAT_MAT3` or :data:`~pogles.gles2.GL_FLOAT_MAT4`.

The size of the attribute is in units of the type.

This function will return as much information as it can about the specified
active attribute variable.  If no information is available, the name will be an
empty string.  This situation could occur if this function is called after a
link operation that failed.
