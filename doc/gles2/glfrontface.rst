:func:`~pogles.gles2.glFrontFace`
=================================

.. function:: pogles.gles2.glFrontFace(mode)

    Define front and back facing polygons.

    :param mode: is the orientation of front facing polygons.  It must be
            :data:`~pogles.gles2.GL_CW` or :data:`~pogles.gles2.GL_CCW`.  The
            initial value is :data:`~pogles.gles2.GL_CCW`.
    :type mode: int
    :raises: :exc:`~pogles.gles2.GLException`


Description
-----------

In a scene composed entirely of opaque closed surfaces, back facing polygons
are never visible.  Eliminating these invisible polygons has the obvious
benefit of speeding up the rendering of the image.  To enable and disable
elimination of back facing polygons, call :func:`~pogles.gles2.glEnable` and
:func:`~pogles.gles2.glDisable` with argument
:data:`~pogles.gles2.GL_CULL_FACE`.

The projection of a polygon to window coordinates is said to have clockwise
winding if an imaginary object following the path from its first vertex, its
second vertex, and so on, to its last vertex, and finally back to its first
vertex, moves in a clockwise direction about the interior of the polygon.  The
polygon's winding is said to be counterclockwise if the imaginary object
following the same path moves in a counterclockwise direction about the
interior of the polygon.  :func:`~pogles.gles2.glFrontFace` specifies whether
polygons with clockwise winding in window coordinates, or counterclockwise
winding in window coordinates, are taken to be front facing.  Passing
:data:`~pogles.gles2.GL_CCW` to *mode* selects counterclockwise polygons as
front facing; :data:`~pogles.gles2.GL_CW` selects clockwise polygons as front
facing.  By default, counterclockwise polygons are taken to be front facing.
