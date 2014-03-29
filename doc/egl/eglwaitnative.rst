:func:`~pogles.egl.eglWaitNative`
=================================

.. function:: pogles.egl.eglWaitNative(engine)

    Complete native execution prior to subsequent GL rendering calls.

    :param engine: is the particular marking engine to be waited on.  It must
            be :data:`~pogles.egl.EGL_CORE_NATIVE_ENGINE`.
    :type engine: int
    :raises: :exc:`~pogles.egl.EGLException`


Description
-----------

Native rendering calls made prior to :func:`~pogles.egl.eglWaitNative` are
guaranteed to be executed before GL rendering calls made after
:func:`~pogles.egl.eglWaitNative`.

:func:`~pogles.egl.eglWaitNative` is ignored if there is no current EGL
rendering context.
