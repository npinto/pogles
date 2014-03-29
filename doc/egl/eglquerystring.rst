:func:`~pogles.egl.eglQueryString`
==================================

.. function:: pogles.egl.eglQueryString(display, name) -> value

    Return a string describing an EGL display connection.

    :param display: is the EGL display.
    :type display: :class:`~pogles.egl.EGLDisplay`
    :param int name: is the name.
    :raises: :exc:`~pogles.egl.EGLException`
    :return: The requested value.


Description
-----------

:func:`~pogles.egl.eglQueryString` returns a string describing an EGL display
connection.  *name* can be one of the following:

:data:`~pogles.egl.EGL_CLIENT_APIS`
    Returns a string describing which client rendering APIs are supported.  The
    string contains a space-separated list of API names.  The list must include
    at least one of ``OpenGL``, ``OpenGL_ES`` or ``OpenVG``.  These strings
    correspond respectively to values :data:`~pogles.egl.EGL_OPENGL_API`,
    :data:`~pogles.egl.EGL_OPENGL_ES_API` and
    :data:`~pogles.egl.EGL_OPENVG_API` of the :func:`~pogles.egl.eglBindAPI`
    *api* argument.

:data:`~pogles.egl.EGL_VENDOR`
    Returns the company responsible for this EGL implementation.  This name
    does not change from release to release.

:data:`~pogles.egl.EGL_VERSION`
    Returns a version or release number. The :data:`~pogles.egl.EGL_VERSION`
    string is laid out as follows::

        major_version.minor_version vendor_specific_info

:data:`~pogles.egl.EGL_EXTENSIONS`
    Returns a space separated list of supported extensions to EGL.


Notes
-----

:data:`~pogles.egl.EGL_CLIENT_APIS` is supported only if the EGL version is 1.2
or greater.
