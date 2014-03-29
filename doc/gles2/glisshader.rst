:func:`~pogles.gles2.glIsShader`
================================

.. function:: pogles.gles2.glIsShader(shader) -> result

    Determine if a name corresponds to a shader object.

    :param shader: is the potential shader object.
    :type shader: int
    :return: The bool result.


Description
-----------

:func:`~pogles.gles2.glIsShader` returns ``True`` if *shader* is the name of a
shader object previously created with :func:`~pogles.gles2.glCreateShader` and
not yet deleted with :func:`~pogles.gles2.glDeleteShader`.  If *shader* is zero
or a non-zero value that is not the name of a shader object, or if an error
occurs, :func:`~pogles.gles2.glIsShader` returns ``False``.


Notes
-----

No error is generated if *shader* is not a valid shader object name.

A shader object marked for deletion with :func:`~pogles.gles2.glDeleteShader`
but still attached to a program object is still considered a shader object and
:func:`~pogles.gles2.glIsShader` will return ``True``.
