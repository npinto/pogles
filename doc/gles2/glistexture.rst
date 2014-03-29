:func:`~pogles.gles2.glIsTexture`
=================================

.. function:: pogles.gles2.glIsTexture(texture) -> result

    Determine if a name corresponds to a texture.

    :param texture: is a value that may be the name of a texture.
    :type texture: int
    :return: The bool result.


Description
-----------

:func:`~pogles.gles2.glIsTexture` returns ``True`` if *texture* is currently
the name of a texture.  If *texture* is zero, or is a non-zero value that is
not currently the name of a texture, or if an error occurs,
:func:`~pogles.gles2.glIsTexture` returns ``False``.

A name returned by :func:`~pogles.gles2.glGenTextures`, but not yet associated
with a texture by calling :func:`~pogles.gles2.glBindTexture`, is not the name
of a texture.
