:func:`~pogles.gles2.glIsEnabled`
=================================

.. function:: pogles.gles2.glIsEnabled(cap) -> result

    Test whether a capability is enabled.

    :param cap: is the GL capability.
    :type cap: int
    :raises: :exc:`~pogles.gles2.GLException`
    :return: The bool result.


Description
-----------

:func:`~pogles.gles2.glIsEnabled` returns ``True`` if *cap* is an enabled
capability and returns ``False`` otherwise.  Initially all capabilities except
:data:`~pogles.gles2.GL_DITHER` are disabled; :data:`~pogles.gles2.GL_DITHER`
is initially enabled.

The following capabilities are accepted for *cap*:

+---------------------------------------------------+------------------------------------------------------------------------+
| **Constant**                                      | **See**                                                                |
+---------------------------------------------------+------------------------------------------------------------------------+
| :data:`~pogles.gles2.GL_BLEND`                    | :func:`~pogles.gles2.glBlendFunc`                                      |
+---------------------------------------------------+------------------------------------------------------------------------+
| :data:`~pogles.gles2.GL_CULL_FACE`                | :func:`~pogles.gles2.glCullFace`                                       |
+---------------------------------------------------+------------------------------------------------------------------------+
| :data:`~pogles.gles2.GL_DEPTH_TEST`               | :func:`~pogles.gles2.glDepthFunc`, :func:`~pogles.gles2.glDepthRangef` |
+---------------------------------------------------+------------------------------------------------------------------------+
| :data:`~pogles.gles2.GL_DITHER`                   | :func:`~pogles.gles2.glEnable`                                         |
+---------------------------------------------------+------------------------------------------------------------------------+
| :data:`~pogles.gles2.GL_POLYGON_OFFSET_FILL`      | :func:`~pogles.gles2.glPolygonOffset`                                  |
+---------------------------------------------------+------------------------------------------------------------------------+
| :data:`~pogles.gles2.GL_SAMPLE_ALPHA_TO_COVERAGE` | :func:`~pogles.gles2.glSampleCoverage`                                 |
+---------------------------------------------------+------------------------------------------------------------------------+
| :data:`~pogles.gles2.GL_SAMPLE_COVERAGE`          | :func:`~pogles.gles2.glSampleCoverage`                                 |
+---------------------------------------------------+------------------------------------------------------------------------+
| :data:`~pogles.gles2.GL_SCISSOR_TEST`             | :func:`~pogles.gles2.glScissor`                                        |
+---------------------------------------------------+------------------------------------------------------------------------+
| :data:`~pogles.gles2.GL_STENCIL_TEST`             | :func:`~pogles.gles2.glStencilFunc`, :func:`~pogles.gles2.glStencilOp` |
+---------------------------------------------------+------------------------------------------------------------------------+
