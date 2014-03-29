:func:`~pogles.egl.eglCreateWindowSurface`
==========================================

.. function:: pogles.egl.eglCreateWindowSurface(display, config, window, attrib_list) -> surface

    Create a new EGL window surface.

    :param display: is the EGL display.
    :type display: :class:`~pogles.egl.EGLDisplay`
    :param config: is the EGL frame buffer configuration that defines the frame
            buffer resource available to the surface.
    :type config: :class:`~pogles.egl.EGLConfig`
    :param window: is the EGL native window.
    :type window: :class:`~pogles.egl.EGLNativeWindowType`
    :param attrib_list: is the list of window surface attributes.
    :type attrib_list: list of int
    :raises: :exc:`~pogles.egl.EGLException`
    :return:
        The :class:`~pogles.egl.EGLSurface` surface.


Description
-----------

:func:`~pogles.egl.eglCreateWindowSurface` creates an EGL window surface and
returns its handle.

Surface attributes are specified as a list of attribute-value pairs.  Accepted
attributes are:

:data:`~pogles.egl.EGL_RENDER_BUFFER`
    Specifies which buffer should be used for client API rendering to the
    window.  If its value is :data:`~pogles.egl.EGL_SINGLE_BUFFER`, then client
    APIs should render directly into the visible window.  If its value is
    :data:`~pogles.egl.EGL_BACK_BUFFER`, then client APIs should render into
    the back buffer.  The default value of
    :data:`~pogles.egl.EGL_RENDER_BUFFER` is
    :data:`~pogles.egl.EGL_BACK_BUFFER`.

    Client APIs may not be able to respect the requested rendering buffer.  To
    determine the actual buffer being rendered to by a context, call
    :func:`~pogles.egl.eglQueryContext`.

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

Any EGL rendering context that was created with respect to *config* can be used
to render into the surface.  Use :func:`~pogles.egl.eglMakeCurrent` to attach
an EGL rendering context to the surface.

Use :func:`~pogles.egl.eglQuerySurface` to retrieve the ID of *config*.

Use :func:`~pogles.egl.eglDestroySurface` to destroy the surface.


Notes
-----

Attributes :data:`~pogles.egl.EGL_RENDER_BUFFER`,
:data:`~pogles.egl.EGL_VG_ALPHA_FORMAT` and
:data:`~pogles.egl.EGL_VG_COLORSPACE`, and the corresponding attribute values,
are supported only if the EGL version is 1.2 or greater.

The :data:`~pogles.egl.EGL_VG_ALPHA_FORMAT` and
:data:`~pogles.egl.EGL_VG_COLORSPACE` attributes are used only by OpenVG.  EGL
itself, and other client APIs such as OpenGL and OpenGL ES, do not distinguish
multiple colorspace models.  Refer to section 11.2 of the OpenVG 1.0
specification for more information.  The native window system's use and
interpretation of alpha values is outside the scope of EGL, although the
preferred behavior is for the window system to ignore the value of
:data:`~pogles.egl.EGL_VG_ALPHA_FORMAT` when compositing window surfaces.
