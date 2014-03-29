:func:`~pogles.gles2.glGetUniformfv` :func:`~pogles.gles2.glGetUniformiv`
=========================================================================

.. function:: pogles.gles2.glGetUniformfv(program, location) -> (value, ...)

    Return the value of a uniform variable as floats.

    :param program: is the program object to be queried.
    :type program: int
    :param location: is the location of the uniform variable to be queried.
    :type location: int
    :raises: :exc:`~pogles.gles2.GLException`
    :return: A tuple of the parameter's values.


.. function:: pogles.gles2.glGetUniformiv(program, location) -> (value, ...)

    Return the value of a uniform variable as ints.

    :param program: is the program object to be queried.
    :type program: int
    :param location: is the location of the uniform variable to be queried.
    :type location: int
    :raises: :exc:`~pogles.gles2.GLException`
    :return: A tuple of the parameter's values.


Description
-----------

:func:`~pogles.gles2.glGetUniformfv` and :func:`~pogles.gles2.glGetUniformiv`
return a tuple of the values of the specified uniform variable.  The type of
the uniform variable specified by *location* determines the number of values
returned.  If the uniform variable is defined in the shader as a boolean, int
or float, a single value will be returned.  If it is defined as a vec2, ivec2
or bvec2, two values will be returned.  If it is defined as a vec3, ivec3 or
bvec3, three values will be returned, and so on.  To query values stored in
uniform variables declared as arrays, call :func:`~pogles.gles2.glGetUniformfv`
or :func:`~pogles.gles2.glGetUniformiv` for each element of the array.  To
query values stored in uniform variables declared as structures, call
:func:`~pogles.gles2.glGetUniformfv` or :func:`~pogles.gles2.glGetUniformiv`
for each field in the structure.  The values for uniform variables declared as
a matrix will be returned in column major order.

The locations assigned to uniform variables are not known until the program
object is linked.  After linking has occurred, the command
:func:`~pogles.gles2.glGetUniformLocation` can be used to obtain the location
of a uniform variable.  This location value can then be passed to
:func:`~pogles.gles2.glGetUniformfv` and :func:`~pogles.gles2.glGetUniformiv`
in order to query the current value of the uniform variable.  After a program
object has been linked successfully, the index values for uniform variables
remain fixed until the next link command occurs.  The uniform variable values
can only be queried after a link if the link was successful.
