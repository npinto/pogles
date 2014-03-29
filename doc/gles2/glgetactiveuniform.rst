:func:`~pogles.gles2.glGetActiveUniform`
========================================

.. function:: pogles.gles2.glGetActiveUniform(program, index) -> (name, type, size)

    Return information about an active uniform variable.

    :param program: is the program object to be queried.
    :type program: int
    :param index: is the index of the uniform variable to be queried.
    :type index: int
    :raises: :exc:`~pogles.gles2.GLException`
    :return: A 3-tuple of the name, size and type of the uniform variable.


Description
-----------

:func:`~pogles.gles2.glGetActiveUniform` returns information about an active
uniform variable in the program object specified by *program*.  The number of
active uniform variables can be obtained by calling
:func:`~pogles.gles2.glGetProgramiv` with the value
:data:`~pogles.gles2.GL_ACTIVE_UNIFORMS`.  A value of 0 for *index* selects the
first active uniform variable.  Permissible values for *index* range from 0 to
the number of active uniform variables minus 1.

Shaders may use either built-in uniform variables, user-defined uniform
variables, or both.  Built-in uniform variables have a prefix of ``gl_`` and
reference existing OpenGL state or values derived from such state (e.g.
``gl_DepthRange``).  User-defined uniform variables have arbitrary names and
obtain their values from the application through calls to
:func:`~pogles.gles2.glUniform1f` etc.  A uniform variable (either built-in or
user-defined) is considered active if it is determined during the link
operation that it may be accessed during program execution.  Therefore,
*program* should have previously been the target of a call to
:func:`~pogles.gles2.glLinkProgram`, but it is not necessary for it to have
been linked successfully.

:func:`~pogles.gles2.glGetActiveUniform` returns the name, size and type of the
uniform variable indicated by *index*.

The type will be :data:`~pogles.gles2.GL_FLOAT`,
:data:`~pogles.gles2.GL_FLOAT_VEC2`, :data:`~pogles.gles2.GL_FLOAT_VEC3`,
:data:`~pogles.gles2.GL_FLOAT_VEC4`, :data:`~pogles.gles2.GL_INT`,
:data:`~pogles.gles2.GL_INT_VEC2`, :data:`~pogles.gles2.GL_INT_VEC3`,
:data:`~pogles.gles2.GL_INT_VEC4`, :data:`~pogles.gles2.GL_BOOL`,
:data:`~pogles.gles2.GL_BOOL_VEC2`, :data:`~pogles.gles2.GL_BOOL_VEC3`,
:data:`~pogles.gles2.GL_BOOL_VEC4`, :data:`~pogles.gles2.GL_FLOAT_MAT2`,
:data:`~pogles.gles2.GL_FLOAT_MAT3`, :data:`~pogles.gles2.GL_FLOAT_MAT4`,
:data:`~pogles.gles2.GL_SAMPLER_2D` or :data:`~pogles.gles2.GL_SAMPLER_CUBE`.

If one or more elements of an array are active, the returned size is the
highest array element index used, plus one, as determined by the compiler
and/or linker.  Only one active uniform variable will be reported for a
uniform array.

Uniform variables that are declared as structures or arrays of structures will
not be returned directly by this function.  Instead, each of these uniform
variables will be reduced to its fundamental components containing the ``.``
and ``[]`` operators such that each of the names is valid as an argument to
:func:`~pogles.gles2.glGetUniformLocation`.  Each of these reduced uniform
variables is counted as one active uniform variable and is assigned an index.
A valid name cannot be a structure, an array of structures, or a subcomponent
of a vector or matrix.

The size of the uniform variable will be returned.  Uniform variables other
than arrays will have a size of 1.  Structures and arrays of structures will be
reduced as described earlier, such that each of the names returned will be a
data type in the earlier list.  If this reduction results in an array, the size
returned will be as described for uniform arrays; otherwise, the size returned
will be 1.

The list of active uniform variables may include both built-in uniform
variables (which begin with the prefix ``gl_``) as well as user-defined uniform
variable names.

This function will return as much information as it can about the specified
active attribute variable.  If no information is available, the name will be an
empty string.  This situation could occur if this function is called after a
link operation that failed.
