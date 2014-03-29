:func:`~pogles.gles2.glUniformMatrix2fv` :func:`~pogles.gles2.glUniformMatrix3fv` :func:`~pogles.gles2.glUniformMatrix4fv`
==========================================================================================================================

.. function:: pogles.gles2.glUniformMatrix2fv(location, transpose, value)

    Specify the value of a uniform variable :math:`2 \times 2` matrix for the
    current program object.

    :param location: is the location of the uniform value to be modified.
    :type location: int
    :param transpose: is whether to transpose the matrix as the values are
            loaded into the uniform variable.  It must be ``False``.
    :type transpose: bool
    :param value: is the list of values that will be used to update the
            specified uniform variable.  The number of values must be a
            multiple of 4.
    :type value: list of float
    :raises: :exc:`~pogles.gles2.GLException`


.. function:: pogles.gles2.glUniformMatrix3fv(location, transpose, value)

    Specify the value of a uniform variable :math:`3 \times 3` matrix for the
    current program object.

    :param location: is the location of the uniform value to be modified.
    :type location: int
    :param transpose: is whether to transpose the matrix as the values are
            loaded into the uniform variable.  It must be ``False``.
    :type transpose: bool
    :param value: is the list of values that will be used to update the
            specified uniform variable.  The number of values must be a
            multiple of 9.
    :type value: list of float
    :raises: :exc:`~pogles.gles2.GLException`


.. function:: pogles.gles2.glUniformMatrix4fv(location, transpose, value)

    Specify the value of a uniform variable :math:`4 \times 4` matrix for the
    current program object.

    :param location: is the location of the uniform value to be modified.
    :type location: int
    :param transpose: is whether to transpose the matrix as the values are
            loaded into the uniform variable.  It must be ``False``.
    :type transpose: bool
    :param value: is the list of values that will be used to update the
            specified uniform variable.  The number of values must be a
            multiple of 16.
    :type value: list of float
    :raises: :exc:`~pogles.gles2.GLException`


Description
-----------

:func:`~pogles.gles2.glUniformMatrix2fv`,
:func:`~pogles.gles2.glUniformMatrix3fv` and
:func:`~pogles.gles2.glUniformMatrix4fv` are used to modify a matrix or an
array of matrices.  The location of the uniform variable to be modified is
specified by *location*, which should be a value returned by
:func:`~pogles.gles2.glGetUniformLocation`.  They operate on the program object
that was made part of current state by calling
:func:`~pogles.gles2.glUseProgram`.

The number in the function name is interpreted as the dimensionality of the
matrix.  The number 2 indicates a :math:`2 \times 2` matrix (i.e. 4 values),
the number 3 indicates a :math:`3 \times 3` matrix (i.e. 9 values) and the
number 4 indicates a :math:`4 \times 4` matrix (i.e. 16 values).  Each matrix
is assumed to be supplied in column major order.  If the number of values is a
multiple of 4, 9 or 16 then an array of matrices is modified, otherwise a
single matrix is modified.

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
