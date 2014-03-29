:func:`~pogles.gles2.glIsFramebuffer`
=====================================

.. function:: pogles.gles2.glIsFramebuffer(framebuffer) -> result

    Determine if a name corresponds to a framebuffer object.

    :param framebuffer: is a value that may be the name of a framebuffer
            object.
    :type framebuffer: int
    :return: The bool result.


Description
-----------

:func:`~pogles.gles2.glIsFramebuffer` returns ``True`` if *framebuffer* is
currently the name of a framebuffer object.  If *framebuffer* is zero, or is a
non-zero value that is not currently the name of a framebuffer object, or if an
error occurs, :func:`~pogles.gles2.glIsFramebuffer` returns ``False``.

A name returned by :func:`~pogles.gles2.glGenFramebuffers`, but not yet
associated with a framebuffer object by calling
:func:`~pogles.gles2.glBindFramebuffer`, is not the name of a framebuffer
object.
