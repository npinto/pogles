:func:`~pogles.egl.eglQueryContext`
===================================

.. function:: pogles.egl.eglQueryContext(display, context, attribute) -> value

    Return EGL rendering context information.

    :param display: is the EGL display.
    :type display: :class:`~pogles.egl.EGLDisplay`
    :param context: is the EGL rendering context to query.
    :type context: :class:`~pogles.egl.EGLContext`
    :param attribute: is the EGL rendering context attribute to be returned.
    :type attribute: int
    :raises: :exc:`~pogles.egl.EGLException`
    :return: The requested value.


Description
-----------

:func:`~pogles.egl.eglQueryContext` returns the value of *attribute* for
*context*.  *attribute* can be one of the following:

:data:`~pogles.egl.EGL_CONFIG_ID`
    Returns the ID of the EGL frame buffer configuration with respect to which
    the context was created.

:data:`~pogles.egl.EGL_CONTEXT_CLIENT_TYPE`
    Returns the type of client API which the context supports (one of
    :data:`~pogles.egl.EGL_OPENGL_API`, :data:`~pogles.egl.EGL_OPENGL_ES_API`
    or :data:`~pogles.egl.EGL_OPENVG_API`).

:data:`~pogles.egl.EGL_CONTEXT_CLIENT_VERSION`
    Returns the version of the client API which the context supports, as
    specified at context creation time.  The resulting value is only meaningful
    for an OpenGL ES context.

:data:`~pogles.egl.EGL_RENDER_BUFFER`
    Returns the buffer which client API rendering via the context will use.
    The value returned depends on properties of both the context, and the
    surface to which the context is bound:

    - If the context is bound to a pixmap surface, then
      :data:`~pogles.egl.EGL_SINGLE_BUFFER` will be returned.

    - If the context is bound to a pbuffer surface, then
      :data:`~pogles.egl.EGL_BACK_BUFFER` will be returned.

    - If the context is bound to a window surface, then either
      :data:`~pogles.egl.EGL_BACK_BUFFER` or
      :data:`~pogles.egl.EGL_SINGLE_BUFFER` may be returned.  The value
      returned depends on both the buffer requested by the setting of the
      :data:`~pogles.egl.EGL_RENDER_BUFFER` property of the surface (which may
      be queried by calling :func:`~pogles.egl.eglQuerySurface`), and on the
      client API (not all client APIs support single-buffer rendering to window
      surfaces).

    - If the context is not bound to a surface, such as an OpenGL ES context
      bound to a framebuffer object, then :data:`~pogles.egl.EGL_NONE` will be
      returned.


Notes
-----

Attributes :data:`~pogles.egl.EGL_CONTEXT_CLIENT_TYPE` and
:data:`~pogles.egl.EGL_RENDER_BUFFER` are supported only if the EGL version is
1.2 or greater.

Attribute :data:`~pogles.egl.EGL_CONTEXT_CLIENT_VERSION` is supported only if
the EGL version is 1.3 or greater.
