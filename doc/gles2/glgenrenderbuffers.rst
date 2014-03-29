:func:`~pogles.gles2.glGenRenderbuffers`
========================================

.. function:: pogles.gles2.glGenRenderbuffers(n) -> render buffers

    Generate renderbuffer object names.

    :param n: is the number of renderbuffer object names to be generated.
    :type n: int
    :raises: :exc:`~pogles.gles2.GLException`
    :return: The list of generated renderbuffer object names.


Description
-----------

:func:`~pogles.gles2.glGenRenderbuffers` returns a list of *n* renderbuffer
object names.  There is no guarantee that the names form a contiguous set of
integers; however, it is guaranteed that none of the returned names was in use
immediately before the call to :func:`~pogles.gles2.glGenRenderbuffers`.

Renderbuffer object names returned by a call to
:func:`~pogles.gles2.glGenRenderbuffers` are not returned by subsequent calls,
unless they are first deleted with :func:`~pogles.gles2.glDeleteRenderbuffers`.

No renderbuffer objects are associated with the returned renderbuffer object
names until they are first bound by calling
:func:`~pogles.gles2.glBindRenderbuffer`.
