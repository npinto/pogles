:func:`~pogles.gles2.glGenTextures`
===================================

.. function:: pogles.gles2.glGenTextures(n) -> textures

    Generate texture names.

    :param n: is the number of texture names to be generated.
    :type n: int
    :raises: :exc:`~pogles.gles2.GLException`
    :return: The list of generated texture names.


Description
-----------

:func:`~pogles.gles2.glGenTextures` returns a list of *n* texture names.  There
is no guarantee that the names form a contiguous set of integers; however, it
is guaranteed that none of the returned names was in use immediately before the
call to :func:`~pogles.gles2.glGenTextures`.

The generated textures have no dimensionality; they assume the dimensionality
of the texture target to which they are first bound (see
:func:`~pogles.gles2.glBindTexture`).

Texture names returned by a call to :func:`~pogles.gles2.glGenTextures` are not
returned by subsequent calls, unless they are first deleted with
:func:`~pogles.gles2.glDeleteTextures`.
