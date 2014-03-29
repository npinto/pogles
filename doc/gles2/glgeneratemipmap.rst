:func:`~pogles.gles2.glGenerateMipmap`
======================================

.. function:: pogles.gles2.glGenerateMipmap(target)

    Generate a complete set of mipmaps for a texture object.

    :param target: is the texture target of the active texture unit to which
            the texture object is bound whose mipmaps will be generated.  It
            must be :data:`~pogles.gles2.GL_TEXTURE_2D` or
            :data:`~pogles.gles2.GL_TEXTURE_CUBE_MAP`.
    :type target: int
    :raises: :exc:`~pogles.gles2.GLException`


Description
-----------

:func:`~pogles.gles2.glGenerateMipmap` computes a complete set of mipmap arrays
derived from the zero level array.  Array levels up to and including the 1x1
dimension texture image are replaced with the derived arrays, regardless of
previous contents.  The zero level texture image is left unchanged.

The internal formats of the derived mipmap arrays all match those of the zero
level texture image.  The dimensions of the derived arrays are computed by
halving the width and height of the zero level texture image, then in turn
halving the dimensions of each array level until the 1x1 dimension texture
image is reached.

The contents of the derived arrays are computed by repeated filtered reduction
of the zero level array.  No particular filter algorithm is required, though a
box filter is recommended.  :func:`~pogles.gles2.glHint` may be called to
express a preference for speed or quality of filtering.
