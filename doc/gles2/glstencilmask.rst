:func:`~pogles.gles2.glStencilMask`
===================================

.. function:: pogles.gles2.glStencilMask(mask)

    Control the front and back writing of individual bits in the stencil
    planes.

    :param mask: is the bit mask to enable and disable writing of individual
            bits in the stencil planes.  Initially, the mask is all 1s.
    :type mask: int


Description
-----------

:func:`~pogles.gles2.glStencilMask` controls the writing of individual bits in
the stencil planes.  The least significant :math:`n` bits of *mask*, where
:math:`n` is the number of bits in the stencil buffer, specify a mask.  Where a
1 appears in the mask, it's possible to write to the corresponding bit in the
stencil buffer.  Where a 0 appears, the corresponding bit is write-protected.
Initially, all bits are enabled for writing.

There can be two separate *mask* writemasks; one affects back facing polygons,
and the other affects front facing polygons as well as other non-polygon
primitives.  :func:`~pogles.gles2.glStencilMask` sets both front and back
stencil writemasks to the same values.  Use
:func:`~pogles.gles2.glStencilMaskSeparate` to set front and back stencil
writemasks to different values.


Notes
-----

:func:`~pogles.gles2.glStencilMask` is the same as calling
:func:`~pogles.gles2.glStencilMaskSeparate` with face set to
:data:`~pogles.gles2.GL_FRONT_AND_BACK`.
