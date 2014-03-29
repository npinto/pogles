:func:`~pogles.gles2.glGenBuffers`
==================================

.. function:: pogles.gles2.glGenBuffers(n) -> buffers

    Generate buffer object names.

    :param n: is the number of buffer object names to be generated.
    :type n: int
    :raises: :exc:`~pogles.gles2.GLException`
    :return: The list of generated buffer object names.


Description
-----------

:func:`~pogles.gles2.glGenBuffers` returns a list of *n* buffer object names.
There is no guarantee that the names form a contiguous set of integers;
however, it is guaranteed that none of the returned names was in use
immediately before the call to :func:`~pogles.gles2.glGenBuffers`.

Buffer object names returned by a call to :func:`~pogles.gles2.glGenBuffers`
are not returned by subsequent calls, unless they are first deleted with
:func:`~pogles.gles2.glDeleteBuffers`.

No buffer objects are associated with the returned buffer object names until
they are first bound by calling :func:`~pogles.gles2.glBindBuffer`.
