:func:`~pogles.gles2.glBindTexture`
===================================

.. function:: pogles.gles2.glBindTexture(target, texture)

    Bind a named texture to a texturing target.

    :param target: is the target of the active texture unit to which the
            texture is bound.  It must be :data:`~pogles.gles2.GL_TEXTURE_2D`
            or :data:`~pogles.gles2.GL_TEXTURE_CUBE_MAP`.
    :type target: int
    :param texture: is the name of a texture.
    :type texture: int
    :raises: :exc:`~pogles.gles2.GLException`


Description
-----------

:func:`~pogles.gles2.glBindTexture` lets you create or use a named texture.
Calling :func:`~pogles.gles2.glBindTexture` with *target* set to
:data:`~pogles.gles2.GL_TEXTURE_2D` or
:data:`~pogles.gles2.GL_TEXTURE_CUBE_MAP` and *texture* set to the name of the
new texture binds the texture name to the target of the current active texture
unit.  When a texture is bound to a target, the previous binding for that
target is automatically broken.

Texture names are unsigned integers.  The value zero is reserved to represent
the default texture for each texture target.  Texture names and the
corresponding texture contents are local to the shared object space of the
current GL rendering context.

You may use :func:`~pogles.gles2.glGenTextures` to generate a set of new
texture names.

When a texture is first bound, it assumes the specified target.  A texture
first bound to :data:`~pogles.gles2.GL_TEXTURE_2D` becomes a two-dimensional
texture and a texture first bound to :data:`~pogles.gles2.GL_TEXTURE_CUBE_MAP`
becomes a cube-mapped texture.  The state of a two-dimensional texture
immediately after it is first bound is equivalent to the state of the default
:data:`~pogles.gles2.GL_TEXTURE_2D` at GL initialization, and similarly for
cube-mapped textures.

While a texture is bound, GL operations on the target to which it is bound
affect the bound texture, and queries of the target to which it is bound return
state from the bound texture.  In effect, the texture targets become aliases
for the textures currently bound to them, and the texture name zero refers to
the default textures that were bound to them at initialization.

A texture binding created with :func:`~pogles.gles2.glBindTexture` remains
active until a different texture is bound to the same target, or until the
bound texture is deleted with :func:`~pogles.gles2.glDeleteTextures`.

Once created, a named texture may be re-bound to its same original target as
often as needed.  It is usually much faster to use
:func:`~pogles.gles2.glBindTexture` to bind an existing named texture to one of
the texture targets than it is to reload the texture image using
:func:`~pogles.gles2.glTexImage2D`.
