:func:`~pogles.gles2.glUniform1fv` :func:`~pogles.gles2.glUniform2fv` :func:`~pogles.gles2.glUniform3fv` :func:`~pogles.gles2.glUniform4fv` :func:`~pogles.gles2.glUniform1iv` :func:`~pogles.gles2.glUniform2iv` :func:`~pogles.gles2.glUniform3iv` :func:`~pogles.gles2.glUniform4iv`
=======================================================================================================================================================================================================================================================================================

.. function:: pogles.gles2.glUniform1fv(location, value)

    Specify the value of a uniform variable or array for the current program
    object.

    :param location: is the location of the uniform value to be modified.
    :type location: int
    :param value: is the list of values that will be used to update the
            specified uniform variable.
    :type value: list of float
    :raises: :exc:`~pogles.gles2.GLException`


.. function:: pogles.gles2.glUniform2fv(location, value)

    Specify the value of a uniform variable or array for the current program
    object.

    :param location: is the location of the uniform value to be modified.
    :type location: int
    :param value: is the list of values that will be used to update the
            specified uniform variable.  The number of values must be a
            multiple of 2.
    :type value: list of float
    :raises: :exc:`~pogles.gles2.GLException`


.. function:: pogles.gles2.glUniform3fv(location, value)

    Specify the value of a uniform variable or array for the current program
    object.

    :param location: is the location of the uniform value to be modified.
    :type location: int
    :param value: is the list of values that will be used to update the
            specified uniform variable.  The number of values must be a
            multiple of 3.
    :type value: list of float
    :raises: :exc:`~pogles.gles2.GLException`


.. function:: pogles.gles2.glUniform4fv(location, value)

    Specify the value of a uniform variable or array for the current program
    object.

    :param location: is the location of the uniform value to be modified.
    :type location: int
    :param value: is the list of values that will be used to update the
            specified uniform variable.  The number of values must be a
            multiple of 4.
    :type value: list of float
    :raises: :exc:`~pogles.gles2.GLException`


.. function:: pogles.gles2.glUniform1iv(location, value)

    Specify the value of a uniform variable or array for the current program
    object.

    :param location: is the location of the uniform value to be modified.
    :type location: int
    :param value: is the list of values that will be used to update the
            specified uniform variable.
    :type value: list of int
    :raises: :exc:`~pogles.gles2.GLException`


.. function:: pogles.gles2.glUniform2iv(location, value)

    Specify the value of a uniform variable or array for the current program
    object.

    :param location: is the location of the uniform value to be modified.
    :type location: int
    :param value: is the list of values that will be used to update the
            specified uniform variable.  The number of values must be a
            multiple of 2.
    :type value: list of int
    :raises: :exc:`~pogles.gles2.GLException`


.. function:: pogles.gles2.glUniform3iv(location, value)

    Specify the value of a uniform variable or array for the current program
    object.

    :param location: is the location of the uniform value to be modified.
    :type location: int
    :param value: is the list of values that will be used to update the
            specified uniform variable.  The number of values must be a
            multiple of 3.
    :type value: list of int
    :raises: :exc:`~pogles.gles2.GLException`


.. function:: pogles.gles2.glUniform4iv(location, value)

    Specify the value of a uniform variable or array for the current program
    object.

    :param location: is the location of the uniform value to be modified.
    :type location: int
    :param value: is the list of values that will be used to update the
            specified uniform variable.  The number of values must be a
            multiple of 4.
    :type value: list of int
    :raises: :exc:`~pogles.gles2.GLException`


Description
-----------

:func:`~pogles.gles2.glUniform1fv`, :func:`~pogles.gles2.glUniform2fv`,
:func:`~pogles.gles2.glUniform3fv`, :func:`~pogles.gles2.glUniform4fv`,
:func:`~pogles.gles2.glUniform1iv`, :func:`~pogles.gles2.glUniform2iv`,
:func:`~pogles.gles2.glUniform3iv` and :func:`~pogles.gles2.glUniform4iv` are
used to modify the value of a single uniform variable or a uniform variable
array.  The location of the uniform variable to be modified is specified by
*location*, which should be a value returned by
:func:`~pogles.gles2.glGetUniformLocation`.  They operate on the program object
that was made part of current state by calling
:func:`~pogles.gles2.glUseProgram`.

The number in the function name is interpreted as the number of components in
the data type of the specified uniform variable (e.g. 1 for float, int, bool; 2
for ``vec2``, ``ivec2``, ``bvec2`` etc.).  The suffix ``f`` indicates that
floating-point values are being passed; the suffix ``i`` indicates that integer
values are being passed, and this type should also match the data type of the
specified uniform variable.  The ``i`` variants should be used to provide
values for uniform variables defined as ``int``, ``ivec2``, ``ivec3``,
``ivec4`` or arrays of these.  The ``f`` variants should be used to provide
values for uniform variables of type ``float``, ``vec2``, ``vec3``, ``vec4`` or
arrays of these.  Either the ``i`` or the ``f`` variants may be used to provide
values for uniform variables of type ``bool``, ``bvec2``, ``bvec3``, ``bvec4``
or arrays of these.  The uniform variable will be set to false if the input
value is 0 or 0.0f, and it will be set to true otherwise.

If the number of values is the same as the number of components then a single
uniform variable is modified.  If the number of values is the same as, or a
multiple of, the number of components then an entire array or part of an array
may be modified.  When loading :math:`n` elements starting at an arbitrary
position :math:`m` in a uniform variable array, elements :math:`m+n-1` in the
array will be replaced with the new values.  If :math:`m+n-1` is larger than
the size of the uniform variable array, values for all array elements beyond
the end of the array will be ignored.

For uniform variable arrays, each element of the array is considered to be of
the type indicated in the name of the command (e.g.
:func:`~pogles.gles2.glUniform3f` or :func:`~pogles.gles2.glUniform3fv` can be
used to load a uniform variable array of type ``vec3``).

All active uniform variables defined in a program object are initialized to 0
when the program object is linked successfully.  They retain the values
assigned to them until the next successful link operation occurs on the program
object, when they are once again initialized to 0.


Notes
-----

:func:`~pogles.gles2.glUniform1i` and :func:`~pogles.gles2.glUniform1iv` are
the only two functions that may be used to load uniform variables defined as
sampler types.  Loading samplers with any other function will result in a
:data:`~pogles.gles2.GL_INVALID_OPERATION` error.

If the number of values is greater than 1 and the indicated uniform variable is
not an array, a :data:`~pogles.gles2.GL_INVALID_OPERATION` error is generated
and the specified uniform variable will remain unchanged.

Other than the preceding exceptions, if the type and size of the uniform
variable as defined in the shader do not match the type and size specified in
the name of the command used to load its value, a
:data:`~pogles.gles2.GL_INVALID_OPERATION` error will be generated and the
specified uniform variable will remain unchanged.

If *location* is a value other than -1 and it does not represent a valid
uniform variable location in the current program object, an error will be
generated, and no changes will be made to the uniform variable storage of the
current program object.  If *location* is equal to -1, the data passed in will
be silently ignored and the specified uniform variable will not be changed.
