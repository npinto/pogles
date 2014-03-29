:func:`~pogles.egl.eglCreatePbufferSurface`
===========================================

.. function:: pogles.egl.eglCreatePbufferSurface(display, config, attrib_list) -> surface

    Create a new EGL pixel buffer surface.

    :param display: is the EGL display.
    :type display: :class:`~pogles.egl.EGLDisplay`
    :param config: is the EGL frame buffer configuration that defines the frame
            buffer resource available to the surface.
    :type config: :class:`~pogles.egl.EGLConfig`
    :param attrib_list: is the list of pixel buffer surface attributes.
    :type attrib_list: list of int
    :raises: :exc:`~pogles.egl.EGLException`
    :return:
        The :class:`~pogles.egl.EGLSurface` surface.


Description
-----------

:func:`~pogles.egl.eglCreatePbufferSurface` creates an off-screen pixel buffer
surface and returns its handle.

Surface attributes are specified as a list of attribute-value pairs.  Accepted
attributes are:

:data:`~pogles.egl.EGL_HEIGHT`
    Specifies the required height of the pixel buffer surface.  The default
    value is 0.

:data:`~pogles.egl.EGL_LARGEST_PBUFFER`
    Requests the largest available pixel buffer surface when the allocation
    would otherwise fail.  Use :func:`~pogles.egl.eglQuerySurface` to retrieve
    the dimensions of the allocated pixel buffer.  The default value is
    ``False``.

:data:`~pogles.egl.EGL_MIPMAP_TEXTURE`
    Specifies whether storage for mipmaps should be allocated.  Space for
    mipmaps will be set aside if the attribute value is ``True`` and
    :data:`~pogles.egl.EGL_TEXTURE_FORMAT` is not
    :data:`~pogles.egl.EGL_NO_TEXTURE`.  The default value is ``False``.

:data:`~pogles.egl.EGL_TEXTURE_FORMAT`
    Specifies the format of the texture that will be created when a pbuffer is
    bound to a texture map.  Possible values are
    :data:`~pogles.egl.EGL_NO_TEXTURE`, :data:`~pogles.egl.EGL_TEXTURE_RGB`,
    and :data:`~pogles.egl.EGL_TEXTURE_RGBA`.  The default value is
    :data:`~pogles.egl.EGL_NO_TEXTURE`.

:data:`~pogles.egl.EGL_TEXTURE_TARGET`
    Specifies the target for the texture that will be created when the pbuffer
    is created with a texture format of :data:`~pogles.egl.EGL_TEXTURE_RGB` or
    :data:`~pogles.egl.EGL_TEXTURE_RGBA`.  Possible values are
    :data:`~pogles.egl.EGL_NO_TEXTURE`, or :data:`~pogles.egl.EGL_TEXTURE_2D`.
    The default value is :data:`~pogles.egl.EGL_NO_TEXTURE`.

:data:`~pogles.egl.EGL_VG_ALPHA_FORMAT`
    Specifies how alpha values are interpreted by OpenVG when rendering to the
    surface.  If its value is :data:`~pogles.egl.EGL_VG_ALPHA_FORMAT_NONPRE`,
    then alpha values are not premultipled.  If its value is
    :data:`~pogles.egl.EGL_VG_ALPHA_FORMAT_PRE`, then alpha values are
    premultiplied.  The default value of
    :data:`~pogles.egl.EGL_VG_ALPHA_FORMAT` is
    :data:`~pogles.egl.EGL_VG_ALPHA_FORMAT_NONPRE`.

:data:`~pogles.egl.EGL_VG_COLORSPACE`
    Specifies the color space used by OpenVG when rendering to the surface.  If
    its value is :data:`~pogles.egl.EGL_VG_COLORSPACE_sRGB`, then a non-linear,
    perceptually uniform color space is assumed, with a corresponding
    ``VGImageFormat`` of form ``VG_s*``.  If its value is
    :data:`~pogles.egl.EGL_VG_COLORSPACE_LINEAR`, then a linear color space is
    assumed, with a corresponding ``VGImageFormat`` of form ``VG_l*``.  The
    default value of :data:`~pogles.egl.EGL_VG_COLORSPACE` is
    :data:`~pogles.egl.EGL_VG_COLORSPACE_sRGB`.

:data:`~pogles.egl.EGL_WIDTH`
    Specifies the required width of the pixel buffer surface.  The default
    value is 0.

Any EGL rendering context that was created with respect to *config* can be used
to render into the surface.  Use :func:`~pogles.egl.eglMakeCurrent` to attach
an EGL rendering context to the surface.

Use :func:`~pogles.egl.eglQuerySurface` to retrieve the dimensions of the
allocated pixel buffer surface or the ID of *config*.

Use :func:`~pogles.egl.eglDestroySurface` to destroy the surface.


Notes
-----

Attributes :data:`~pogles.egl.EGL_RENDERABLE_TYPE`,
:data:`~pogles.egl.EGL_VG_ALPHA_FORMAT` and
:data:`~pogles.egl.EGL_VG_COLORSPACE`, and the corresponding attribute values,
are supported only if the EGL version is 1.2 or greater.

If the value of config attribute :data:`~pogles.egl.EGL_TEXTURE_FORMAT` is not
:data:`~pogles.egl.EGL_NO_TEXTURE`, then the pbuffer width and height specify
the size of the level zero texture image

If :data:`~pogles.egl.EGL_LARGEST_PBUFFER` is specified and if the pbuffer will
be used as a texture (i.e. the value of :data:`~pogles.egl.EGL_TEXTURE_TARGET`
is :data:`~pogles.egl.EGL_TEXTURE_2D`, and the value of
:data:`~pogles.egl.EGL_TEXTURE FORMAT` is :data:`~pogles.egl.EGL_TEXTURE_RGB`
or :data:`~pogles.egl.EGL_TEXTURE_RGBA`), then the aspect ratio will be
preserved and the new width and height will be valid sizes for the texture
target (e.g. if the underlying OpenGL ES implementation does not support
non-power-of-two textures, both the width and height will be a power of 2).

The contents of the depth and stencil buffers may not be preserved when
rendering a texture to the pbuffer and switching which image of the texture is
rendered to (e.g. switching from rendering one mipmap level to rendering
another).
