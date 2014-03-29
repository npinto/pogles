:func:`~pogles.gles2.glDeleteTextures`
======================================

.. function:: pogles.gles2.glDeleteTextures(textures)

    Delete named textures.

    :param textures: is a list of textures to be deleted.
    :type textures: list of int
    :raises: :exc:`~pogles.gles2.GLException`


Description
-----------

:func:`~pogles.gles2.glDeleteTextures` deletes textures named by the elements
of the list *textures*.  After a texture is deleted, it has no contents or
dimensionality, and its name is free for reuse (for example by
:func:`~pogles.gles2.glGenTextures`).  If a texture that is currently bound is
deleted, the binding reverts to 0 (the default texture).

:func:`~pogles.gles2.glDeleteTextures` silently ignores names that do not
correspond to existing textures.
