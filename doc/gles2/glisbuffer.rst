:func:`~pogles.gles2.glIsBuffer`
================================

.. function:: pogles.gles2.glIsBuffer(buffer) -> result

    Determine if a name corresponds to a buffer object.

    :param buffer: is a value that may be the name of a buffer object.
    :type buffer: int
    :return: The bool result.


Description
-----------

:func:`~pogles.gles2.glIsBuffer` returns ``True`` if *buffer* is currently the
name of a buffer object.  If *buffer* is zero, or is a non-zero value that is
not currently the name of a buffer object, or if an error occurs,
:func:`~pogles.gles2.glIsBuffer` returns ``False``.

A name returned by :func:`~pogles.gles2.glGenBuffers`, but not yet associated
with a buffer object by calling :func:`~pogles.gles2.glBindBuffer`, is not the
name of a buffer object.
