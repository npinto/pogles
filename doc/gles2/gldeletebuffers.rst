:func:`~pogles.gles2.glDeleteBuffers`
=====================================

.. function:: pogles.gles2.glDeleteBuffers(buffers)

    Delete named buffer objects.

    :param buffers: is a list of buffer objects to be deleted.
    :type buffers: list of int
    :raises: :exc:`~pogles.gles2.GLException`


Description
-----------

:func:`~pogles.gles2.glDeleteBuffers` deletes buffer objects named by the
elements of the list *buffers*.  After a buffer object is deleted, it has no
contents, and its name is free for reuse (for example by
:func:`~pogles.gles2.glGenBuffers`).  If a buffer object that is currently
bound is deleted, the binding reverts to 0 (the absence of any buffer object,
which reverts to client memory usage).

:func:`~pogles.gles2.glDeleteBuffers` silently ignores names that do not
correspond to existing buffer objects.
