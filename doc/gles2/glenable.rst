:func:`~pogles.gles2.glEnable` :func:`~pogles.gles2.glDisable`
==============================================================

.. function:: pogles.gles2.glEnable(cap)

    Enable server-side GL capabilities.

    :param cap: is the GL capability.
    :type cap: int
    :raises: :exc:`~pogles.gles2.GLException`


.. function:: pogles.gles2.glDisable(cap)

    Disable server-side GL capabilities.

    :param cap: is the GL capability.
    :type cap: int
    :raises: :exc:`~pogles.gles2.GLException`


Description
-----------

:func:`~pogles.gles2.glEnable` and :func:`~pogles.gles2.glDisable` enable and
disable various capabilities.  Use :func:`~pogles.gles2.glIsEnabled` or
:func:`~pogles.gles2.glGetBooleanv` etc. to determine the current setting of
any capability.  The initial value for each capability with the exception of
:data:`~pogles.gles2.GL_DITHER` is ``False``.  The initial value for
:data:`~pogles.gles2.GL_DITHER` is ``True``.

Both :func:`~pogles.gles2.glEnable` and :func:`~pogles.gles2.glDisable` take a
single argument, *cap*, which can assume one of the following values:

:data:`~pogles.gles2.GL_BLEND`
    If enabled, blend the computed fragment color values with the values in the
    color buffers.  See :func:`~pogles.gles2.glBlendFunc`.

:data:`~pogles.gles2.GL_CULL_FACE`
    If enabled, cull polygons based on their winding in window coordinates.
    See :func:`~pogles.gles2.glCullFace`.

:data:`~pogles.gles2.GL_DEPTH_TEST`
    If enabled, do depth comparisons and update the depth buffer.  Note that
    even if the depth buffer exists and the depth mask is non-zero, the depth
    buffer is not updated if the depth test is disabled.  See
    :func:`~pogles.gles2.glDepthFunc` and :func:`~pogles.gles2.glDepthRangef`.

:data:`~pogles.gles2.GL_DITHER`
    If enabled, dither color components or indices before they are written to
    the color buffer.

:data:`~pogles.gles2.GL_POLYGON_OFFSET_FILL`
    If enabled, an offset is added to depth values of a polygon's fragments
    produced by rasterization.  See :func:`~pogles.gles2.glPolygonOffset`.

:data:`~pogles.gles2.GL_SAMPLE_ALPHA_TO_COVERAGE`
    If enabled, compute a temporary coverage value where each bit is determined
    by the alpha value at the corresponding sample location.  The temporary
    coverage value is then ANDed with the fragment coverage value.

:data:`~pogles.gles2.GL_SAMPLE_COVERAGE`
    If enabled, the fragment's coverage is ANDed with the temporary coverage
    value.  If :data:`~pogles.gles2.GL_SAMPLE_COVERAGE_INVERT` is set to
    ``True``, invert the coverage value.  See
    :func:`~pogles.gles2.glSampleCoverage`.

:data:`~pogles.gles2.GL_SCISSOR_TEST`
    If enabled, discard fragments that are outside the scissor rectangle.  See
    :func:`~pogles.gles2.glScissor`.

:data:`~pogles.gles2.GL_STENCIL_TEST`
    If enabled, do stencil testing and update the stencil buffer.  See
    :func:`~pogles.gles2.glStencilFunc` and :func:`~pogles.gles2.glStencilOp`.
