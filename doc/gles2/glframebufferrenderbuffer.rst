:func:`~pogles.gles2.glFramebufferRenderbuffer`
===============================================

.. function:: pogles.gles2.glFramebufferRenderbuffer(target, attachment, renderbuffertarget, renderbuffer)

    Attach a renderbuffer object to a framebuffer object.

    :param target: is the framebuffer target. It must be
            :data:`~pogles.gles2.GL_FRAMEBUFFER`.
    :type target: int
    :param attachment: is the attachment point to which *renderbuffer* should
            be attached.  It must be
            :data:`~pogles.gles2.GL_COLOR_ATTACHMENT0`,
            :data:`~pogles.gles2.GL_DEPTH_ATTACHMENT` or
            :data:`~pogles.gles2.GL_STENCIL_ATTACHMENT`.
    :type attachment: int
    :param renderbuffertarget: is the renderbuffer target.  It must be
            :data:`~pogles.gles2.GL_RENDERBUFFER`.
    :type renderbuffertarget: int
    :param renderbuffer: is the renderbuffer object that is to be attached.
    :type renderbuffer: int
    :raises: :exc:`~pogles.gles2.GLException`


Description
-----------

:func:`~pogles.gles2.glFramebufferRenderbuffer` attaches the renderbuffer
specified by *renderbuffer* as one of the logical buffers of the currently
bound framebuffer object.  *attachment* specifies whether the renderbuffer
should be attached to the framebuffer object's color, depth, or stencil buffer.
A renderbuffer may not be attached to the default framebuffer object name 0.

If *renderbuffer* is not 0, the value of
:data:`~pogles.gles2.GL_FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE` for the specified
attachment point is set to :data:`~pogles.gles2.GL_RENDERBUFFER` and the value
of :data:`~pogles.gles2.GL_FRAMEBUFFER_ATTACHMENT_OBJECT_NAME` is set to
*renderbuffer*.  :data:`~pogles.gles2.GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL`
and :data:`~pogles.gles2.GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE` are
set to the default values 0 and
:data:`~pogles.gles2.GL_TEXTURE_CUBE_MAP_POSITIVE_X`, respectively.  Any
previous attachment to the *attachment* logical buffer of the currently bound
framebuffer object is broken.

If *renderbuffer* is 0, the current image, if any, attached to the *attachment*
logical buffer of the currently bound framebuffer object is detached.  The
value of :data:`~pogles.gles2.GL_FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE` is set to
:data:`~pogles.gles2.GL_NONE`.  The value of
:data:`~pogles.gles2.GL_FRAMEBUFFER_ATTACHMENT_OBJECT_NAME` is set to 0.
:data:`~pogles.gles2.GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL` and
:data:`~pogles.gles2.GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE` are set
to the default values 0 and
:data:`~pogles.gles2.GL_TEXTURE_CUBE_MAP_POSITIVE_X`, respectively.


Notes
-----

If a renderbuffer object is deleted while its image is attached to the
currently bound framebuffer, then it is as if
:func:`~pogles.gles2.glFramebufferRenderbuffer` had been called with a
*renderbuffer* of 0 for the attachment point to which this image was attached
in the currently bound framebuffer object.  In other words, the renderbuffer
image is detached from the currently bound framebuffer.  Note that the
renderbuffer image is specifically not detached from any non-bound
framebuffers.  Detaching the image from any non-bound framebuffers is the
responsibility of the application.
