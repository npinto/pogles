:func:`~pogles.egl.eglReleaseThread`
====================================

.. function:: pogles.egl.eglReleaseThread()

    Release EGL per-thread state.

    :raises: :exc:`~pogles.egl.EGLException`


Description
-----------

:func:`~pogles.egl.eglReleaseThread` returns the EGL to its state at thread
initialization, releasing all per-thread state including the error status
returned by :func:`~pogles.egl.eglGetError`, the currently bound rendering API
defined by :func:`~pogles.egl.eglBindAPI`, and the current contexts for each
supported client API.  The overhead of maintaining this state may be
objectionable in applications which create and destroy many threads, but only
call EGL or client APIs in a few of those threads at any given time.

The following actions are taken:

- For each client API supported by EGL, if there is a currently bound context,
  that context is released.  This is equivalent to calling
  :func:`~pogles.egl.eglMakeCurrent` with *context*, *draw* and *read* set to
  ``None`` (see section 3.7.3).

- The current rendering API is reset to its value at thread initialization (see
  :func:`~pogles.egl.eglBindAPI`).

- Any additional implementation-dependent per-thread state maintained by EGL is
  marked for deletion as soon as possible.

:func:`~pogles.egl.eglReleaseThread` may be called in any thread at any time,
and may be called more than once in a single thread.  The initialization status
of EGL (see section 3.2) is not affected by releasing the thread; only
per-thread state is affected.

Resources explicitly allocated by calls to EGL, such as contexts, surfaces, and
configuration lists, are not affected by :func:`~pogles.egl.eglReleaseThread`.
Such resources belong not to the thread, but to the EGL implementation as a
whole.


Notes
-----

:func:`~pogles.egl.eglReleaseThread` is supported only if the EGL version is
1.2 or greater.

Applications may call other EGL routines from a thread following
:func:`~pogles.egl.eglReleaseThread`, but any such call may reallocate the EGL
state previously released.  In particular, calling
:func:`~pogles.egl.eglGetError` immediately following a successful call to
:func:`~pogles.egl.eglReleaseThread` will return
:data:`~pogles.egl.EGL_SUCCESS`, but will also result in reallocating
per-thread state.
