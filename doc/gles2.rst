:mod:`pogles.gles2`
===================
.. module:: pogles.gles2
    :synopsis: Implements the Open GL ES v2.0 interface.

The :mod:`pogles.gles2` module implements the Open GL ES v2.0 interface.  It
can be used with the :mod:`pogles.egl` and :mod:`pogles.platform` modules to
develop standalone applications.  Alternatively it can be used with a separate
framework, e.g. `PyQt <http://www.riverbankcomputing.com/software/pyqt>`__,
that handles the platform dependencies.


Functions
---------

.. toctree::
    :glob:
    :titlesonly:

    gles2/*


Exceptions
----------

.. exception:: GLException

    The exception raised by this module's functions.


Constants
---------

.. data:: GL_ES_VERSION_2_0

.. data:: GL_DEPTH_BUFFER_BIT
.. data:: GL_STENCIL_BUFFER_BIT
.. data:: GL_COLOR_BUFFER_BIT

.. data:: GL_POINTS
.. data:: GL_LINES
.. data:: GL_LINE_LOOP
.. data:: GL_LINE_STRIP
.. data:: GL_TRIANGLES
.. data:: GL_TRIANGLE_STRIP
.. data:: GL_TRIANGLE_FAN

.. data:: GL_ZERO
.. data:: GL_ONE
.. data:: GL_SRC_COLOR
.. data:: GL_ONE_MINUS_SRC_COLOR
.. data:: GL_SRC_ALPHA
.. data:: GL_ONE_MINUS_SRC_ALPHA
.. data:: GL_DST_ALPHA
.. data:: GL_ONE_MINUS_DST_ALPHA

.. data:: GL_DST_COLOR
.. data:: GL_ONE_MINUS_DST_COLOR
.. data:: GL_SRC_ALPHA_SATURATE

.. data:: GL_FUNC_ADD
.. data:: GL_BLEND_EQUATION
.. data:: GL_BLEND_EQUATION_RGB
.. data:: GL_BLEND_EQUATION_ALPHA

.. data:: GL_FUNC_SUBTRACT
.. data:: GL_FUNC_REVERSE_SUBTRACT

.. data:: GL_BLEND_DST_RGB
.. data:: GL_BLEND_SRC_RGB
.. data:: GL_BLEND_DST_ALPHA
.. data:: GL_BLEND_SRC_ALPHA
.. data:: GL_CONSTANT_COLOR
.. data:: GL_ONE_MINUS_CONSTANT_COLOR
.. data:: GL_CONSTANT_ALPHA
.. data:: GL_ONE_MINUS_CONSTANT_ALPHA
.. data:: GL_BLEND_COLOR

.. data:: GL_ARRAY_BUFFER
.. data:: GL_ELEMENT_ARRAY_BUFFER
.. data:: GL_ARRAY_BUFFER_BINDING
.. data:: GL_ELEMENT_ARRAY_BUFFER_BINDING

.. data:: GL_STREAM_DRAW
.. data:: GL_STATIC_DRAW
.. data:: GL_DYNAMIC_DRAW

.. data:: GL_BUFFER_SIZE
.. data:: GL_BUFFER_USAGE

.. data:: GL_CURRENT_VERTEX_ATTRIB

.. data:: GL_FRONT
.. data:: GL_BACK
.. data:: GL_FRONT_AND_BACK

.. data:: GL_TEXTURE_2D
.. data:: GL_CULL_FACE
.. data:: GL_BLEND
.. data:: GL_DITHER
.. data:: GL_STENCIL_TEST
.. data:: GL_DEPTH_TEST
.. data:: GL_SCISSOR_TEST
.. data:: GL_POLYGON_OFFSET_FILL
.. data:: GL_SAMPLE_ALPHA_TO_COVERAGE
.. data:: GL_SAMPLE_COVERAGE

.. data:: GL_NO_ERROR
.. data:: GL_INVALID_ENUM
.. data:: GL_INVALID_VALUE
.. data:: GL_INVALID_OPERATION
.. data:: GL_OUT_OF_MEMORY

.. data:: GL_CW
.. data:: GL_CCW

.. data:: GL_LINE_WIDTH
.. data:: GL_ALIASED_POINT_SIZE_RANGE
.. data:: GL_ALIASED_LINE_WIDTH_RANGE
.. data:: GL_CULL_FACE_MODE
.. data:: GL_FRONT_FACE
.. data:: GL_DEPTH_RANGE
.. data:: GL_DEPTH_WRITEMASK
.. data:: GL_DEPTH_CLEAR_VALUE
.. data:: GL_DEPTH_FUNC
.. data:: GL_STENCIL_CLEAR_VALUE
.. data:: GL_STENCIL_FUNC
.. data:: GL_STENCIL_FAIL
.. data:: GL_STENCIL_PASS_DEPTH_FAIL
.. data:: GL_STENCIL_PASS_DEPTH_PASS
.. data:: GL_STENCIL_REF
.. data:: GL_STENCIL_VALUE_MASK
.. data:: GL_STENCIL_WRITEMASK
.. data:: GL_STENCIL_BACK_FUNC
.. data:: GL_STENCIL_BACK_FAIL
.. data:: GL_STENCIL_BACK_PASS_DEPTH_FAIL
.. data:: GL_STENCIL_BACK_PASS_DEPTH_PASS
.. data:: GL_STENCIL_BACK_REF
.. data:: GL_STENCIL_BACK_VALUE_MASK
.. data:: GL_STENCIL_BACK_WRITEMASK
.. data:: GL_VIEWPORT
.. data:: GL_SCISSOR_BOX
.. data:: GL_COLOR_CLEAR_VALUE
.. data:: GL_COLOR_WRITEMASK
.. data:: GL_UNPACK_ALIGNMENT
.. data:: GL_PACK_ALIGNMENT
.. data:: GL_MAX_TEXTURE_SIZE
.. data:: GL_MAX_VIEWPORT_DIMS
.. data:: GL_SUBPIXEL_BITS
.. data:: GL_RED_BITS
.. data:: GL_GREEN_BITS
.. data:: GL_BLUE_BITS
.. data:: GL_ALPHA_BITS
.. data:: GL_DEPTH_BITS
.. data:: GL_STENCIL_BITS
.. data:: GL_POLYGON_OFFSET_UNITS
.. data:: GL_POLYGON_OFFSET_FACTOR
.. data:: GL_TEXTURE_BINDING_2D
.. data:: GL_SAMPLE_BUFFERS
.. data:: GL_SAMPLES
.. data:: GL_SAMPLE_COVERAGE_VALUE
.. data:: GL_SAMPLE_COVERAGE_INVERT

.. data:: GL_NUM_COMPRESSED_TEXTURE_FORMATS
.. data:: GL_COMPRESSED_TEXTURE_FORMATS

.. data:: GL_DONT_CARE
.. data:: GL_FASTEST
.. data:: GL_NICEST

.. data:: GL_GENERATE_MIPMAP_HINT

.. data:: GL_BYTE
.. data:: GL_UNSIGNED_BYTE
.. data:: GL_SHORT
.. data:: GL_UNSIGNED_SHORT
.. data:: GL_INT
.. data:: GL_UNSIGNED_INT
.. data:: GL_FLOAT
.. data:: GL_FIXED

.. data:: GL_DEPTH_COMPONENT
.. data:: GL_ALPHA
.. data:: GL_RGB
.. data:: GL_RGBA
.. data:: GL_LUMINANCE
.. data:: GL_LUMINANCE_ALPHA

.. data:: GL_UNSIGNED_SHORT_4_4_4_4
.. data:: GL_UNSIGNED_SHORT_5_5_5_1
.. data:: GL_UNSIGNED_SHORT_5_6_5

.. data:: GL_FRAGMENT_SHADER
.. data:: GL_VERTEX_SHADER
.. data:: GL_MAX_VERTEX_ATTRIBS
.. data:: GL_MAX_VERTEX_UNIFORM_VECTORS
.. data:: GL_MAX_VARYING_VECTORS
.. data:: GL_MAX_COMBINED_TEXTURE_IMAGE_UNITS
.. data:: GL_MAX_VERTEX_TEXTURE_IMAGE_UNITS
.. data:: GL_MAX_TEXTURE_IMAGE_UNITS
.. data:: GL_MAX_FRAGMENT_UNIFORM_VECTORS
.. data:: GL_SHADER_TYPE
.. data:: GL_DELETE_STATUS
.. data:: GL_LINK_STATUS
.. data:: GL_VALIDATE_STATUS
.. data:: GL_ATTACHED_SHADERS
.. data:: GL_ACTIVE_UNIFORMS
.. data:: GL_ACTIVE_UNIFORM_MAX_LENGTH
.. data:: GL_ACTIVE_ATTRIBUTES
.. data:: GL_ACTIVE_ATTRIBUTE_MAX_LENGTH
.. data:: GL_SHADING_LANGUAGE_VERSION
.. data:: GL_CURRENT_PROGRAM

.. data:: GL_NEVER
.. data:: GL_LESS
.. data:: GL_EQUAL
.. data:: GL_LEQUAL
.. data:: GL_GREATER
.. data:: GL_NOTEQUAL
.. data:: GL_GEQUAL
.. data:: GL_ALWAYS

.. data:: GL_KEEP
.. data:: GL_REPLACE
.. data:: GL_INCR
.. data:: GL_DECR
.. data:: GL_INVERT
.. data:: GL_INCR_WRAP
.. data:: GL_DECR_WRAP

.. data:: GL_VENDOR
.. data:: GL_RENDERER
.. data:: GL_VERSION
.. data:: GL_EXTENSIONS

.. data:: GL_NEAREST
.. data:: GL_LINEAR

.. data:: GL_NEAREST_MIPMAP_NEAREST
.. data:: GL_LINEAR_MIPMAP_NEAREST
.. data:: GL_NEAREST_MIPMAP_LINEAR
.. data:: GL_LINEAR_MIPMAP_LINEAR

.. data:: GL_TEXTURE_MAG_FILTER
.. data:: GL_TEXTURE_MIN_FILTER
.. data:: GL_TEXTURE_WRAP_S
.. data:: GL_TEXTURE_WRAP_T

.. data:: GL_TEXTURE

.. data:: GL_TEXTURE_CUBE_MAP
.. data:: GL_TEXTURE_BINDING_CUBE_MAP
.. data:: GL_TEXTURE_CUBE_MAP_POSITIVE_X
.. data:: GL_TEXTURE_CUBE_MAP_NEGATIVE_X
.. data:: GL_TEXTURE_CUBE_MAP_POSITIVE_Y
.. data:: GL_TEXTURE_CUBE_MAP_NEGATIVE_Y
.. data:: GL_TEXTURE_CUBE_MAP_POSITIVE_Z
.. data:: GL_TEXTURE_CUBE_MAP_NEGATIVE_Z
.. data:: GL_MAX_CUBE_MAP_TEXTURE_SIZE

.. data:: GL_TEXTURE0
.. data:: GL_TEXTURE1
.. data:: GL_TEXTURE2
.. data:: GL_TEXTURE3
.. data:: GL_TEXTURE4
.. data:: GL_TEXTURE5
.. data:: GL_TEXTURE6
.. data:: GL_TEXTURE7
.. data:: GL_TEXTURE8
.. data:: GL_TEXTURE9
.. data:: GL_TEXTURE10
.. data:: GL_TEXTURE11
.. data:: GL_TEXTURE12
.. data:: GL_TEXTURE13
.. data:: GL_TEXTURE14
.. data:: GL_TEXTURE15
.. data:: GL_TEXTURE16
.. data:: GL_TEXTURE17
.. data:: GL_TEXTURE18
.. data:: GL_TEXTURE19
.. data:: GL_TEXTURE20
.. data:: GL_TEXTURE21
.. data:: GL_TEXTURE22
.. data:: GL_TEXTURE23
.. data:: GL_TEXTURE24
.. data:: GL_TEXTURE25
.. data:: GL_TEXTURE26
.. data:: GL_TEXTURE27
.. data:: GL_TEXTURE28
.. data:: GL_TEXTURE29
.. data:: GL_TEXTURE30
.. data:: GL_TEXTURE31
.. data:: GL_ACTIVE_TEXTURE

.. data:: GL_REPEAT
.. data:: GL_CLAMP_TO_EDGE
.. data:: GL_MIRRORED_REPEAT

.. data:: GL_FLOAT_VEC2
.. data:: GL_FLOAT_VEC3
.. data:: GL_FLOAT_VEC4
.. data:: GL_INT_VEC2
.. data:: GL_INT_VEC3
.. data:: GL_INT_VEC4
.. data:: GL_BOOL
.. data:: GL_BOOL_VEC2
.. data:: GL_BOOL_VEC3
.. data:: GL_BOOL_VEC4
.. data:: GL_FLOAT_MAT2
.. data:: GL_FLOAT_MAT3
.. data:: GL_FLOAT_MAT4
.. data:: GL_SAMPLER_2D
.. data:: GL_SAMPLER_CUBE

.. data:: GL_VERTEX_ATTRIB_ARRAY_ENABLED
.. data:: GL_VERTEX_ATTRIB_ARRAY_SIZE
.. data:: GL_VERTEX_ATTRIB_ARRAY_STRIDE
.. data:: GL_VERTEX_ATTRIB_ARRAY_TYPE
.. data:: GL_VERTEX_ATTRIB_ARRAY_NORMALIZED
.. data:: GL_VERTEX_ATTRIB_ARRAY_POINTER
.. data:: GL_VERTEX_ATTRIB_ARRAY_BUFFER_BINDING

.. data:: GL_IMPLEMENTATION_COLOR_READ_TYPE
.. data:: GL_IMPLEMENTATION_COLOR_READ_FORMAT

.. data:: GL_COMPILE_STATUS
.. data:: GL_INFO_LOG_LENGTH
.. data:: GL_SHADER_SOURCE_LENGTH
.. data:: GL_SHADER_COMPILER

.. data:: GL_SHADER_BINARY_FORMATS
.. data:: GL_NUM_SHADER_BINARY_FORMATS

.. data:: GL_LOW_FLOAT
.. data:: GL_MEDIUM_FLOAT
.. data:: GL_HIGH_FLOAT
.. data:: GL_LOW_INT
.. data:: GL_MEDIUM_INT
.. data:: GL_HIGH_INT

.. data:: GL_FRAMEBUFFER
.. data:: GL_RENDERBUFFER

.. data:: GL_RGBA4
.. data:: GL_RGB5_A1
.. data:: GL_RGB565
.. data:: GL_DEPTH_COMPONENT16
.. data:: GL_STENCIL_INDEX8

.. data:: GL_RENDERBUFFER_WIDTH
.. data:: GL_RENDERBUFFER_HEIGHT
.. data:: GL_RENDERBUFFER_INTERNAL_FORMAT
.. data:: GL_RENDERBUFFER_RED_SIZE
.. data:: GL_RENDERBUFFER_GREEN_SIZE
.. data:: GL_RENDERBUFFER_BLUE_SIZE
.. data:: GL_RENDERBUFFER_ALPHA_SIZE
.. data:: GL_RENDERBUFFER_DEPTH_SIZE
.. data:: GL_RENDERBUFFER_STENCIL_SIZE

.. data:: GL_FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE
.. data:: GL_FRAMEBUFFER_ATTACHMENT_OBJECT_NAME
.. data:: GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL
.. data:: GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE

.. data:: GL_COLOR_ATTACHMENT0
.. data:: GL_DEPTH_ATTACHMENT
.. data:: GL_STENCIL_ATTACHMENT

.. data:: GL_NONE

.. data:: GL_FRAMEBUFFER_COMPLETE
.. data:: GL_FRAMEBUFFER_INCOMPLETE_ATTACHMENT
.. data:: GL_FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT
.. data:: GL_FRAMEBUFFER_INCOMPLETE_DIMENSIONS
.. data:: GL_FRAMEBUFFER_UNSUPPORTED

.. data:: GL_FRAMEBUFFER_BINDING
.. data:: GL_RENDERBUFFER_BINDING
.. data:: GL_MAX_RENDERBUFFER_SIZE

.. data:: GL_INVALID_FRAMEBUFFER_OPERATION
