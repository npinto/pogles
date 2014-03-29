:func:`~pogles.gles2.glRenderbufferStorage`
===========================================

.. function:: pogles.gles2.glRenderbufferStorage(target, internalformat, width, height)

    Create and initialize a renderbuffer object's data store.

    :param target: is the renderbuffer target.  It must be
            :data:`~pogles.gles2.GL_RENDERBUFFER`.
    :type target: int
    :param internalformat: is the color-renderable, depth-renderable, or
            stencil-renderable format of the renderbuffer.  It must be
            :data:`~pogles.gles2.GL_RGBA4`, :data:`~pogles.gles2.GL_RGB565`,
            :data:`~pogles.gles2.GL_RGB5_A1`,
            :data:`~pogles.gles2.GL_DEPTH_COMPONENT16` or
            :data:`~pogles.gles2.GL_STENCIL_INDEX8`.
    :type internalformat: int
    :param width: is the width of the renderbuffer in pixels.
    :type width: int
    :param height: is the height of the renderbuffer in pixels.
    :type height: int
    :raises: :exc:`~pogles.gles2.GLException`


Description
-----------

:func:`~pogles.gles2.glRenderbufferStorage` establishes the data storage,
format and dimensions of a renderbuffer object's image.  Any existing data
store for the renderbuffer is deleted and the contents of the new data store
are undefined.

An implementation may vary its allocation of internal component resolution
based on any :func:`~pogles.gles2.glRenderbufferStorage` parameter (except
*target*), but the allocation and chosen internal format must not be a function
of any other state and cannot be changed once they are established.  The actual
resolution in bits of each component of the allocated image can be queried with
:func:`~pogles.gles2.glGetRenderbufferParameteriv`.
