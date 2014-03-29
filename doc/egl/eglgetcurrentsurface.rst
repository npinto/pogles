:func:`~pogles.egl.eglGetCurrentSurface`
========================================

.. function:: pogles.egl.eglGetCurrentSurface(readdraw) -> surface

    Return the read or draw surface for the current EGL rendering context.

    :param readdraw: specifies whether the EGL read or draw surface is to be
            returned.
    :type readdraw: int
    :return: The :class:`~pogles.egl.EGLSurface` surface.


Description
-----------

:func:`~pogles.egl.eglGetCurrentSurface` returns the read or draw surface
attached to the current EGL rendering context, as specified by
:func:`~pogles.egl.eglMakeCurrent`.  If no context is current, ``None`` is
returned.
