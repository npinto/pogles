:func:`~pogles.gles2.glColorMask`
=================================

.. function:: pogles.gles2.glColorMask(red, green, blue, alpha)

    Enable and disable writing of frame buffer color components.

    :param red: specifies whether red can or cannot be written into the frame
            buffer.  The initial value is ``True``, indicating that the red
            component can be written.
    :type red: bool
    :param green: specifies whether green can or cannot be written into the
            frame buffer.  The initial value is ``True``, indicating that the
            green component can be written.
    :type green: bool
    :param blue: specifies whether blue can or cannot be written into the frame
            buffer.  The initial value is ``True``, indicating that the blue
            component can be written.
    :type blue: bool
    :param alpha: specifies whether alpha can or cannot be written into the
            frame buffer.  The initial value is ``True``, indicating that the
            alpha component can be written.
    :type alpha: bool


Description
-----------

:func:`~pogles.gles2.glColorMask` specifies whether the individual color
components in the frame buffer can or cannot be written.  If *red* is
``False``, for example, no change is made to the red component of any pixel in
any of the color buffers, regardless of the drawing operation attempted.

Changes to individual bits of components cannot be controlled.  Rather, changes
are either enabled or disabled for entire color components.
