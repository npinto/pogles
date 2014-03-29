:func:`~pogles.gles2.glGetVertexAttribPointerv`
===============================================

.. function:: pogles.gles2.glGetVertexAttribPointerv(index, pname) -> address

    Return the address of the specified generic vertex attribute pointer.

    :param index: is the generic vertex attribute parameter to be returned.
    :type index: int
    :param pname: is the generic vertex attribute parameter to be returned.  It
            must be :data:`~pogles.gles2.GL_VERTEX_ATTRIB_ARRAY_POINTER`.
    :type pname: int
    :raises: :exc:`~pogles.gles2.GLException`
    :return: The address.


Description
-----------

:func:`~pogles.gles2.glGetVertexAttribPointerv` returns pointer information.
*index* is the generic vertex attribute to be queried, *pname* is a symbolic
constant indicating the pointer to be returned.

If a non-zero named buffer object was bound to the
:data:`~pogles.gles2.GL_ARRAY_BUFFER` target (see
:func:`~pogles.gles2.glBindBuffer`) when the desired pointer was previously
specified, the pointer returned is a byte offset into the buffer object's data
store.


Notes
-----

The pointer returned is client-side state.
