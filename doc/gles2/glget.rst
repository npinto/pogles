:func:`~pogles.gles2.glGetBooleanv` :func:`~pogles.gles2.glGetFloatv` :func:`~pogles.gles2.glGetIntegerv`
=========================================================================================================

.. function:: pogles.gles2.glGetBooleanv(pname) -> (value, ...)

    Return the bool value or values of a selected parameter.

    :param pname: is the parameter value to be returned.
    :type pname: int
    :raises: :exc:`~pogles.gles2.GLException`
    :return: A tuple of the parameter's values.


.. function:: pogles.gles2.glGetFloatv(pname) -> (value, ...)

    Return the float value or values of a selected parameter.

    :param pname: is the parameter value to be returned.
    :type pname: int
    :raises: :exc:`~pogles.gles2.GLException`
    :return: A tuple of the parameter's values.


.. function:: pogles.gles2.glGetIntegerv(pname) -> (value, ...)

    Return the int value or values of a selected parameter.

    :param pname: is the parameter value to be returned.
    :type pname: int
    :raises: :exc:`~pogles.gles2.GLException`
    :return: A tuple of the parameter's values.


Description
-----------

These three commands return a tuple containing the values of simple state
variables in GL.  *pname* is a symbolic constant indicating the state variable
to be returned.

Type conversion is performed if the requested values have a different type than
the state variable value being requested.  If
:func:`~pogles.gles2.glGetBooleanv` is called, a floating-point (or integer)
value is converted to ``False`` if and only if it is 0.0 (or 0).  Otherwise, it
is converted to ``True``.  If :func:`~pogles.gles2.glGetIntegerv` is called,
boolean values are returned as ``True`` or ``False``, and most floating-point
values are rounded to the nearest integer value.  Floating-point colors and
normals, however, are returned with a linear mapping that maps 1.0 to the most
positive representable integer value and -1.0 to the most negative
representable integer value.  If :func:`~pogles.gles2.glGetFloatv` is called,
boolean values are returned as ``True`` or ``False``, and integer values are
converted to floating-point values.

The following symbolic constants are accepted by *pname*:

:data:`~pogles.gles2.GL_ACTIVE_TEXTURE`
    Returns a 1-tuple indicating the active multitexture unit.  The initial
    value is :data:`~pogles.gles2.GL_TEXTURE0`.  See
    :func:`~pogles.gles2.glActiveTexture`.

:data:`~pogles.gles2.GL_ALIASED_LINE_WIDTH_RANGE`
    Returns a 2-tuple, the smallest and largest supported widths for aliased
    lines.  The range must include width 1.

:data:`~pogles.gles2.GL_ALIASED_POINT_SIZE_RANGE`
    Returns a 2-tuple, the smallest and largest supported sizes for aliased
    points.  The range must include size 1.

:data:`~pogles.gles2.GL_ALPHA_BITS`
    Returns a 1-tuple, the number of alpha bitplanes in the color buffer of the
    currently bound framebuffer.

:data:`~pogles.gles2.GL_ARRAY_BUFFER_BINDING`
    Returns a 1-tuple, the name of the buffer object currently bound to the
    target :data:`~pogles.gles2.GL_ARRAY_BUFFER`.  If no buffer object is bound
    to this target, 0 is returned.  The initial value is ``(0, )``.  See
    :func:`~pogles.gles2.glBindBuffer`.

:data:`~pogles.gles2.GL_BLEND`
    Returns a 1-tuple indicating whether blending is enabled.  The initial
    value is ``(False, )``.  See :func:`~pogles.gles2.glBlendFunc`.

:data:`~pogles.gles2.GL_BLEND_COLOR`
    Returns a 4-tuple, the red, green, blue, and alpha values which are the
    components of the blend color.  See :func:`~pogles.gles2.glBlendColor`.

:data:`~pogles.gles2.GL_BLEND_DST_ALPHA`
    Returns a 1-tuple, the symbolic constant identifying the alpha destination
    blend function.  The initial value is :data:`~pogles.gles2.GL_ZERO`.  See
    :func:`~pogles.gles2.glBlendFunc` and
    :func:`~pogles.gles2.glBlendFuncSeparate`.

:data:`~pogles.gles2.GL_BLEND_DST_RGB`
    Returns a 1-tuple, the symbolic constant identifying the RGB destination
    blend function.  The initial value is :data:`~pogles.gles2.GL_ZERO`.  See
    :func:`~pogles.gles2.glBlendFunc` and
    :func:`~pogles.gles2.glBlendFuncSeparate`.

:data:`~pogles.gles2.GL_BLEND_EQUATION_ALPHA`
    Returns a 1-tuple, a symbolic constant indicating whether the alpha blend
    equation is :data:`~pogles.gles2.GL_FUNC_ADD`,
    :data:`~pogles.gles2.GL_FUNC_SUBTRACT` or
    :data:`~pogles.gles2.GL_FUNC_REVERSE_SUBTRACT`.  See
    :func:`~pogles.gles2.glBlendEquationSeparate`.

:data:`~pogles.gles2.GL_BLEND_EQUATION_RGB`
    Returns a 1-tuple, a symbolic constant indicating whether the RGB blend
    equation is :data:`~pogles.gles2.GL_FUNC_ADD`,
    :data:`~pogles.gles2.GL_FUNC_SUBTRACT` or
    :data:`~pogles.gles2.GL_FUNC_REVERSE_SUBTRACT`.  See
    :func:`~pogles.gles2.glBlendEquationSeparate`.

:data:`~pogles.gles2.GL_BLEND_SRC_ALPHA`
    Returns a 1-tuple, the symbolic constant identifying the alpha source blend
    function.  The initial value is :data:`~pogles.gles2.GL_ONE`.  See
    :func:`~pogles.gles2.glBlendFunc` and
    :func:`~pogles.gles2.glBlendFuncSeparate`.

:data:`~pogles.gles2.GL_BLEND_SRC_RGB`
    Returns a 1-tuple, the symbolic constant identifying the RGB source blend
    function.  The initial value is :data:`~pogles.gles2.GL_ONE`.  See
    :func:`~pogles.gles2.glBlendFunc` and
    :func:`~pogles.gles2.glBlendFuncSeparate`.

:data:`~pogles.gles2.GL_BLUE_BITS`
    Returns a 1-tuple, the number of blue bitplanes in the color buffer of the
    currently bound framebuffer.

:data:`~pogles.gles2.GL_COLOR_CLEAR_VALUE`
    Returns a 4-tuple, the red, green, blue, and alpha values used to clear the
    color buffers.  Integer values, if requested, are linearly mapped from the
    internal floating-point representation such that 1.0 returns the most
    positive representable integer value, and -1.0 returns the most negative
    representable integer value.  The initial value is ``(0, 0, 0, 0)``.  See
    :func:`~pogles.gles2.glClearColor`.

:data:`~pogles.gles2.GL_COLOR_WRITEMASK`
    Returns a 4-tuple, the red, green, blue, and alpha write enables for the
    color buffers.  The initial value is ``(True, True, True, True)``.  See
    :func:`~pogles.gles2.glColorMask`.

:data:`~pogles.gles2.GL_COMPRESSED_TEXTURE_FORMATS`
    Returns a tuple of length
    :data:`~pogles.gles2.GL_NUM_COMPRESSED_TEXTURE_FORMATS` indicating which
    compressed texture formats are available.  See
    :func:`~pogles.gles2.glCompressedTexImage2D`.

:data:`~pogles.gles2.GL_CULL_FACE`
    Returns a 1-tuple indicating whether polygon culling is enabled.  The
    initial value is ``False``.  See :func:`~pogles.gles2.glCullFace`.

:data:`~pogles.gles2.GL_CULL_FACE_MODE`
    Returns a 1-tuple, a symbolic constant indicating which polygon faces are
    to be culled.  The initial value is :data:`~pogles.gles2.GL_BACK`.  See
    :func:`~pogles.gles2.glCullFace`.

:data:`~pogles.gles2.GL_CURRENT_PROGRAM`
    Returns a 1-tuple, the name of the program object that is currently active,
    or 0 if no program object is active.  See
    :func:`~pogles.gles2.glUseProgram`.

:data:`~pogles.gles2.GL_DEPTH_BITS`
    Returns a 1-tuple, the number of bitplanes in the depth buffer of the
    currently bound framebuffer.

:data:`~pogles.gles2.GL_DEPTH_CLEAR_VALUE`
    Returns a 1-tuple, the value that is used to clear the depth buffer.
    Integer values, if requested, are linearly mapped from the internal
    floating-point representation such that 1.0 returns the most positive
    representable integer value, and -1.0 returns the most negative
    representable integer value.  The initial value is ``(1, )``.  See
    :func:`~pogles.gles2.glClearDepthf`.

:data:`~pogles.gles2.GL_DEPTH_FUNC`
    Returns a 1-tuple, the symbolic constant that indicates the depth
    comparison function.  The initial value is :data:`~pogles.gles2.GL_LESS`.
    See :func:`~pogles.gles2.glDepthFunc`.

:data:`~pogles.gles2.GL_DEPTH_RANGE`
    Returns a 2-tuple, the near and far mapping limits for the depth buffer.
    Integer values, if requested, are linearly mapped from the internal
    floating-point representation such that 1.0 returns the most positive
    representable integer value, and -1.0 returns the most negative
    representable integer value.  The initial value is ``(0, 1)``.  See
    :func:`~pogles.gles2.glDepthRangef`.

:data:`~pogles.gles2.GL_DEPTH_TEST`
    Returns a 1-tuple indicating whether depth testing of fragments is enabled.
    The initial value is ``(False, )``.  See :func:`~pogles.gles2.glDepthFunc`
    and :func:`~pogles.gles2.glDepthRangef`.

:data:`~pogles.gles2.GL_DEPTH_WRITEMASK`
    Returns a 1-tuple indicating if the depth buffer is enabled for writing.
    The initial value is ``(True, )``.  See :func:`~pogles.gles2.glDepthMask`.

:data:`~pogles.gles2.GL_DITHER`
    Returns a 1-tuple indicating whether dithering of fragment colors and
    indices is enabled.  The initial value is ``(True, )``.

:data:`~pogles.gles2.GL_ELEMENT_ARRAY_BUFFER_BINDING`
    Returns a 1-tuple, the name of the buffer object currently bound to the
    target :data:`~pogles.gles2.GL_ELEMENT_ARRAY_BUFFER`.  If no buffer object
    is bound to this target, 0 is returned.  The initial value is ``(0, )``.
    See :func:`~pogles.gles2.glBindBuffer`.

:data:`~pogles.gles2.GL_FRAMEBUFFER_BINDING`
    Returns a 1-tuple, the name of the currently bound framebuffer.  The
    initial value is ``(0, )``, indicating the default framebuffer.  See
    :func:`~pogles.gles2.glBindFramebuffer`.

:data:`~pogles.gles2.GL_FRONT_FACE`
    Returns a 1-tuple, a symbolic constant indicating whether clockwise or
    counterclockwise polygon winding is treated as front facing.  The initial
    value is :data:`~pogles.gles2.GL_CCW`.  See
    :func:`~pogles.gles2.glFrontFace`.

:data:`~pogles.gles2.GL_GENERATE_MIPMAP_HINT`
    Returns a 1-tuple, a symbolic constant indicating the mode of the mipmap
    generation filtering hint.  The initial value is
    :data:`~pogles.gles2.GL_DONT_CARE`.  See :func:`~pogles.gles2.glHint`.

:data:`~pogles.gles2.GL_GREEN_BITS`
    Returns a 1-tuple, the number of green bitplanes in the color buffer of the
    currently bound framebuffer.

:data:`~pogles.gles2.GL_IMPLEMENTATION_COLOR_READ_FORMAT`
    Returns a 1-tuple, the format chosen by the implementation in which pixels
    may be read from the color buffer of the currently bound framebuffer in
    conjunction with :data:`~pogles.gles2.GL_IMPLEMENTATION_COLOR_READ_TYPE`.
    In addition to this implementation-dependent format/type pair, format
    :data:`~pogles.gles2.GL_RGBA` in conjunction with type
    :data:`~pogles.gles2.GL_UNSIGNED_BYTE` is always allowed by every
    implementation, regardless of the currently bound render surface.  See
    :func:`~pogles.gles2.glReadPixels`.

:data:`~pogles.gles2.GL_IMPLEMENTATION_COLOR_READ_TYPE`
    Returns a 1-tuple, the type chosen by the implementation with which pixels
    may be read from the color buffer of the currently bound framebuffer in
    conjunction with :data:`~pogles.gles2.GL_IMPLEMENTATION_COLOR_READ_FORMAT`.
    In addition to this implementation-dependent format/type pair, format
    :data:`~pogles.gles2.GL_RGBA` in conjunction with type
    :data:`~pogles.gles2.GL_UNSIGNED_BYTE` is always allowed by every
    implementation, regardless of the currently bound render surface.  See
    :func:`~pogles.gles2.glReadPixels`.

:data:`~pogles.gles2.GL_LINE_WIDTH`
    Returns a 1-tuple, the line width as specified with
    :func:`~pogles.gles2.glLineWidth`.  The initial value is ``(1, )``.

:data:`~pogles.gles2.GL_MAX_COMBINED_TEXTURE_IMAGE_UNITS`
    Returns a 1-tuple, the maximum supported texture image units that can be
    used to access texture maps from the vertex shader and the fragment
    processor combined.  If both the vertex shader and the fragment processing
    stage access the same texture image unit, then that counts as using two
    texture image units against this limit.  The value must be at least 8.
    See :func:`~pogles.gles2.glActiveTexture`.

:data:`~pogles.gles2.GL_MAX_CUBE_MAP_TEXTURE_SIZE`
    Returns a 1-tuple, a rough estimate of the largest cube-map texture that
    the GL can handle.  The value must be at least 16.  See
    :func:`~pogles.gles2.glTexImage2D`.

:data:`~pogles.gles2.GL_MAX_FRAGMENT_UNIFORM_VECTORS`
    Returns a 1-tuple, the maximum number of four-element floating-point,
    integer, or boolean vectors that can be held in uniform variable storage
    for a fragment shader.  The value must be at least 16.  See
    :func:`~pogles.gles2.glUniform`.

:data:`~pogles.gles2.GL_MAX_RENDERBUFFER_SIZE`
    Returns a 1-tuple, the largest renderbuffer width and height that the GL
    can handle.  The value must be at least 1.  See
    :func:`~pogles.gles2.glRenderbufferStorage`.

:data:`~pogles.gles2.GL_MAX_TEXTURE_IMAGE_UNITS`
    Returns a 1-tuple, the maximum supported texture image units that can be
    used to access texture maps from the fragment shader.  The value must be at
    least 8.  See :func:`~pogles.gles2.glActiveTexture`.

:data:`~pogles.gles2.GL_MAX_TEXTURE_SIZE`
    Returns a 1-tuple, a rough estimate of the largest texture that the GL can
    handle.  The value must be at least 64.  See
    :func:`~pogles.gles2.glTexImage2D`.

:data:`~pogles.gles2.GL_MAX_VARYING_VECTORS`
    Returns a 1-tuple, the maximum number four-element floating-point vectors
    available for interpolating varying variables used by vertex and fragment
    shaders.  Varying variables declared as matrices or arrays will consume
    multiple interpolators.  The value must be at least 8.

:data:`~pogles.gles2.GL_MAX_VERTEX_ATTRIBS`
    Returns a 1-tuple, the maximum number of 4-component generic vertex
    attributes accessible to a vertex shader.  The value must be at least 8.
    See :func:`~pogles.gles2.glVertexAttrib`.

:data:`~pogles.gles2.GL_MAX_VERTEX_TEXTURE_IMAGE_UNITS`
    Returns a 1-tuple, the maximum supported texture image units that can be
    used to access texture maps from the vertex shader.  The value may be 0.
    See :func:`~pogles.gles2.glActiveTexture`.

:data:`~pogles.gles2.GL_MAX_VERTEX_UNIFORM_VECTORS`
    Returns a 1-tuple, the maximum number of four-element floating-point,
    integer, or boolean vectors that can be held in uniform variable storage
    for a vertex shader.  The value must be at least 128.  See
    :func:`~pogles.gles2.glUniform`.

:data:`~pogles.gles2.GL_MAX_VIEWPORT_DIMS`
    Returns a 2-tuple, the maximum supported width and height of the viewport.
    These must be at least as large as the visible dimensions of the display
    being rendered to.  See :func:`~pogles.gles2.glViewport`.

:data:`~pogles.gles2.GL_NUM_COMPRESSED_TEXTURE_FORMATS`
    Returns a 1-tuple, the number of available compressed texture formats.  The
    minimum value is 0.  See :func:`~pogles.gles2.glCompressedTexImage2D`.

:data:`~pogles.gles2.GL_NUM_SHADER_BINARY_FORMATS`
    Returns a 1-tuple, the number of available shader binary formats.  The
    minimum value is 0.  See :func:`~pogles.gles2.glShaderBinary`.

:data:`~pogles.gles2.GL_PACK_ALIGNMENT`
    Returns a 1-tuple, the byte alignment used for writing pixel data to
    memory.  The initial value is ``(4, )``.  See
    :func:`~pogles.gles2.glPixelStorei`.

:data:`~pogles.gles2.GL_POLYGON_OFFSET_FACTOR`
    Returns a 1-tuple, the scaling factor used to determine the variable offset
    that is added to the depth value of each fragment generated when a polygon
    is rasterized.  The initial value is ``(0, )``.  See
    :func:`~pogles.gles2.glPolygonOffset`.

:data:`~pogles.gles2.GL_POLYGON_OFFSET_FILL`
    Returns a 1-tuple, indicating whether polygon offset is enabled for
    polygons in fill mode.  The initial value is ``(False, )``.  See
    :func:`~pogles.gles2.glPolygonOffset`.

:data:`~pogles.gles2.GL_POLYGON_OFFSET_UNITS`
    Returns a 1-tuple.  This value is multiplied by an implementation-specific
    value and then added to the depth value of each fragment generated when a
    polygon is rasterized.  The initial value is ``(0, )``.  See
    :func:`~pogles.gles2.glPolygonOffset`.

:data:`~pogles.gles2.GL_RED_BITS`
    Returns a 1-tuple, the number of red bitplanes in the color buffer of the
    currently bound framebuffer.

:data:`~pogles.gles2.GL_RENDERBUFFER_BINDING`
    Returns a 1-tuple, the name of the currently bound renderbuffer.  The
    initial value is ``(0, )``, indicating no renderbuffer is bound.  See
    :func:`~pogles.gles2.glBindRenderbuffer`.

:data:`~pogles.gles2.GL_SAMPLE_ALPHA_TO_COVERAGE`
    Returns a 1-tuple, indicating if the fragment coverage value should be
    ANDed with a temporary coverage value based on the fragment's alpha value.
    The initial value is ``(False, )``.  See
    :func:`~pogles.gles2.glSampleCoverage`.

:data:`~pogles.gles2.GL_SAMPLE_BUFFERS`
    Returns a 1-tuple, the number of sample buffers associated with the
    currently bound framebuffer.  See :func:`~pogles.gles2.glSampleCoverage`.

:data:`~pogles.gles2.GL_SAMPLE_COVERAGE`
    Returns a 1-tuple, indicating if the fragment coverage value should be
    ANDed with a temporary coverage value based on the current sample coverage
    value.  The initial value is ``(False, )``.  See
    :func:`~pogles.gles2.glSampleCoverage`.

:data:`~pogles.gles2.GL_SAMPLE_COVERAGE_INVERT`
    Returns a 1-tuple, indicating if the temporary coverage value should be
    inverted.  See :func:`~pogles.gles2.glSampleCoverage`.

:data:`~pogles.gles2.GL_SAMPLE_COVERAGE_VALUE`
    Returns a 1-tuple, the current sample coverage value.  See
    :func:`~pogles.gles2.glSampleCoverage`.

:data:`~pogles.gles2.GL_SAMPLES`
    Returns a 1-tuple, the coverage mask size of the currently bound
    framebuffer.  See :func:`~pogles.gles2.glSampleCoverage`.

:data:`~pogles.gles2.GL_SCISSOR_BOX`
    Returns a 4-tuple, the x and y window coordinates of the scissor box,
    followed by its width and height.  Initially the x and y window coordinates
    are both 0 and the width and height are set to the size of the window.  See
    :func:`~pogles.gles2.glScissor`.

:data:`~pogles.gles2.GL_SCISSOR_TEST`
    Returns a 1-tuple, indicating whether scissoring is enabled.  The initial
    value is ``(False, )``.  See :func:`~pogles.gles2.glScissor`.

:data:`~pogles.gles2.GL_SHADER_BINARY_FORMATS`
    Returns a tuple of length
    :data:`~pogles.gles2.GL_NUM_SHADER_BINARY_FORMATS` indicating which shader
    binary formats are available.  See :func:`~pogles.gles2.glShaderBinary`.

:data:`~pogles.gles2.GL_SHADER_COMPILER`
    Returns a 1-tuple, indicating whether a shader compiler is supported.
    ``False`` indicates that any call to :func:`~pogles.gles2.glShaderSource`,
    :func:`~pogles.gles2.glCompileShader` or
    :func:`~pogles.gles2.glReleaseShaderCompiler` will result in a
    :data:`~pogles.gles2.GL_INVALID_OPERATION` error being raised.

:data:`~pogles.gles2.GL_STENCIL_BACK_FAIL`
    Returns a 1-tuple, a symbolic constant indicating what action is taken for
    back facing polygons when the stencil test fails.  The initial value is
    :data:`~pogles.gles2.GL_KEEP`.  See
    :func:`~pogles.gles2.glStencilOpSeparate`.

:data:`~pogles.gles2.GL_STENCIL_BACK_FUNC`
    Returns a 1-tuple, a symbolic constant indicating what function is used for
    back facing polygons to compare the stencil reference value with the
    stencil buffer value.  The initial value is
    :data:`~pogles.gles2.GL_ALWAYS`.  See
    :func:`~pogles.gles2.glStencilFuncSeparate`.

:data:`~pogles.gles2.GL_STENCIL_BACK_PASS_DEPTH_FAIL`
    Returns a 1-tuple, a symbolic constant indicating what action is taken for
    back facing polygons when the stencil test passes, but the depth test
    fails.  The initial value is :data:`~pogles.gles2.GL_KEEP`.  See
    :func:`~pogles.gles2.glStencilOpSeparate`.

:data:`~pogles.gles2.GL_STENCIL_BACK_PASS_DEPTH_PASS`
    Returns a 1-tuple, a symbolic constant indicating what action is taken for
    back facing polygons when the stencil test passes and the depth test
    passes.  The initial value is :data:`~pogles.gles2.GL_KEEP`.  See
    :func:`~pogles.gles2.glStencilOpSeparate`.

:data:`~pogles.gles2.GL_STENCIL_BACK_REF`
    Returns a 1-tuple, the reference value that is compared with the contents
    of the stencil buffer for back facing polygons.  The initial value is
    ``(0, )``.  See :func:`~pogles.gles2.glStencilFuncSeparate`.

:data:`~pogles.gles2.GL_STENCIL_BACK_VALUE_MASK`
    Returns a 1-tuple, the mask that is used for back facing polygons to mask
    both the stencil reference value and the stencil buffer value before they
    are compared.  The initial value is all 1's.  See
    :func:`~pogles.gles2.glStencilFuncSeparate`.

:data:`~pogles.gles2.GL_STENCIL_BACK_WRITEMASK`
    Returns a 1-tuple, the mask that controls writing of the stencil bitplanes
    for back facing polygons.  The initial value is all 1's.  See
    :func:`~pogles.gles2.glStencilMaskSeparate`.

:data:`~pogles.gles2.GL_STENCIL_BITS`
    Returns a 1-tuple, the number of bitplanes in the stencil buffer of the
    currently bound framebuffer.

:data:`~pogles.gles2.GL_STENCIL_CLEAR_VALUE`
    Returns a 1-tuple, the index to which the stencil bitplanes are cleared.
    The initial value is ``(0, )``.  See :func:`~pogles.gles2.glClearStencil`.

:data:`~pogles.gles2.GL_STENCIL_FAIL`
    Returns a 1-tuple, a symbolic constant indicating what action is taken when
    the stencil test fails for front facing polygons and non-polygons.  The
    initial value is :data:`~pogles.gles2.GL_KEEP`.  See
    :func:`~pogles.gles2.glStencilOp` and
    :func:`~pogles.gles2.glStencilOpSeparate`.

:data:`~pogles.gles2.GL_STENCIL_FUNC`
    Returns a 1-tuple, a symbolic constant indicating what function is used to
    compare the stencil reference value with the stencil buffer value for front
    facing polygons and non-polygons.  The initial value is
    :data:`~pogles.gles2.GL_ALWAYS`.  See :func:`~pogles.gles2.glStencilFunc`
    and :func:`~pogles.gles2.glStencilFuncSeparate`.

:data:`~pogles.gles2.GL_STENCIL_PASS_DEPTH_FAIL`
    Returns a 1-tuple, a symbolic constant indicating what action is taken when
    the stencil test passes, but the depth test fails for front facing polygons
    and non-polygons.  The initial value is :data:`~pogles.gles2.GL_KEEP`.  See
    :func:`~pogles.gles2.glStencilOp` and
    :func:`~pogles.gles2.glStencilOpSeparate`.

:data:`~pogles.gles2.GL_STENCIL_PASS_DEPTH_PASS`
    Returns a 1-tuple, a symbolic constant indicating what action is taken when
    the stencil test passes and the depth test passes for front facing polygons
    and non-polygons.  The initial value is :data:`~pogles.gles2.GL_KEEP`.  See
    :func:`~pogles.gles2.glStencilOp` and
    :func:`~pogles.gles2.glStencilOpSeparate`.

:data:`~pogles.gles2.GL_STENCIL_REF`
    Returns a 1-tuple, the reference value that is compared with the contents
    of the stencil buffer for front facing polygons and non-polygons.  The
    initial value is ``(0, )``.  See :func:`~pogles.gles2.glStencilFunc` and
    :func:`~pogles.gles2.glStencilFuncSeparate`.

:data:`~pogles.gles2.GL_STENCIL_TEST`
    Returns a 1-tuple, indicating whether stencil testing of fragments is
    enabled.  The initial value is ``(False, )``.  See
    :func:`~pogles.gles2.glStencilFunc` and :func:`~pogles.gles2.glStencilOp`.

:data:`~pogles.gles2.GL_STENCIL_VALUE_MASK`
    Returns a 1-tuple, the mask that is used to mask both the stencil reference
    value and the stencil buffer value before they are compared for front
    facing polygons and non-polygons.  The initial value is all 1's.  See
    :func:`~pogles.gles2.glStencilFunc` and
    :func:`~pogles.gles2.glStencilFuncSeparate`.

:data:`~pogles.gles2.GL_STENCIL_WRITEMASK`
    Returns a 1-tuple, the mask that controls writing of the stencil bitplanes
    for front facing polygons and non-polygons.  The initial value is all 1's.
    See :func:`~pogles.gles2.glStencilMask` and
    :func:`~pogles.gles2.glStencilMaskSeparate`.

:data:`~pogles.gles2.GL_SUBPIXEL_BITS`
    Returns a 1-tuple, an estimate of the number of bits of subpixel resolution
    that are used to position rasterized geometry in window coordinates.  The
    value must be at least 4.

:data:`~pogles.gles2.GL_TEXTURE_BINDING_2D`
    Returns a 1-tuple, the name of the texture currently bound to the target
    :data:`~pogles.gles2.GL_TEXTURE_2D` for the active multitexture unit.  The
    initial value is ``(0, )``.  See :func:`~pogles.gles2.glBindTexture`.

:data:`~pogles.gles2.GL_TEXTURE_BINDING_CUBE_MAP`
    Returns a 1-tuple, the name of the texture currently bound to the target
    :data:`~pogles.gles2.GL_TEXTURE_CUBE_MAP` for the active multitexture unit.
    The initial value is ``(0, )``.  See :func:`~pogles.gles2.glBindTexture`.

:data:`~pogles.gles2.GL_UNPACK_ALIGNMENT`
    Returns a 1-tuple, the byte alignment used for reading pixel data from
    memory.  The initial value is ``(4, )``.  See
    :func:`~pogles.gles2.glPixelStorei`.

:data:`~pogles.gles2.GL_VIEWPORT`
    Returns a 4-tuple, the x and y window coordinates of the viewport, followed
    by its width and height.  Initially the x and y window coordinates are both
    set to 0, and the width and height are set to the width and height of the
    window into which the GL will do its rendering.  See
    :func:`~pogles.gles2.glViewport`.

Many of the boolean parameters can also be queried more easily using
:func:`~pogles.gles2.glIsEnabled`.
