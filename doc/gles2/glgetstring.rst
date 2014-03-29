:func:`~pogles.gles2.glGetString`
=================================

.. function:: pogles.gles2.glGetString(name) -> value

    Return a string describing the current GL connection.

    :param name: is the name and must be one of
            :data:`~pogles.gles2.GL_VENDOR`, :data:`~pogles.gles2.GL_RENDERER`,
            :data:`~pogles.gles2.GL_VERSION`,
            :data:`~pogles.gles2.GL_SHADING_LANGUAGE_VERSION` or
            :data:`~pogles.gles2.GL_EXTENSIONS`.
    :type name: int
    :raises: :exc:`~pogles.gles2.GLException`
    :return: The value.


Description
-----------

:func:`~pogles.gles2.glGetString` returns a string describing some aspect of
the current GL connection.  *name* can be one of the following:

:data:`~pogles.gles2.GL_VENDOR`
    Returns the company responsible for this GL implementation.  This name does
    not change from release to release.

:data:`~pogles.gles2.GL_RENDERER`
    Returns the name of the renderer.  This name is typically specific to a
    particular configuration of a hardware platform.  It does not change from
    release to release.

:data:`~pogles.gles2.GL_VERSION`
    Returns a version or release number of the form
    ``OpenGL ES <version number> <vendor-specific information>``.

:data:`~pogles.gles2.GL_SHADING_LANGUAGE_VERSION`
    Returns a version or release number for the shading language of the form
    ``OpenGL ES GLSL ES <version number> <vendor-specific information>``.

:data:`~pogles.gles2.GL_EXTENSIONS`
    Returns a space-separated list of supported extensions to GL.

Because the GL does not include queries for the performance characteristics of
an implementation, some applications are written to recognize known platforms
and modify their GL usage based on known performance characteristics of these
platforms.  Strings :data:`~pogles.gles2.GL_VENDOR` and
:data:`~pogles.gles2.GL_RENDERER` together uniquely specify a platform.  They
do not change from release to release and should be used by
platform-recognition algorithms.

Some applications want to make use of features that are not part of the
standard GL.  These features may be implemented as extensions to the standard
GL.  The :data:`~pogles.gles2.GL_EXTENSIONS` string is a space-separated list
of supported GL extensions.  (Extension names never contain a space character.)


Notes
-----

The client and server may support different versions or extensions.
:func:`~pogles.gles2.glGetString` always returns a compatible version number or
list of extensions.  The release number always describes the server.
