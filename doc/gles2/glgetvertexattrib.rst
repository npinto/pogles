:func:`~pogles.gles2.glGetVertexAttribfv` :func:`~pogles.gles2.glGetVertexAttribiv`
===================================================================================

.. function:: pogles.gles2.glGetVertexAttribfv(index, pname) -> (value, ...)

    Return a generic vertex attribute parameter as floats.

    :param index: is the generic vertex attribute parameter to be queried.
    :type index: int
    :param pname: is the vertex attribute parameter to be queried.  It must be
            :data:`~pogles.gles2.GL_VERTEX_ATTRIB_ARRAY_BUFFER_BINDING`,
            :data:`~pogles.gles2.GL_VERTEX_ATTRIB_ARRAY_ENABLED`,
            :data:`~pogles.gles2.GL_VERTEX_ATTRIB_ARRAY_SIZE`,
            :data:`~pogles.gles2.GL_VERTEX_ATTRIB_ARRAY_STRIDE`,
            :data:`~pogles.gles2.GL_VERTEX_ATTRIB_ARRAY_TYPE`,
            :data:`~pogles.gles2.GL_VERTEX_ATTRIB_ARRAY_NORMALIZED` or
            :data:`~pogles.gles2.GL_CURRENT_VERTEX_ATTRIB`.
    :type pname: int
    :raises: :exc:`~pogles.gles2.GLException`
    :return: A tuple of values.


.. function:: pogles.gles2.glGetVertexAttribiv(index, pname) -> (value, ...)

    Return a generic vertex attribute parameter as ints.

    :param index: is the generic vertex attribute parameter to be queried.
    :type index: int
    :param pname: is the vertex attribute parameter to be queried.  It must be
            :data:`~pogles.gles2.GL_VERTEX_ATTRIB_ARRAY_BUFFER_BINDING`,
            :data:`~pogles.gles2.GL_VERTEX_ATTRIB_ARRAY_ENABLED`,
            :data:`~pogles.gles2.GL_VERTEX_ATTRIB_ARRAY_SIZE`,
            :data:`~pogles.gles2.GL_VERTEX_ATTRIB_ARRAY_STRIDE`,
            :data:`~pogles.gles2.GL_VERTEX_ATTRIB_ARRAY_TYPE`,
            :data:`~pogles.gles2.GL_VERTEX_ATTRIB_ARRAY_NORMALIZED` or
            :data:`~pogles.gles2.GL_CURRENT_VERTEX_ATTRIB`.
    :type pname: int
    :raises: :exc:`~pogles.gles2.GLException`
    :return: A tuple of values.


Description
-----------

:func:`~pogles.gles2.glGetVertexAttribfv` and
:func:`~pogles.gles2.glGetVertexAttribiv` return a tuple of the values of a
generic vertex attribute parameter.  The generic vertex attribute to be queried
is specified by *index*, and the parameter to be queried is specified by
*pname*.

The accepted parameter names are as follows:

:data:`~pogles.gles2.GL_VERTEX_ATTRIB_ARRAY_BUFFER_BINDING`
    Returns a 1-tuple, the name of the buffer object currently bound to the
    binding point corresponding to generic vertex attribute array *index*.  If
    no buffer object is bound, 0 is returned.  The initial value is ``(0, )``.

:data:`~pogles.gles2.GL_VERTEX_ATTRIB_ARRAY_ENABLED`
    Returns a 1-tuple that is ``True`` if the vertex attribute array for
    *index* is enabled and ``False`` if it is disabled.  The initial value is
    ``(False, )``.

:data:`~pogles.gles2.GL_VERTEX_ATTRIB_ARRAY_SIZE`
    Returns a 1-tuple, the size of the vertex attribute array for *index*.  The
    size is the number of values for each element of the vertex attribute
    array, and it will be 1, 2, 3, or 4.  The initial value is ``(4, )``.

:data:`~pogles.gles2.GL_VERTEX_ATTRIB_ARRAY_STRIDE`
    Returns a 1-tuple, the array stride for (number of bytes between successive
    elements in) the vertex attribute array for *index*.  A value of 0
    indicates that the array elements are stored sequentially in memory.  The
    initial value is ``(0, )``.

:data:`~pogles.gles2.GL_VERTEX_ATTRIB_ARRAY_TYPE`
    Returns a 1-tuple, the array type for the vertex attribute array for
    *index*.  Possible values are :data:`~pogles.gles2.GL_BYTE`,
    :data:`~pogles.gles2.GL_UNSIGNED_BYTE`, :data:`~pogles.gles2.GL_SHORT`,
    :data:`~pogles.gles2.GL_UNSIGNED_SHORT`, :data:`~pogles.gles2.GL_FIXED` and
    :data:`~pogles.gles2.GL_FLOAT`.  The initial value is
    :data:`~pogles.gles2.GL_FLOAT`.

:data:`~pogles.gles2.GL_VERTEX_ATTRIB_ARRAY_NORMALIZED`
    Returns a 1-tuple that is ``True`` if fixed-point data types for the vertex
    attribute array indicated by index are normalized when they are converted
    to floating point, and ``False`` otherwise.  The initial value is
    ``False``.

:data:`~pogles.gles2.GL_CURRENT_VERTEX_ATTRIB`
    Returns a 4-tuple, the current value for the generic vertex attribute
    specified by *index*.  The initial value is ``(0,0,0,1)``.

All of the parameters except :data:`~pogles.gles2.GL_CURRENT_VERTEX_ATTRIB`
represent client-side state.
