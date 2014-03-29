:func:`~pogles.gles2.glGetFramebufferAttachmentParameteriv`
===========================================================

.. function:: pogles.gles2.glGetFramebufferAttachmentParameteriv(target, attachment, pname) -> (value, ...)

    Return attachment parameters of a framebuffer object.

    :param target: is the target framebuffer object.  It must be
            :data:`~pogles.gles2.GL_FRAMEBUFFER`.
    :type target: int
    :param attachment: is the framebuffer object attachment point.  It must be
            :data:`~pogles.gles2.GL_COLOR_ATTACHMENT0`,
            :data:`~pogles.gles2.GL_DEPTH_ATTACHMENT` or
            :data:`~pogles.gles2.GL_STENCIL_ATTACHMENT`.
    :type attachment: int
    :param pname: is the framebuffer object attachment parameter.  It must be
            :data:`~pogles.gles2.GL_FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE`,
            :data:`~pogles.gles2.GL_FRAMEBUFFER_ATTACHMENT_OBJECT_NAME`,
            :data:`~pogles.gles2.GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL` or
            :data:`~pogles.gles2.GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE`.
    :type pname: int
    :raises: :exc:`~pogles.gles2.GLException`
    :return: A tuple of the parameter's values.


Description
-----------

:func:`~pogles.gles2.glGetFramebufferAttachmentParameteriv` returns a tuple of
the values of a selected attachment parameter of the attachpoint point
*attachment* of the currently bound framebuffer object.

*pname* names a specific framebuffer object attachment parameter, as follows:

:data:`~pogles.gles2.GL_FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE`
    Returns a 1-tuple, the type of object which contains the attached image,
    either :data:`~pogles.gles2.GL_RENDERBUFFER`,
    :data:`~pogles.gles2.GL_TEXTURE` or, if no image is attached,
    :data:`~pogles.gles2.GL_NONE`.  The initial value is
    :data:`~pogles.gles2.GL_NONE`.

:data:`~pogles.gles2.GL_FRAMEBUFFER_ATTACHMENT_OBJECT_NAME`
    Returns a 1-tuple.  If the value of
    :data:`~pogles.gles2.GL_FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE` is
    :data:`~pogles.gles2.GL_RENDERBUFFER`, the returned value is the name of
    the renderbuffer object which contains the attached image.  If the value of
    :data:`~pogles.gles2.GL_FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE` is
    :data:`~pogles.gles2.GL_TEXTURE`, the returned value is the name of the
    texture object which contains the attached image.  The initial value is
    ``(0, )``.

:data:`~pogles.gles2.GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL`
    Returns a 1-tuple.  If the value of
    :data:`~pogles.gles2.GL_FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE` is
    :data:`~pogles.gles2.GL_TEXTURE`, the returned value is the mipmap level of
    the texture object which contains the attached image.  The initial value is
    ``(0, )``.

:data:`~pogles.gles2.GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE`
    Returns a 1-tuple.  If the value of
    :data:`~pogles.gles2.GL_FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE` is
    :data:`~pogles.gles2.GL_TEXTURE` and
    :data:`~pogles.gles2.GL_FRAMEBUFFER_ATTACHMENT_OBJECT_NAME` is the name of
    a cube-map texture, the returned value is the cube map face of the cube-map
    texture object which contains the attached image.  If the attached image is
    from a texture object but not a cube-map, the returned value is 0.  The
    initial value is :data:`~pogles.gles2.GL_TEXTURE_CUBE_MAP_POSITIVE_X`.
