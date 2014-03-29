:func:`~pogles.gles2.glCheckFramebufferStatus`
==============================================

.. function:: pogles.gles2.glCheckFramebufferStatus(target) -> status

    Return the framebuffer completeness status of a framebuffer object.

    :param target: is the target framebuffer object.  It must be
            :data:`~pogles.gles2.GL_FRAMEBUFFER`.
    :type target: int
    :raises: :exc:`~pogles.gles2.GLException`
    :return: The completeness status.


Description
-----------

:func:`~pogles.gles2.glCheckFramebufferStatus` returns a symbolic constant that
identifies whether or not the currently bound framebuffer is framebuffer
complete and, if not, which of the rules of framebuffer completeness is
violated.

If the framebuffer is complete, then
:data:`~pogles.gles2.GL_FRAMEBUFFER_COMPLETE` is returned.  If the framebuffer
is not complete, the return values are as follows:

:data:`~pogles.gles2.GL_FRAMEBUFFER_INCOMPLETE_ATTACHMENT`
    Not all framebuffer attachment points are framebuffer attachment complete.
    This means that at least one attachment point with a renderbuffer or
    texture attached has its attached object no longer in existence or has an
    attached image with a width or height of zero, or the color attachment
    point has a non-color-renderable image attached, or the depth attachment
    point has a non-depth-renderable image attached, or the stencil attachment
    point has a non-stencil-renderable image attached.

    Color-renderable formats include :data:`~pogles.gles2.GL_RGBA4`,
    :data:`~pogles.gles2.GL_RGB5_A1` and :data:`~pogles.gles2.GL_RGB565`.
    :data:`~pogles.gles2.GL_DEPTH_COMPONENT16` is the only depth-renderable
    format.  :data:`~pogles.gles2.GL_STENCIL_INDEX8` is the only
    stencil-renderable format.

:data:`~pogles.gles2.GL_FRAMEBUFFER_INCOMPLETE_DIMENSIONS`
    Not all attached images have the same width and height.

:data:`~pogles.gles2.GL_FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT`
    No images are attached to the framebuffer.

:data:`~pogles.gles2.GL_FRAMEBUFFER_UNSUPPORTED`
    The combination of internal formats of the attached images violates an
    implementation-dependent set of restrictions.

If the currently bound framebuffer is not framebuffer complete, then it is an
error to attempt to use the framebuffer for writing or reading.  This means
that rendering commands (:func:`~pogles.gles2.glClear`,
:func:`~pogles.gles2.glDrawArrays` and :func:`~pogles.gles2.glDrawElements`) as
well as commands that read the framebuffer (:func:`~pogles.gles2.glReadPixels`,
:func:`~pogles.gles2.glCopyTexImage2D` and
:func:`~pogles.gles2.glCopyTexSubImage2D`) will generate the error
:data:`~pogles.gles2.GL_INVALID_FRAMEBUFFER_OPERATION` if called while the
framebuffer is not framebuffer complete.


Notes
-----

It is strongly advised, thought not required, that an application call
:func:`~pogles.gles2.glCheckFramebufferStatus` to see if the framebuffer is
complete prior to rendering.  This is because some implementations may not
support rendering to particular combinations of internal formats.  In this
case :data:`~pogles.gles2.GL_FRAMEBUFFER_UNSUPPORTED` is returned.

The default window-system-provided framebuffer is always framebuffer complete,
and thus :data:`~pogles.gles2.GL_FRAMEBUFFER_COMPLETE` is returned when
:data:`~pogles.gles2.GL_FRAMEBUFFER_BINDING` is 0.
