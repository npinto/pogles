:func:`~pogles.egl.eglQuerySurface`
===================================

.. function:: pogles.egl.eglQuerySurface(display, surface, attribute) -> value

    Return EGL surface information.

    :param display: is the EGL display.
    :type display: :class:`~pogles.egl.EGLDisplay`
    :param surface: is the EGL surface to query.
    :type surface: :class:`~pogles.egl.EGLSurface`
    :param attribute: is the EGL surface attribute to be returned.
    :type attribute: int
    :raises: :exc:`~pogles.egl.EGLException`
    :return: The requested value.


Description
-----------

:func:`~pogles.egl.eglQuerySurface` returns the value of *attribute* for
*surface*.  *attribute* can be one of the following:

:data:`~pogles.egl.EGL_CONFIG_ID`
    Returns the ID of the EGL frame buffer configuration with respect to which
    the surface was created.

:data:`~pogles.egl.EGL_HEIGHT`
    Returns the height of the surface in pixels.

:data:`~pogles.egl.EGL_HORIZONTAL_RESOLUTION`
    Returns the horizontal dot pitch of the display on which a window surface
    is visible.  The value returned is equal to the actual dot pitch, in
    pixels/meter, multiplied by the constant value
    :data:`~pogles.egl.EGL_DISPLAY_SCALING`.

:data:`~pogles.egl.EGL_LARGEST_PBUFFER`
    Returns the same attribute value specified when the surface was created
    with :func:`~pogles.egl.eglCreatePbufferSurface`.  For a window or pixmap
    surface, the value is undefined.

:data:`~pogles.egl.EGL_MIPMAP_LEVEL`
    Returns which level of the mipmap to render to, if texture has mipmaps.

:data:`~pogles.egl.EGL_MIPMAP_TEXTURE`
    Returns ``True`` if texture has mipmaps, ``False`` otherwise.

:data:`~pogles.egl.EGL_MULTISAMPLE_RESOLVE`
    Returns the filter used when resolving the multisample buffer.  The filter
    may be either :data:`~pogles.egl.EGL_MULTISAMPLE_RESOLVE_DEFAULT` or
    :data:`~pogles.egl.EGL_MULTISAMPLE_RESOLVE_BOX`, as described for
    :func:`~pogles.egl.eglSurfaceAttrib`.

:data:`~pogles.egl.EGL_PIXEL_ASPECT_RATIO`
    Returns the aspect ratio of an individual pixel (the ratio of a pixel's
    width to its height).  The value returned is equal to the actual aspect
    ratio multiplied by the constant value
    :data:`~pogles.egl.EGL_DISPLAY_SCALING`.

:data:`~pogles.egl.EGL_RENDER_BUFFER`
    Returns the buffer which client API rendering is requested to use.  For a
    window surface, this is the same attribute value specified when the surface
    was created.  For a pbuffer surface, it is always
    :data:`~pogles.egl.EGL_BACK_BUFFER`.  For a pixmap surface, it is always
    :data:`~pogles.egl.EGL_SINGLE_BUFFER`.  To determine the actual buffer
    being rendered to by a context, call :func:`~pogles.egl.eglQueryContext`.

:data:`~pogles.egl.EGL_SWAP_BEHAVIOR`
    Returns the effect on the color buffer when posting a surface with
    :func:`~pogles.egl.eglSwapBuffers`.  Swap behavior may be either
    :data:`~pogles.egl.EGL_BUFFER_PRESERVED` or
    :data:`~pogles.egl.EGL_BUFFER_DESTROYED`, as described for
    :func:`~pogles.egl.eglSurfaceAttrib`.

:data:`~pogles.egl.EGL_TEXTURE_FORMAT`
    Returns format of texture.  Possible values are
    :data:`~pogles.egl.EGL_NO_TEXTURE`, :data:`~pogles.egl.EGL_TEXTURE_RGB` and
    :data:`~pogles.egl.EGL_TEXTURE_RGBA`.

:data:`~pogles.egl.EGL_TEXTURE_TARGET`
    Returns type of texture.  Possible values are
    :data:`~pogles.egl.EGL_NO_TEXTURE` or :data:`~pogles.egl.EGL_TEXTURE_2D`.

:data:`~pogles.egl.EGL_VERTICAL_RESOLUTION`
    Returns the vertical dot pitch of the display on which a window surface is
    visible.  The value returned is equal to the actual dot pitch, in
    pixels/meter, multiplied by the constant value
    :data:`~pogles.egl.EGL_DISPLAY_SCALING`.

:data:`~pogles.egl.EGL_WIDTH`
    Returns the width of the surface in pixels.


Notes
-----

Attribute :data:`~pogles.egl.EGL_MULTISAMPLE_RESOLVE` is supported only if the
EGL version is 1.4 or greater.

Attributes :data:`~pogles.egl.EGL_DISPLAY_SCALING`,
:data:`~pogles.egl.EGL_HORIZONTAL_RESOLUTION`,
:data:`~pogles.egl.EGL_PIXEL_ASPECT_RATIO`,
:data:`~pogles.egl.EGL_RENDER_BUFFER`, :data:`~pogles.egl.EGL_SWAP_BEHAVIOR`
and :data:`~pogles.egl.EGL_VERTICAL_RESOLUTION` are supported only if the EGL
version is 1.2 or greater.

Querying attributes :data:`~pogles.egl.EGL_TEXTURE_FORMAT`,
:data:`~pogles.egl.EGL_TEXTURE_TARGET`, :data:`~pogles.egl.EGL_MIPMAP_TEXTURE`
or :data:`~pogles.egl.EGL_MIPMAP_LEVEL` for a non-pbuffer surface is not an
error, but an undefined value is returned.

:data:`~pogles.egl.EGL_DISPLAY_SCALING` is the constant value 10000.  Floating
point values such as resolution and pixel aspect ratio are scaled by this value
before being returned as integers so that sufficient precision to be meaningful
will be retained in the returned value.

For an offscreen (pbuffer or pixmap) surface, or a surface whose pixel dot
pitch or aspect ratio are unknown, querying
:data:`~pogles.egl.EGL_HORIZONTAL_RESOLUTION`,
:data:`~pogles.egl.EGL_PIXEL_ASPECT_RATIO` or
:data:`~pogles.egl.EGL_VERTICAL_RESOLUTION` will return the constant value
:data:`~pogles.egl.EGL_UNKNOWN`.
