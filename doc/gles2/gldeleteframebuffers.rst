:func:`~pogles.gles2.glDeleteFramebuffers`
==========================================

.. function:: pogles.gles2.glDeleteFramebuffers(framebuffers)

    Delete named framebuffer objects.

    :param framebuffers: is a list of framebuffer objects to be deleted.
    :type framebuffers: list of int
    :raises: :exc:`~pogles.gles2.GLException`


Description
-----------

:func:`~pogles.gles2.glDeleteFramebuffers` deletes framebuffer objects named by
the elements of the list *framebuffers*.  After a framebuffer object is
deleted, it has no attachments, and its name is free for reuse (for example by
:func:`~pogles.gles2.glGenFramebuffers`).  If a framebuffer object that is
currently bound is deleted, the binding reverts to 0
(the window-system-provided framebuffer).

:func:`~pogles.gles2.glDeleteFramebuffers` silently ignores names that do not
correspond to existing framebuffer objects.
