:func:`~pogles.gles2.glClear`
=============================

.. function:: pogles.gles2.glClear(mask)

    Clear buffers to preset values.

    :param mask: is the bitwise OR of masks that indicate the buffers to be
            cleared.  The three masks are
            :data:`~pogles.gles2.GL_COLOR_BUFFER_BIT`,
            :data:`~pogles.gles2.GL_DEPTH_BUFFER_BIT` and
            :data:`~pogles.gles2.GL_STENCIL_BUFFER_BIT`.
    :type mask: int
    :raises: :exc:`~pogles.gles2.GLException`


Description
-----------

:func:`~pogles.gles2.glClear` sets the bitplane area of the window to values
previously selected by :func:`~pogles.gles2.glClearColor`,
:func:`~pogles.gles2.glClearDepthf` and :func:`~pogles.gles2.glClearStencil`.

The pixel ownership test, the scissor test, dithering, and the buffer
writemasks affect the operation of :func:`~pogles.gles2.glClear`.  The scissor
box bounds the cleared region.  Blend function, stenciling, fragment shading
and depth-buffering are ignored by :func:`~pogles.gles2.glClear`.

:func:`~pogles.gles2.glClear` takes a single argument that is the bitwise OR of
several values indicating which buffer is to be cleared.

The values are as follows:

:data:`~pogles.gles2.GL_COLOR_BUFFER_BIT`
    Indicates the buffers currently enabled for color writing.

:data:`~pogles.gles2.GL_DEPTH_BUFFER_BIT`
    Indicates the depth buffer.

:data:`~pogles.gles2.GL_STENCIL_BUFFER_BIT`
    Indicates the stencil buffer.

The value to which each buffer is cleared depends on the setting of the clear
value for that buffer.


Notes
-----

If a buffer is not present, then a :func:`~pogles.gles2.glClear` directed at
that buffer has no effect.
