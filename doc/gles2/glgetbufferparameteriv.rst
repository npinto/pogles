:func:`~pogles.gles2.glGetBufferParameteriv`
============================================

.. function:: pogles.gles2.glGetBufferParameteriv(target, parameter) -> (value, ...)

    Return parameters of a buffer object.

    :param target: is the target buffer object.  It must be
            :data:`~pogles.gles2.GL_ARRAY_BUFFER` or
            :data:`~pogles.gles2.GL_ELEMENT_ARRAY_BUFFER`.
    :type target: int
    :param parameter: is the buffer object parameter.  It must be
            :data:`~pogles.gles2.GL_BUFFER_SIZE` or
            :data:`~pogles.gles2.GL_BUFFER_USAGE`.
    :type parameter: int
    :raises: :exc:`~pogles.gles2.GLException`
    :return: A tuple of the parameter's values.


Description
-----------

:func:`~pogles.gles2.glGetBufferParameteriv` returns a tuple of the values of a
parameter of the buffer object specified by *target*.

*parameter* names a specific buffer object parameter, as follows:

:data:`~pogles.gles2.GL_BUFFER_SIZE`
    Returns a 1-tuple, the size of the buffer object, measured in bytes.  The
    initial value is ``(0, )``.

:data:`~pogles.gles2.GL_BUFFER_USAGE`
    Returns a 1-tuple, the buffer object's usage pattern.  The initial value is
    :data:`~pogles.gles2.GL_STATIC_DRAW`.
