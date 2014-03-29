:func:`~pogles.egl.eglGetConfigAttrib`
======================================

.. function:: pogles.egl.eglGetConfigAttrib(display, config, attribute) -> value

    Return information about an EGL frame buffer configuration.

    :param display: is the EGL display.
    :type display: :class:`~pogles.egl.EGLDisplay`
    :param config: is the EGL frame buffer configuration to be queried.
    :type config: :class:`~pogles.egl.EGLConfig`
    :param attribute: is the EGL rendering context attribute to be returned.
    :type attribute: int
    :raises: :exc:`~pogles.egl.EGLException`
    :return: The requested value.


Description
-----------

:func:`~pogles.egl.eglGetConfigAttrib` returns the value of *attribute* for
*config* (config attributes are described in more detail in the
:func:`~pogles.egl.eglChooseConfig` reference page). *attribute* can be one of
the following:

:data:`~pogles.egl.EGL_ALPHA_SIZE`
    Returns the number of bits of alpha stored in the color buffer.

:data:`~pogles.egl.EGL_ALPHA_MASK_SIZE`
    Returns the number of bits in the alpha mask buffer.

:data:`~pogles.egl.EGL_BIND_TO_TEXTURE_RGB`
    Returns ``True`` if color buffers can be bound to an RGB texture, ``False``
    otherwise.

:data:`~pogles.egl.EGL_BIND_TO_TEXTURE_RGBA`
    Returns ``True`` if color buffers can be bound to an RGBA texture,
    ``False`` otherwise.

:data:`~pogles.egl.EGL_BLUE_SIZE`
    Returns the number of bits of blue stored in the color buffer.

:data:`~pogles.egl.EGL_BUFFER_SIZE`
    Returns the depth of the color buffer.  It is the sum of
    :data:`~pogles.egl.EGL_RED_SIZE`, :data:`~pogles.egl.EGL_GREEN_SIZE`,
    :data:`~pogles.egl.EGL_BLUE_SIZE` and :data:`~pogles.egl.EGL_ALPHA_SIZE`.

:data:`~pogles.egl.EGL_COLOR_BUFFER_TYPE`
    Returns the color buffer type.  Possible types are
    :data:`~pogles.egl.EGL_RGB_BUFFER` and
    :data:`~pogles.egl.EGL_LUMINANCE_BUFFER`.

:data:`~pogles.egl.EGL_CONFIG_CAVEAT`
    Returns the caveats for the frame buffer configuration.  Possible caveat
    values are :data:`~pogles.egl.EGL_NONE`,
    :data:`~pogles.egl.EGL_SLOW_CONFIG` and
    :data:`~pogles.egl.EGL_NON_CONFORMANT`.

:data:`~pogles.egl.EGL_CONFIG_ID`
    Returns the ID of the frame buffer configuration.

:data:`~pogles.egl.EGL_CONFORMANT`
    Returns a bitmask indicating which client API contexts created with respect
    to this config are conformant.

:data:`~pogles.egl.EGL_DEPTH_SIZE`
    Returns the number of bits in the depth buffer.

:data:`~pogles.egl.EGL_GREEN_SIZE`
    Returns the number of bits of green stored in the color buffer.

:data:`~pogles.egl.EGL_LEVEL`
    Returns the frame buffer level.  Level zero is the default frame buffer.
    Positive levels correspond to frame buffers that overlay the default buffer
    and negative levels correspond to frame buffers that underlay the default
    buffer.

:data:`~pogles.egl.EGL_LUMINANCE_SIZE`
    Returns the number of bits of luminance stored in the luminance buffer.

:data:`~pogles.egl.EGL_MAX_PBUFFER_WIDTH`
    Returns the maximum width of a pixel buffer surface in pixels.

:data:`~pogles.egl.EGL_MAX_PBUFFER_HEIGHT`
    Returns the maximum height of a pixel buffer surface in pixels.

:data:`~pogles.egl.EGL_MAX_PBUFFER_PIXELS`
    Returns the maximum size of a pixel buffer surface in pixels.

:data:`~pogles.egl.EGL_MAX_SWAP_INTERVAL`
    Returns the maximum value that can be passed to
    :func:`~pogles.egl.eglSwapInterval`.

:data:`~pogles.egl.EGL_MIN_SWAP_INTERVAL`
    Returns the minimum value that can be passed to
    :func:`~pogles.egl.eglSwapInterval`.

:data:`~pogles.egl.EGL_NATIVE_RENDERABLE`
    Returns ``True`` if native rendering APIs can render into the surface,
    ``False`` otherwise.

:data:`~pogles.egl.EGL_NATIVE_VISUAL_ID`
    Returns the ID of the associated native visual.

:data:`~pogles.egl.EGL_NATIVE_VISUAL_TYPE`
    Returns the type of the associated native visual.

:data:`~pogles.egl.EGL_RED_SIZE`
    Returns the number of bits of red stored in the color buffer.

:data:`~pogles.egl.EGL_RENDERABLE_TYPE`
    Returns a bitmask indicating the types of supported client API contexts.

:data:`~pogles.egl.EGL_SAMPLE_BUFFERS`
    Returns the number of multisample buffers.

:data:`~pogles.egl.EGL_SAMPLES`
    Returns the number of samples per pixel.

:data:`~pogles.egl.EGL_STENCIL_SIZE`
    Returns the number of bits in the stencil buffer.

:data:`~pogles.egl.EGL_SURFACE_TYPE`
    Returns a bitmask indicating the types of supported EGL surfaces.

:data:`~pogles.egl.EGL_TRANSPARENT_TYPE`
    Returns the type of supported transparency.  Possible transparency values
    are :data:`~pogles.egl.EGL_NONE` and
    :data:`~pogles.egl.EGL_TRANSPARENT_RGB`.

:data:`~pogles.egl.EGL_TRANSPARENT_RED_VALUE`
    Returns the transparent red value.

:data:`~pogles.egl.EGL_TRANSPARENT_GREEN_VALUE`
    Returns the transparent green value.

:data:`~pogles.egl.EGL_TRANSPARENT_BLUE_VALUE`
    Returns the transparent blue value.


Notes
-----

:func:`~pogles.egl.EGL_CONFORMANT` is supported only if the EGL version is 1.3
or greater.

:data:`~pogles.egl.EGL_ALPHA_MASK_SIZE`,
:data:`~pogles.egl.EGL_COLOR_BUFFER_TYPE`,
:data:`~pogles.egl.EGL_LUMINANCE_SIZE` and
:data:`~pogles.egl.EGL_RENDERABLE_TYPE` are supported only if the EGL version
is 1.2 or greater.

While :data:`~pogles.egl.EGL_MATCH_NATIVE_PIXMAP` can be specified in the
attribute list passed to :func:`~pogles.egl.eglChooseConfig`, it is not an
attribute of the resulting config and cannot be queried using
:func:`~pogles.egl.eglGetConfigAttrib`.
