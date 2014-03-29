:func:`~pogles.gles2.glStencilMaskSeparate`
===========================================

.. function:: pogles.gles2.glStencilMaskSeparate(face, mask)

    Control the front and/or back writing of individual bits in the stencil
    planes.

    :param face: specifies whether the front and/or back stencil writemask is
            updated.  It must be :data:`~pogles.gles2.GL_FRONT`,
            :data:`~pogles.gles2.GL_BACK` or
            :data:`~pogles.gles2.GL_FRONT_AND_BACK`.
    :type face: int
    :param mask: is the bit mask to enable and disable writing of individual
            bits in the stencil planes.  Initially, the mask is all 1s.
    :type mask: int
    :raises: :exc:`~pogles.gles2.GLException`


Description
-----------

:func:`~pogles.gles2.glStencilMaskSeparate` controls the writing of individual
bits in the stencil planes.  The least significant :math:`n` bits of *mask*,
where :math:`n` is the number of bits in the stencil buffer, specify a mask.
Where a 1 appears in the mask, it's possible to write to the corresponding bit
in the stencil buffer.  Where a 0 appears, the corresponding bit is
write-protected.  Initially, all bits are enabled for writing.

There can be two separate *mask* writemasks; one affects back facing polygons,
and the other affects front facing polygons as well as other non-polygon
primitives.  :func:`~pogles.gles2.glStencilMask` sets both front and back
stencil writemasks to the same values, as if
:func:`~pogles.gles2.glStencilMaskSeparate` were called with *face* set to
:data:`~pogles.gles2.GL_FRONT_AND_BACK`.
