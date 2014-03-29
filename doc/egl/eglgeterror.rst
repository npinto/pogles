:func:`~pogles.egl.eglGetError`
===============================

.. function:: pogles.egl.eglGetError() -> error flag

    Return error information.

    :return: The error flag.


Description
-----------

:func:`~pogles.egl.eglGetError` returns the error of the last called EGL
function in the current thread.  Initially, the error is set to
:data:`~pogles.egl.EGL_SUCCESS`.

The following errors are currently defined:

:data:`~pogles.egl.EGL_SUCCESS`
    The last function succeeded without error.

:data:`~pogles.egl.EGL_NOT_INITIALIZED`
    EGL is not initialized, or could not be initialized, for the specified EGL
    display connection.

:data:`~pogles.egl.EGL_BAD_ACCESS`
    EGL cannot access a requested resource (for example a context is bound in
    another thread).

:data:`~pogles.egl.EGL_BAD_ALLOC`
    EGL failed to allocate resources for the requested operation.

:data:`~pogles.egl.EGL_BAD_ATTRIBUTE`
    An unrecognized attribute or attribute value was passed in the attribute
    list.

:data:`~pogles.egl.EGL_BAD_CONTEXT`
    An :class:`~pogles.egl.EGLContext` argument does not name a valid EGL
    rendering context.

:data:`~pogles.egl.EGL_BAD_CONFIG`
    An :class:`~pogles.egl.EGLConfig` argument does not name a valid EGL frame
    buffer configuration.

:data:`~pogles.egl.EGL_BAD_CURRENT_SURFACE`
    The current surface of the calling thread is a window, pixel buffer or
    pixmap that is no longer valid.

:data:`~pogles.egl.EGL_BAD_DISPLAY`
    An :class:`~pogles.egl.EGLDisplay` argument does not name a valid EGL
    display connection.

:data:`~pogles.egl.EGL_BAD_SURFACE`
    An :class:`~pogles.egl.EGLSurface` argument does not name a valid surface
    (window, pixel buffer or pixmap) configured for GL rendering.

:data:`~pogles.egl.EGL_BAD_MATCH`
    Arguments are inconsistent (for example, a valid context requires buffers
    not supplied by a valid surface).

:data:`~pogles.egl.EGL_BAD_PARAMETER`
    One or more argument values are invalid.

:data:`~pogles.egl.EGL_BAD_NATIVE_PIXMAP`
    A ``NativePixmapType`` argument does not refer to a valid native pixmap.

:data:`~pogles.egl.EGL_BAD_NATIVE_WINDOW`
    A ``NativeWindowType`` argument does not refer to a valid native window.

:data:`~pogles.egl.EGL_CONTEXT_LOST`
    A power management event has occurred.  The application must destroy all
    contexts and reinitialise OpenGL ES state and objects to continue
    rendering.
