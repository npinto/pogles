:func:`~pogles.gles2.glIsProgram`
=================================

.. function:: pogles.gles2.glIsProgram(program) -> result

    Determine if a name corresponds to a program object.

    :param program: is the potential program object.
    :type program: int
    :return: The bool result.


Description
-----------

:func:`~pogles.gles2.glIsProgram` returns ``True`` if *program* is the name of
a program object previously created with :func:`~pogles.gles2.glCreateProgram`
and not yet deleted with :func:`~pogles.gles2.glDeleteProgram`.  If *program*
is zero or a non-zero value that is not the name of a program object, or if an
error occurs, :func:`~pogles.gles2.glIsProgram` returns ``False``.


Notes
-----

No error is generated if *program* is not a valid program object name.

A program object marked for deletion with :func:`~pogles.gles2.glDeleteProgram`
but still in use as part of current rendering state is still considered a
program object and :func:`~pogles.gles2.glIsProgram` will return ``True``.
