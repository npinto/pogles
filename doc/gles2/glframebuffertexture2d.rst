:func:`~pogles.gles2.glFramebufferTexture2D`
============================================

.. function:: pogles.gles2.glFramebufferTexture2D(target, attachment, textarget, texture, level)

    Attach a texture image to a framebuffer object.

    :param target: is the framebuffer target.  It must be
            :data:`~pogles.gles2.GL_FRAMEBUFFER`.
    :type target: int
    :param attachment: is the attachment point to which an image from texture
            should be attached.  It must be
            :data:`~pogles.gles2.GL_COLOR_ATTACHMENT0`,
            :data:`~pogles.gles2.GL_DEPTH_ATTACHMENT` or
            :data:`~pogles.gles2.GL_STENCIL_ATTACHMENT`.
    :type attachment: int
    :param textarget: is the texture target.  It must be
            :data:`~pogles.gles2.GL_TEXTURE_2D`,
            :data:`~pogles.gles2.GL_TEXTURE_CUBE_MAP_POSITIVE_X`,
            :data:`~pogles.gles2.GL_TEXTURE_CUBE_MAP_NEGATIVE_X`,
            :data:`~pogles.gles2.GL_TEXTURE_CUBE_MAP_POSITIVE_Y`,
            :data:`~pogles.gles2.GL_TEXTURE_CUBE_MAP_NEGATIVE_Y`,
            :data:`~pogles.gles2.GL_TEXTURE_CUBE_MAP_POSITIVE_Z` or
            :data:`~pogles.gles2.GL_TEXTURE_CUBE_MAP_NEGATIVE_Z`.
    :type textarget: int
    :param texture: is the texture object whose image is to be attached.
    :type texture: int
    :param level: is the mipmap level of the texture image to be attached,
            which must be 0.
    :type level: int
    :raises: :exc:`~pogles.gles2.GLException`


Description
-----------

:func:`~pogles.gles2.glFramebufferTexture2D` attaches the texture image
specified by *texture* and *level* as one of the logical buffers of the
currently bound framebuffer object.  *attachment* specifies whether the texture
image should be attached to the framebuffer object's color, depth, or stencil
buffer.  A texture image may not be attached to the default framebuffer object
name 0.

If *texture* is not 0, the value of
:data:`~pogles.gles2.GL_FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE` for the specified
attachment point is set to :data:`~pogles.gles2.GL_TEXTURE`, the value of
:data:`~pogles.gles2.GL_FRAMEBUFFER_ATTACHMENT_OBJECT_NAME` is set to
*texture*, and the value of
:data:`~pogles.gles2.GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL` is set to
*level*.  If *texture* is a cube map texture, the value of
:data:`~pogles.gles2.GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE` is set to
*textarget*; otherwise it is set to the default value
:data:`~pogles.gles2.GL_TEXTURE_CUBE_MAP_POSITIVE_X`.  Any previous attachment
to the *attachment* logical buffer of the currently bound framebuffer object is
broken.

If *texture* is 0, the current image, if any, attached to the *attachment*
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

Special precautions need to be taken to avoid attaching a texture image to the
currently bound framebuffer while the texture object is currently bound and
potentially sampled by the current vertex or fragment shader.  Doing so could
lead to the creation of a "feedback loop" between the writing of pixels by
rendering operations and the simultaneous reading of those same pixels when
used as texels in the currently bound texture.  In this scenario, the
framebuffer will be considered framebuffer complete, but the values of
fragments rendered while in this state will be undefined.  The values of
texture samples may be undefined as well.

If a texture object is deleted while its image is attached to the currently
bound framebuffer, then it is as if
:func:`~pogles.gles2.glFramebufferTexture2D` had been called with a *texture*
of 0 for the attachment point to which this image was attached in the currently
bound framebuffer object.  In other words, the texture image is detached from
the currently bound framebuffer.  Note that the texture image is specifically
not detached from any non-bound framebuffers.  Detaching the image from any
non-bound framebuffers is the responsibility of the application.
