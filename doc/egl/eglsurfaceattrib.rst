:func:`~pogles.egl.eglSurfaceAttrib`
====================================

.. function:: pogles.egl.eglSurfaceAttrib(display, surface, attribute, value)

    Set an EGL surface attribute.

    :param display: is the EGL display.
    :type display: :class:`~pogles.egl.EGLDisplay`
    :param surface: is the EGL surface.
    :type surface: :class:`~pogles.egl.EGLSurface`
    :param attribute: is the EGL surface attribute to set.
    :type attribute: int
    :param value: is the attribute's required value.
    :type value: int
    :raises: :exc:`~pogles.egl.EGLException`


Description
-----------

:func:`~pogles.egl.eglSurfaceAttrib` sets the value of *attribute* for
*surface* to *value*.  *attribute* can be one of the following:

:data:`~pogles.egl.EGL_MIPMAP_LEVEL`
    For mipmap textures, the :data:`~pogles.egl.EGL_MIPMAP_LEVEL` attribute
    indicates which level of the mipmap should be rendered.  If the value of
    this attribute is outside the range of supported mipmap levels, the closest
    valid mipmap level is selected for rendering.  The default value is 0.

:data:`~pogles.egl.EGL_MULTISAMPLE_RESOLVE`
    Specifies the filter to use when resolving the multisample buffer (this may
    occur when swapping or copying the surface, or when changing the client API
    context bound to the surface).  A value of
    :data:`~pogles.egl.EGL_MULTISAMPLE_RESOLVE_DEFAULT` chooses the default
    implementation-defined filtering method, while
    :data:`~pogles.egl.EGL_MULTISAMPLE_RESOLVE_BOX` chooses a one-pixel wide
    box filter placing equal weighting on all multisample values.

    The initial value of :data:`~pogles.egl.EGL_MULTISAMPLE_RESOLVE` is
    :data:`~pogles.egl.EGL_MULTISAMPLE_RESOLVE_DEFAULT`.

:data:`~pogles.egl.EGL_SWAP_BEHAVIOR`
    Specifies the effect on the color buffer of posting a surface with
    :func:`~pogles.egl.eglSwapBuffers`.  A value of
    :data:`~pogles.egl.EGL_BUFFER_PRESERVED` indicates that color buffer
    contents are unaffected, while :data:`~pogles.egl.EGL_BUFFER_DESTROYED`
    indicates that color buffer contents may be destroyed or changed by the
    operation.

    The initial value of :data:`~pogles.egl.EGL_SWAP_BEHAVIOR` is chosen by the
    implementation.


Notes
-----

Attribute :data:`~pogles.egl.EGL_MULTISAMPLE_RESOLVE` is supported only if the
EGL version is 1.4 or greater.

Attribute :data:`~pogles.egl.EGL_SWAP_BEHAVIOR` is supported only if the EGL
version is 1.2 or greater.

If the value of pbuffer attribute :data:`~pogles.egl.EGL_TEXTURE_FORMAT` is
:data:`~pogles.egl.EGL_NO_TEXTURE`, the value of attribute
:data:`~pogles.egl.EGL_TEXTURE_TARGET` is :data:`~pogles.egl.EGL_NO_TEXTURE`,
or surface is not a pbuffer, then attribute
:data:`~pogles.egl.EGL_MIPMAP_LEVEL` may be set, but has no effect.
