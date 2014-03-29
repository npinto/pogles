:func:`~pogles.gles2.glCullFace`
================================

.. function:: pogles.gles2.glCullFace(mode)

    Specify whether front or back facing facets can be culled.

    :param mode: specifies whether front or back facing facets are candidates
            for culling.  Symbolic constants :data:`~pogles.gles2.GL_FRONT`,
            :data:`~pogles.gles2.GL_BACK` and
            :data:`~pogles.gles2.GL_FRONT_AND_BACK` are accepted.  The initial
            value is :data:`~pogles.gles2.GL_BACK`.
    :type mode: int
    :raises: :exc:`~pogles.gles2.GLException`


Description
-----------

:func:`~pogles.gles2.glCullFace` specifies whether front or back facing facets
are culled (as specified by *mode*) when facet culling is enabled.  Facet
culling is initially disabled.  To enable and disable facet culling, call the
:func:`~pogles.gles2.glEnable` and :func:`~pogles.gles2.glDisable` commands
with the argument :data:`~pogles.gles2.GL_CULL_FACE`.  Facets include
triangles, quadrilaterals, polygons, and rectangles.

:func:`~pogles.gles2.glFrontFace` specifies which of the clockwise and
counterclockwise facets are front facing and back facing.


Notes
-----

If *mode* is :data:`~pogles.gles2.GL_FRONT_AND_BACK`, no facets are drawn, but
other primitives such as points and lines are drawn.
