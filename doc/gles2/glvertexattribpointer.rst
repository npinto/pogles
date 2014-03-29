:func:`~pogles.gles2.glVertexAttribPointer`
===========================================

.. function:: pogles.gles2.glVertexAttribPointer(index, size, type, normalized, stride, pointer)

    Define an array of generic vertex attribute data.

    :param index: is the index of the generic vertex attribute to be modified.
    :type index: int
    :param size: is the number of components per generic vertex attribute.  It
            must be 1, 2, 3 or 4.  The initial value is 4.
    :type size: int
    :param type: is the data type of each component in the array.  It must be
            :data:`~pogles.gles2.GL_BYTE`,
            :data:`~pogles.gles2.GL_UNSIGNED_BYTE`,
            :data:`~pogles.gles2.GL_SHORT`,
            :data:`~pogles.gles2.GL_UNSIGNED_SHORT`,
            :data:`~pogles.gles2.GL_FIXED` or :data:`~pogles.gles2.GL_FLOAT`.
            The initial value is :data:`~pogles.gles2.GL_FLOAT`.
    :type type: int
    :param normalized: specifies whether fixed-point data values should be
            normalized (``True``) or converted directly as fixed-point values
            (``False``) when they are accessed.
    :type normalized: bool
    :param stride: is the byte offset between consecutive generic vertex
            attributes.  If *stride* is 0, the generic vertex attributes are
            understood to be tightly packed in the array.  The initial value is
            0.
    :type stride: int
    :param pointer: is a pointer to the first component of the first generic
            vertex attribute in the array.  The initial value is 0.
    :type pointer: object that implements the buffer protocol
    :raises: :exc:`~pogles.gles2.GLException`


Description
-----------

:func:`~pogles.gles2.glVertexAttribPointer` specifies the location and data
format of the array of generic vertex attributes at index *index* to use when
rendering.  *size* specifies the number of components per attribute and must be
1, 2, 3 or 4.  *type* specifies the data type of each component, and *stride*
specifies the byte stride from one attribute to the next, allowing vertices and
attributes to be packed into a single array or stored in separate arrays.  If
set to ``True``, *normalized* indicates that values stored in an integer format
are to be mapped to the range :math:`[-1,1]` (for signed values) or
:math:`[0,1]` (for unsigned values) when they are accessed and converted to
floating point.  Otherwise, values will be converted to floats directly without
normalization.

If a non-zero named buffer object is bound to the
:data:`~pogles.gles2.GL_ARRAY_BUFFER` target (see
:func:`~pogles.gles2.glBindBuffer`) while a generic vertex attribute array is
specified, *pointer* is treated as a byte offset into the buffer object's data
store.  Also, the buffer object binding
(:data:`~pogles.gles2.GL_ARRAY_BUFFER_BINDING`) is saved as generic vertex
attribute array client-side state
(:data:`~pogles.gles2.GL_VERTEX_ATTRIB_ARRAY_BUFFER_BINDING`) for index
*index*.

When a generic vertex attribute array is specified, *size*, *type*,
*normalized*, *stride* and *pointer* are saved as client-side state, in
addition to the current vertex array buffer object binding.

To enable and disable a generic vertex attribute array, call
:func:`~pogles.gles2.glEnableVertexAttribArray` and
:func:`~pogles.gles2.glDisableVertexAttribArray` with *index*.  If enabled, the
generic vertex attribute array is used when :func:`~pogles.gles2.glDrawArrays`
or :func:`~pogles.gles2.glDrawElements` is called.


Notes
-----

Each generic vertex attribute array is initially disabled and isn't accessed
when :func:`~pogles.gles2.glDrawElements` or :func:`~pogles.gles2.glDrawArrays`
is called.

:func:`~pogles.gles2.glVertexAttribPointer` is typically implemented on the
client side.
