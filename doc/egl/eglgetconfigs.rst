:func:`~pogles.egl.eglGetConfigs`
=================================

.. function:: pogles.egl.eglGetConfigs(display) -> list of configurations

    Return a list of all EGL frame buffer configurations for a display.

    :param display: is the EGL display.
    :type display: :class:`~pogles.egl.EGLDisplay`
    :raises: :exc:`~pogles.egl.EGLException`
    :return: The list of :class:`~pogles.egl.EGLConfig` configurations.


Description
-----------

:func:`~pogles.egl.eglGetConfigs` returns a list of all EGL frame buffer
configurations that are available for the specified display.  The items in the
list can be used in any EGL function that requires an EGL frame buffer
configuration.

Use :func:`~pogles.egl.eglGetConfigAttrib` to retrieve individual attribute
values of a frame buffer configuration.
