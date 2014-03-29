:func:`~pogles.gles2.glIsRenderbuffer`
======================================

.. function:: pogles.gles2.glIsRenderbuffer(renderbuffer) -> result

    Determine if a name corresponds to a renderbuffer object.

    :param renderbuffer: is a value that may be the name of a renderbuffer
            object.
    :type renderbuffer: int
    :return: The bool result.


Description
-----------

:func:`~pogles.gles2.glIsRenderbuffer` returns ``True`` if *renderbuffer* is
currently the name of a renderbuffer object.  If *renderbuffer* is zero, or is
a non-zero value that is not currently the name of a renderbuffer object, or if
an error occurs, :func:`~pogles.gles2.glIsRenderbuffer` returns ``False``.

A name returned by :func:`~pogles.gles2.glGenRenderbuffers`, but not yet
associated with a renderbuffer object by calling
:func:`~pogles.gles2.glBindRenderbuffer`, is not the name of a renderbuffer
object.
