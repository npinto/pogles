:func:`~pogles.egl.eglBindTexImage`
===================================

.. function:: pogles.egl.eglBindTexImage(display, surface, buffer)

    Define a two-dimensional texture image.

    :param display: is the EGL display.
    :type display: :class:`~pogles.egl.EGLDisplay`
    :param surface: is the EGL surface.
    :type surface: :class:`~pogles.egl.EGLSurface`
    :param buffer: is the texture image data.
    :type buffer: int
    :raises: :exc:`~pogles.egl.EGLException`


Description
-----------

The texture image consists of the image data in *buffer* for the specified
surface, and need not be copied.

The texture target, the texture format and the size of the texture components
are derived from attributes of the specified surface, which must be a pbuffer
supporting one of the :data:`~pogles.egl.EGL_BIND_TO_TEXTURE_RGB` or
:data:`~pogles.egl.EGL_BIND_TO_TEXTURE_RGBA` attributes.

The pbuffer attribute :data:`~pogles.egl.EGL_TEXTURE_FORMAT` determines the
base internal format of the texture.

The texture target is derived from the :data:`~pogles.egl.EGL_TEXTURE_TARGET`
attribute of surface.  If the attribute value is
:data:`~pogles.egl.EGL_TEXTURE_2D`, then *buffer* defines a texture for the
two-dimensional texture object which is bound to the current context
(hereafter referred to as the current texture object).

If *display* and *surface* are the display and surface for the calling thread's
current context, :func:`~pogles.egl.eglBindTexImage` performs an implicit
:func:`~pogles.gles2.glFlush`.  For other surfaces,
:func:`~pogles.egl.eglBindTexImage` waits for all effects from previously
issued OpenGL ES commands drawing to the surface to complete before defining
the texture image, as though :func:`~pogles.gles2.glFinish` were called on the
last context to which that surface were bound.

After :func:`~pogles.egl.eglBindTexImage` is called, the specified surface is
no longer available for reading or writing.  Any read operation, such as
:func:`~pogles.gles2.glReadPixels` or :func:`~pogles.egl.eglCopyBuffers`, which
reads values from any of the surface's color buffers or ancillary buffers will
produce indeterminate results.  In addition, draw operations that are done to
the surface before its color buffer is released from the texture produce
indeterminate results.  Specifically, if the surface is current to a context
and thread then rendering commands will be processed and the context state will
be updated, but the surface may or may not be written.

Texture mipmap levels are automatically generated when all of the following
conditions are met while calling :func:`~pogles.egl.eglBindTexImage`:

- The :data:`~pogles.egl.EGL_MIPMAP_TEXTURE` attribute of the pbuffer being
  bound is ``True``.

- The OpenGL ES texture parameter :data:`~pogles.gles2.GL_GENERATE_MIPMAP` is
  ``True`` for the currently bound texture.

- The value of the :data:`~pogles.egl.EGL_MIPMAP_LEVEL` attribute of the
  pbuffer being bound is equal to the value of the texture parameter
  :data:`~pogles.egl.GL_TEXTURE_BASE_LEVEL`.  In this case, additional mipmap
  levels are generated as described in section 3.8 of the OpenGL ES 1.1
  Specification.


Notes
-----

:func:`~pogles.egl.eglSwapBuffers` has no effect if it is called on a bound
surface.

Any existing images associated with the different mipmap levels of the texture
object are freed (it is as if :func:`~pogles.gles2.glTexImage` was called with
an image of zero width).

The color buffer is bound to a texture object.  If the texture object is shared
between contexts, then the color buffer is also shared.  If a texture object is
deleted before :func:`~pogles.egl.eglReleaseTexImage` is called, then the color
buffer is released and the surface is made available for reading and writing.

It is not an error to call :func:`~pogles.gles2.glTexImage2D` or
:func:`~pogles.gles2.glCopyTexImage2D` to replace an image of a texture object
that has a color buffer bound to it.  However, these calls will cause the color
buffer to be released back to the surface and new memory will be allocated for
the texture.  Note that the color buffer is released even if the image that is
being defined is a mipmap level that was not defined by the color buffer.

:func:`~pogles.egl.eglBindTexImage` is ignored if there is no current rendering
context.
