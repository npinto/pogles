:func:`~pogles.gles2.glDeleteRenderbuffers`
===========================================

.. function:: pogles.gles2.glDeleteRenderbuffers(renderbuffers)

    Delete named renderbuffer objects.

    :param renderbuffers: is a list of renderbuffer objects to be deleted.
    :type renderbuffers: list of int
    :raises: :exc:`~pogles.gles2.GLException`


Description
-----------

:func:`~pogles.gles2.glDeleteRenderbuffers` deletes renderbuffer objects named
by the elements of the list *renderbuffers*.  After a renderbuffer object is
deleted, it has no contents, and its name is free for reuse (for example by
:func:`~pogles.gles2.glGenRenderbuffers`).

If a renderbuffer object that is currently bound is deleted, the binding
reverts to 0 (the absence of any renderbuffer object).  Additionally, special
care must be taken when deleting a renderbuffer object if the image of the
renderbuffer is attached to a framebuffer object.  In this case, if the deleted
renderbuffer object is attached to the currently bound framebuffer object, it
is automatically detached.  However, attachments to any other framebuffer
objects are the responsibility of the application.

:func:`~pogles.gles2.glDeleteRenderbuffers` silently ignores names that do not
correspond to existing renderbuffer objects.
