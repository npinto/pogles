:func:`~pogles.egl.eglReleaseTexImage`
======================================

.. function:: pogles.egl.eglReleaseTexImage(display, surface, buffer)

    Release a color buffer that is being used as a texture.

    :param display: is the EGL display.
    :type display: :class:`~pogles.egl.EGLDisplay`
    :param surface: is the EGL surface.
    :type surface: :class:`~pogles.egl.EGLSurface`
    :param buffer: is the texture image data.
    :type buffer: int
    :raises: :exc:`~pogles.egl.EGLException`


Description
-----------

The specified color buffer is released back to the surface.  The surface is
made available for reading and writing when it no longer has any color buffers
bound as textures.


Notes
-----

If the specified color buffer is no longer bound to a texture (e.g. because the
texture object was deleted) then :func:`~pogles.egl.eglReleaseTexImage` has no
effect.  No exception is raised.

The contents of the color buffer are undefined when it is first released.  In
particular, there is no guarantee that the texture image is still present.
However, the contents of other color buffers are unaffected by this call.
Also, the contents of the depth and stencil buffers are not affected by
:func:`~pogles.egl.eglBindTexImage` and :func:`~pogles.egl.eglReleaseTexImage`.

After a color buffer is released from a texture (either explicitly by calling
:func:`~pogles.egl.eglReleaseTexImage` or implicitly by calling a routine such
as :func:`~pogles.gles2.glTexImage2D)`, all texture images that were defined by
the color buffer become NULL (it is as if :func:`~pogles.gles2.glTexImage` was
called with an image of zero width).
