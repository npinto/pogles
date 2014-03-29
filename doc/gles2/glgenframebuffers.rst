:func:`~pogles.gles2.glGenFramebuffers`
=======================================

.. function:: pogles.gles2.glGenFramebuffers(n) -> frame buffers

    Generate framebuffer object names.

    :param n: is the number of framebuffer object names to be generated.
    :type n: int
    :raises: :exc:`~pogles.gles2.GLException`
    :return: The list of generated framebuffer object names.


Description
-----------

:func:`~pogles.gles2.glGenFramebuffers` returns a list of *n* framebuffer
object names.  There is no guarantee that the names form a contiguous set of
integers; however, it is guaranteed that none of the returned names was in use
immediately before the call to :func:`~pogles.gles2.glGenFramebuffers`.

Framebuffer object names returned by a call to
:func:`~pogles.gles2.glGenFramebuffers` are not returned by subsequent calls,
unless they are first deleted with :func:`~pogles.gles2.glDeleteFramebuffers`.

No framebuffer objects are associated with the returned framebuffer object
names until they are first bound by calling
:func:`~pogles.gles2.glBindFramebuffer`.
