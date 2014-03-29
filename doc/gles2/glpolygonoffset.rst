:func:`~pogles.gles2.glPolygonOffset`
=====================================

.. function:: pogles.gles2.glPolygonOffset(factor, units)

    Set the scale and units used to calculate depth values.

    :param factor: is the scale factor that is used to create a variable depth
            offset for each polygon.  The initial value is 0.
    :type factor: float
    :param units: is multiplied by an implementation-specific value to create a
            constant depth offset.  The initial value is 0.
    :type units: float


Description
-----------

When :data:`~pogles.gles2.GL_POLYGON_OFFSET_FILL` is enabled, each fragment's
depth value will be offset after it is interpolated from the depth values of
the appropriate vertices.  The value of the offset is
:math:`factor \times DZ + r \times units`, where :math:`DZ` is a measurement of
the change in depth relative to the screen area of the polygon, and :math:`r`
is the smallest value that is guaranteed to produce a resolvable offset for a
given implementation.  The offset is added before the depth test is performed
and before the value is written into the depth buffer.

:func:`~pogles.gles2.glPolygonOffset` is useful for rendering hidden-line
images, for applying decals to surfaces, and for rendering solids with
highlighted edges.
