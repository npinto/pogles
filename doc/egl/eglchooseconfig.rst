:func:`~pogles.egl.eglChooseConfig`
===================================

.. function:: pogles.egl.eglChooseConfig(display, attrib_list) -> list of configurations

    Return a list of EGL frame buffer configurations that match specified
    attributes.

    :param display: is the EGL display.
    :type display: :class:`~pogles.egl.EGLDisplay`
    :param attrib_list: is the list of attributes required to match by the
            list of configurations.
    :type attrib_list: list of int
    :raises: :exc:`~pogles.egl.EGLException`
    :return:
        The list of :class:`~pogles.egl.EGLConfig` configurations.


Description
-----------

:func:`~pogles.egl.eglChooseConfig` returns a list of all EGL frame buffer
configurations that match the attributes specified in *attrib_list*.  The
returned :class:`~pogles.egl.EGLConfig` configurations can be used in any EGL
function that requires an EGL frame buffer configuration.

All attributes in *attrib_list*, including boolean attributes, are immediately
followed by the corresponding desired value.  If an attribute is not specified
in *attrib_list* then the default value (see below) is used (and the attribute
is said to be specified implicitly).  For example, if
:data:`~pogles.egl.EGL_DEPTH_SIZE` is not specified then it is assumed to be
zero.  For some attributes, the default is :data:`~pogles.egl.EGL_DONT_CARE`
meaning that any value is OK for this attribute, so the attribute will not be
checked.

Attributes are matched in an attribute-specific manner.  Some of the
attributes, such as :data:`~pogles.egl.EGL_LEVEL`, must match the specified
value exactly.  Others, such as, :data:`~pogles.egl.EGL_RED_SIZE` must meet or
exceed the specified minimum values.  If more than one EGL frame buffer
configuration matching all attributes is found, then a list of configurations,
sorted according to the **best** match criteria, is returned.  The match
criteria for each attribute and the exact sorting order is defined below.

For the bitmask attributes :data:`~pogles.egl.EGL_CONFORMANT`,
:data:`~pogles.egl.EGL_RENDERABLE_TYPE`, and
:data:`~pogles.egl.EGL_SURFACE_TYPE`, only the non-zero bits of the mask are
considered when matching.  Any bits that are zero in the specified bitmask
attribute value may be either zero or one in the resulting configuration's
attribute value.

Attributes which may appear in *attrib_list*, and their descriptions and
allowed values, are:

:data:`~pogles.egl.EGL_ALPHA_MASK_SIZE`
    Must be followed by a non-negative integer that indicates the desired alpha
    mask buffer size, in bits.  The smallest alpha mask buffers of at least the
    specified size are preferred.  The default value is zero.

    The alpha mask buffer is used only by OpenGL and OpenGL ES client APIs.

:data:`~pogles.egl.EGL_ALPHA_SIZE`
    Must be followed by a non-negative integer that indicates the desired size
    of the alpha component of the color buffer, in bits.  If this value is
    zero, color buffers with the smallest alpha component size are preferred.
    Otherwise, color buffers with the largest alpha component of at least the
    specified size are preferred.  The default value is zero.

:data:`~pogles.egl.EGL_BIND_TO_TEXTURE_RGB`
    Must be followed by :data:`~pogles.egl.EGL_DONT_CARE`, ``True`` or
    ``False``.  If ``True`` is specified, then only frame buffer configurations
    that support binding of color buffers to an OpenGL ES RGB texture will be
    considered.  Currently only frame buffer configurations that support
    pbuffers allow this.  The default value is
    :data:`~pogles.egl.EGL_DONT_CARE`.

:data:`~pogles.egl.EGL_BIND_TO_TEXTURE_RGBA`
    Must be followed by one of :data:`~pogles.egl.EGL_DONT_CARE`, ``True`` or
    ``False``.  If ``True`` is specified, then only frame buffer configurations
    that support binding of color buffers to an OpenGL ES RGBA texture will be
    considered.  Currently only frame buffer configurations that support
    pbuffers allow this.  The default value is
    :data:`~pogles.egl.EGL_DONT_CARE`.

:data:`~pogles.egl.EGL_BLUE_SIZE`
    Must be followed by a non-negative integer that indicates the desired size
    of the blue component of the color buffer, in bits.  If this value is zero,
    color buffers with the smallest blue component size are preferred.
    Otherwise, color buffers with the largest blue component of at least the
    specified size are preferred.  The default value is zero.

:data:`~pogles.egl.EGL_BUFFER_SIZE`
    Must be followed by a non-negative integer that indicates the desired color
    buffer size, in bits.  The smallest color buffers of at least the specified
    size are preferred.  The default value is zero.

    The color buffer size is the sum of :data:`~pogles.egl.EGL_RED_SIZE`,
    :data:`~pogles.egl.EGL_GREEN_SIZE`, :data:`~pogles.egl.EGL_BLUE_SIZE` and
    :data:`~pogles.egl.EGL_ALPHA_SIZE`, and does not include any padding bits
    which may be present in the pixel format.  It is usually preferable to
    specify desired sizes for these color components individually.

:data:`~pogles.egl.EGL_COLOR_BUFFER_TYPE`
    Must be followed by one of :data:`~pogles.egl.EGL_RGB_BUFFER` or
    :data:`~pogles.egl.EGL_LUMINANCE_BUFFER`.

    :data:`~pogles.egl.EGL_RGB_BUFFER` indicates an RGB color buffer; in this
    case, attributes :data:`~pogles.egl.EGL_RED_SIZE`,
    :data:`~pogles.egl.EGL_GREEN_SIZE` and :data:`~pogles.egl.EGL_BLUE_SIZE`
    must be non-zero and :data:`~pogles.egl.EGL_LUMINANCE_SIZE` must be zero.

    :data:`~pogles.egl.EGL_LUMINANCE_BUFFER` indicates a luminance color
    buffer.  In this case :data:`~pogles.egl.EGL_RED_SIZE`,
    :data:`~pogles.egl.EGL_GREEN_SIZE`, :data:`~pogles.egl.EGL_BLUE_SIZE` must
    be zero and :data:`~pogles.egl.EGL_LUMINANCE_SIZE` must be non-zero.

    For both RGB and luminance color buffers,
    :data:`~pogles.egl.EGL_ALPHA_SIZE` may be zero or non-zero.

:data:`~pogles.egl.EGL_CONFIG_CAVEAT`
    Must be followed by :data:`~pogles.egl.EGL_DONT_CARE`,
    :data:`~pogles.egl.EGL_NONE`, :data:`~pogles.egl.EGL_SLOW_CONFIG` or
    :data:`~pogles.egl.EGL_NON_CONFORMANT_CONFIG`.

    If :data:`~pogles.egl.EGL_DONT_CARE` is specified, then configs are not
    matched for this attribute.  The default value is
    :data:`~pogles.egl.EGL_DONT_CARE`.

    If :data:`~pogles.egl.EGL_NONE` is specified, then configs are matched for
    this attribute, but only configs with no caveats (neither
    :data:`~pogles.egl.EGL_SLOW_CONFIG` or
    :data:`~pogles.egl.EGL_NON_CONFORMANT_CONFIG`) will be considered.

    If :data:`~pogles.egl.EGL_SLOW_CONFIG` is specified, then only slow configs
    configurations will be considered.  The meaning of **slow** is
    implementation-dependent, but typically indicates a
    non-hardware-accelerated (software) implementation.

    If :data:`~pogles.egl.EGL_NON_CONFORMANT_CONFIG` is specified, then only
    configs supporting non-conformant OpenGL ES contexts will be considered.

    If the EGL version is 1.3 or later, caveat
    :data:`~pogles.egl.EGL_NON_CONFORMANT_CONFIG` is obsolete, since the same
    information can be specified via the :data:`~pogles.egl.EGL_CONFORMANT`
    attribute on a per-client-API basis, not just for OpenGL ES.

:data:`~pogles.egl.EGL_CONFIG_ID`
    Must be followed by a valid integer ID that indicates the desired EGL frame
    buffer configuration.  When a :data:`~pogles.egl.EGL_CONFIG_ID` is
    specified, all other attributes are ignored.  The default value is
    :data:`~pogles.egl.EGL_DONT_CARE`.

    The meaning of config IDs is implementation-dependent.  They are used only
    to uniquely identify different frame buffer configurations.

:data:`~pogles.egl.EGL_CONFORMANT`
    Must be followed by a bitmask indicating which types of client API contexts
    created with respect to the frame buffer configuration config must pass the
    required conformance tests for that API.  Mask bits include:

    :data:`~pogles.egl.EGL_OPENGL_BIT`
        Config supports creating OpenGL contexts.

    :data:`~pogles.egl.EGL_OPENGL_ES_BIT`
        Config supports creating OpenGL ES 1.0 and/or 1.1 contexts.

    :data:`~pogles.egl.EGL_OPENGL_ES2_BIT`
        Config supports creating OpenGL ES 2.0 contexts.

    :data:`~pogles.egl.EGL_OPENVG_BIT`
        Config supports creating OpenVG contexts.

    For example, if the bitmask is set to
    :data:`~pogles.egl.EGL_OPENGL_ES_BIT`, only frame buffer configurations
    that support creating conformant OpenGL ES contexts will match.  The
    default value is zero.

    Most :class:`~pogles.egl.EGLConfig` configurations should be conformant for
    all supported client APIs, and it is rarely desirable to select a
    nonconformant config.  Conformance requirements limit the number of
    nonconformant configs that an implementation can define.

:data:`~pogles.egl.EGL_DEPTH_SIZE`
    Must be followed by a nonnegative integer that indicates the desired depth
    buffer size, in bits.  The smallest depth buffers of at least the specified
    size is preferred.  If the desired size is zero, frame buffer
    configurations with no depth buffer are preferred.  The default value is
    zero.

    The depth buffer is used only by OpenGL and OpenGL ES client APIs.

:data:`~pogles.egl.EGL_GREEN_SIZE`
    Must be followed by a non-negative integer that indicates the desired size
    of the green component of the color buffer, in bits.  If this value is
    zero, color buffers with the smallest green component size are preferred.
    Otherwise, color buffers with the largest green component of at least the
    specified size are preferred.  The default value is zero.

:data:`~pogles.egl.EGL_LEVEL`
    Must be followed by an integer buffer level specification.  This
    specification is honored exactly.  Buffer level zero corresponds to the
    default frame buffer of the display.  Buffer level one is the first overlay
    frame buffer, level two the second overlay frame buffer, and so on.
    Negative buffer levels correspond to underlay frame buffers.  The default
    value is zero.

    Most implementations do not support overlay or underlay planes (buffer
    levels other than zero).

:data:`~pogles.egl.EGL_LUMINANCE_SIZE`
    Must be followed by a non-negative integer that indicates the desired
        size of the luminance component of the color buffer, in bits.  If this
        value is zero, color buffers with the smallest luminance component size
        are preferred.  Otherwise, color buffers with the largest luminance
        component of at least the specified size are preferred.  The default
        value is zero.

:data:`~pogles.egl.EGL_MATCH_NATIVE_PIXMAP`
    Must be followed by the handle of a valid native pixmap, cast to int, or
    :data:`~pogles.egl.EGL_NONE`.  If the value is not
    :data:`~pogles.egl.EGL_NONE`, only configs which support creating pixmap
    surfaces with this pixmap using :func:`~pogles.egl.eglCreatePixmapSurface`
    will match this attribute.  If the value is :data:`~pogles.egl.EGL_NONE`,
    then configs are not matched for this attribute.  The default value is
    :data:`~pogles.egl.EGL_NONE`.

    :data:`~pogles.egl.EGL_MATCH_NATIVE_PIXMAP` was introduced due to the
    difficulty of determining an :class:`~pogles.egl.EGLConfig` configuration
    compatibile with a native pixmap using only color component sizes.

:data:`~pogles.egl.EGL_NATIVE_RENDERABLE`
    Must be followed by :data:`~pogles.egl.EGL_DONT_CARE`, ``True`` or
    ``False``.  If ``True`` is specified, then only frame buffer configurations
    that allow native rendering into the surface will be considered.  The
    default value is :data:`~pogles.egl.EGL_DONT_CARE`.

:data:`~pogles.egl.EGL_MAX_SWAP_INTERVAL`
    Must be followed by a integer that indicates the maximum value that can be
    passed to :func:`~pogles.egl.eglSwapInterval`.  The default value is
    :data:`~pogles.egl.EGL_DONT_CARE`.

:data:`~pogles.egl.EGL_MIN_SWAP_INTERVAL`
    Must be followed by a integer that indicates the minimum value that can be
    passed to :func:`~pogles.egl.eglSwapInterval`.  The default value is
    :data:`~pogles.egl.EGL_DONT_CARE`.

:data:`~pogles.egl.EGL_RED_SIZE`
    Must be followed by a non-negative integer that indicates the desired size
    of the red component of the color buffer, in bits.  If this value is zero,
    color buffers with the smallest red component size are preferred.
    Otherwise, color buffers with the largest red component of at least the
    specified size are preferred.  The default value is zero.

:data:`~pogles.egl.EGL_SAMPLE_BUFFERS`
    Must be followed by the minimum acceptable number of multisample buffers.
    Configurations with the smallest number of multisample buffers that meet or
    exceed this minimum number are preferred.  Currently operation with more
    than one multisample buffer is undefined, so only values of zero or one
    will produce a match.  The default value is zero.

:data:`~pogles.egl.EGL_SAMPLES`
    Must be followed by the minimum number of samples required in multisample
    buffers.  Configurations with the smallest number of samples that meet or
    exceed the specified minimum number are preferred.  Note that it is
    possible for color samples in the multisample buffer to have fewer bits
    than colors in the main color buffers.  However, multisampled colors
    maintain at least as much color resolution in aggregate as the main color
    buffers.

:data:`~pogles.egl.EGL_STENCIL_SIZE`
    Must be followed by a nonnegative integer that indicates the desired
    stencil buffer size, in bits.  The smallest stencil buffers of at least the
    specified size are preferred.  If the desired size is zero, frame buffer
    configurations with no stencil buffer are preferred.  The default value is
    zero.

    The stencil buffer is used only by OpenGL and OpenGL ES client APIs.

:data:`~pogles.egl.EGL_RENDERABLE_TYPE`
    Must be followed by a bitmask indicating which types of client API contexts
    the frame buffer configuration must support creating with
    :func:`~pogles.egl.eglCreateContext`).  Mask bits are the same as for
    attribute :data:`~pogles.egl.EGL_CONFORMANT`.  The default value is
    :data:`~pogles.egl.EGL_OPENGL_ES_BIT`.

:data:`~pogles.egl.EGL_SURFACE_TYPE`
    Must be followed by a bitmask indicating which EGL surface types and
    capabilities the frame buffer configuration must support.  Mask bits
    include:

    :data:`~pogles.egl.EGL_MULTISAMPLE_RESOLVE_BOX_BIT`
        Config allows specifying box filtered multisample resolve behavior with
        :func:`~pogles.egl.eglSurfaceAttrib`.

    :data:`~pogles.egl.EGL_PBUFFER_BIT`
        Config supports creating pixel buffer surfaces.

    :data:`~pogles.egl.EGL_PIXMAP_BIT`
        Config supports creating pixmap surfaces.

    :data:`~pogles.egl.EGL_SWAP_BEHAVIOR_PRESERVED_BIT`
        Config allows setting swap behavior for color buffers with
        :func:`~pogles.egl.eglSurfaceAttrib`.

    :data:`~pogles.egl.EGL_VG_ALPHA_FORMAT_PRE_BIT`
        Config allows specifying OpenVG rendering with premultiplied alpha
        values at surface creation time (see
        :func:`~pogles.egl.eglCreatePbufferSurface`,
        :func:`~pogles.egl.eglCreatePixmapSurface` and
        :func:`~pogles.egl.eglCreateWindowSurface`).

    :data:`~pogles.egl.EGL_VG_COLORSPACE_LINEAR_BIT`
        Config allows specifying OpenVG rendering in a linear colorspace at
        surface creation time (see :func:`~pogles.egl.eglCreatePbufferSurface`,
        :func:`~pogles.egl.eglCreatePixmapSurface` and
        :func:`~pogles.egl.eglCreateWindowSurface`).

    :data:`~pogles.egl.EGL_WINDOW_BIT`
        Config supports creating window surfaces.

    For example, if the bitmask is set to :data:`~pogles.egl.EGL_WINDOW_BIT` |
    :data:`~pogles.egl.EGL_PIXMAP_BIT`, only frame buffer configurations that
    support both windows and pixmaps will be considered.  The default value is
    :data:`~pogles.egl.EGL_WINDOW_BIT`.

:data:`~pogles.egl.EGL_TRANSPARENT_TYPE`
    Must be followed by one of :data:`~pogles.egl.EGL_NONE` or
    :data:`~pogles.egl.EGL_TRANSPARENT_RGB`.  If :data:`~pogles.egl.EGL_NONE`
    is specified, then only opaque frame buffer configurations will be
    considered.  If :data:`~pogles.egl.EGL_TRANSPARENT_RGB` is specified, then
    only transparent frame buffer configurations will be considered.  The
    default value is :data:`~pogles.egl.EGL_NONE`.

    Most implementations support only opaque frame buffer configurations.

:data:`~pogles.egl.EGL_TRANSPARENT_RED_VALUE`
    Must be followed by an integer value indicating the transparent red value.
    The value must be between zero and the maximum color buffer value for red.
    Only frame buffer configurations that use the specified transparent red
    value will be considered.  The default value is
    :data:`~pogles.egl.EGL_DONT_CARE`.

    This attribute is ignored unless :data:`~pogles.egl.EGL_TRANSPARENT_TYPE`
    is included in *attrib_list* and specified as
    :data:`~pogles.egl.EGL_TRANSPARENT_RGB`.

:data:`~pogles.egl.EGL_TRANSPARENT_GREEN_VALUE`
    Must be followed by an integer value indicating the transparent green
    value.  The value must be between zero and the maximum color buffer value
    for green.  Only frame buffer configurations that use the specified
    transparent green value will be considered.  The default value is
    :data:`~pogles.egl.EGL_DONT_CARE`.

    This attribute is ignored unless :data:`~pogles.egl.EGL_TRANSPARENT_TYPE`
    is included in *attrib_list* and specified as
    :data:`~pogles.egl.EGL_TRANSPARENT_RGB`.

:data:`~pogles.egl.EGL_TRANSPARENT_BLUE_VALUE`
    Must be followed by an integer value indicating the transparent blue value.
    The value must be between zero and the maximum color buffer value for blue.
    Only frame buffer configurations that use the specified transparent blue
    value will be considered.  The default value is
    :data:`~pogles.egl.EGL_DONT_CARE`.

    This attribute is ignored unless :data:`~pogles.egl.EGL_TRANSPARENT_TYPE`
    is included in *attrib_list* and specified as
    :data:`~pogles.egl.EGL_TRANSPARENT_RGB`.

When more than one EGL frame buffer configuration matches the specified
attributes, a list of matching configurations is returned.  The list is sorted
according to the following precedence rules, which are applied in ascending
order (i.e. configurations that are considered equal by a lower numbered rule
are sorted by the higher numbered rule):

1.  Special: by :data:`~pogles.egl.EGL_CONFIG_CAVEAT`, where the precedence is
    :data:`~pogles.egl.EGL_NONE`, :data:`~pogles.egl.EGL_SLOW_CONFIG`, and
    :data:`~pogles.egl.EGL_NON_CONFORMANT_CONFIG`.

2.  Special: by :data:`~pogles.egl.EGL_COLOR_BUFFER_TYPE`, where the precedence
    is :data:`~pogles.egl.EGL_RGB_BUFFER`,
    :data:`~pogles.egl.EGL_LUMINANCE_BUFFER`.

3.  Special: by larger total number of color bits (for an RGB color buffer,
    this is the sum of :data:`~pogles.egl.EGL_RED_SIZE`,
    :data:`~pogles.egl.EGL_GREEN_SIZE`, :data:`~pogles.egl.EGL_BLUE_SIZE`, and
    :data:`~pogles.egl.EGL_ALPHA_SIZE`; for a luminance color buffer, the sum
    of :data:`~pogles.egl.EGL_LUMINANCE_SIZE` and
    :data:`~pogles.egl.EGL_ALPHA_SIZE`).  If the requested number of bits in
    *attrib_list* is 0 or :data:`~pogles.egl.EGL_DONT_CARE` for a particular
    color component, then the number of bits for that component is not
    considered.

    This sort rule places configs with deeper color buffers before configs with
    shallower color buffers, which may be counter-intuitive.

4.  Smaller :data:`~pogles.egl.EGL_BUFFER_SIZE`.

5.  Smaller :data:`~pogles.egl.EGL_SAMPLE_BUFFERS`.

6.  Smaller :data:`~pogles.egl.EGL_SAMPLES`.

7.  Smaller :data:`~pogles.egl.EGL_DEPTH_SIZE`.

8.  Smaller :data:`~pogles.egl.EGL_STENCIL_SIZE`.

9.  Smaller :data:`~pogles.egl.EGL_ALPHA_MASK_SIZE`.

10. Special: :data:`~pogles.egl.EGL_NATIVE_VISUAL_TYPE` (the actual sort order
    is implementation-defined, depending on the meaning of native visual
    types).

11. Smaller :data:`~pogles.egl.EGL_CONFIG_ID` (this is always the last sorting
    rule, and guarantees a unique ordering).

:class:`~pogles.egl.EGLConfig` configurations are not sorted with respect to
the attributes :data:`~pogles.egl.EGL_BIND_TO_TEXTURE_RGB`,
:data:`~pogles.egl.EGL_BIND_TO_TEXTURE_RGBA`,
:data:`~pogles.egl.EGL_CONFORMANT`, :data:`~pogles.egl.EGL_LEVEL`,
:data:`~pogles.egl.EGL_NATIVE_RENDERABLE`,
:data:`~pogles.egl.EGL_MAX_SWAP_INTERVAL`,
:data:`~pogles.egl.EGL_MIN_SWAP_INTERVAL`,
:data:`~pogles.egl.EGL_RENDERABLE_TYPE`, :data:`~pogles.egl.EGL_SURFACE_TYPE`,
:data:`~pogles.egl.EGL_TRANSPARENT_TYPE`,
:data:`~pogles.egl.EGL_TRANSPARENT_RED_VALUE`,
:data:`~pogles.egl.EGL_TRANSPARENT_GREEN_VALUE` and
:data:`~pogles.egl.EGL_TRANSPARENT_BLUE_VALUE`.


Notes
-----

:data:`~pogles.egl.EGL_RENDERABLE_TYPE` bit :data:`~pogles.egl.EGL_OPENGL_BIT`,
and :data:`~pogles.egl.EGL_SURFACE_TYPE` bits
:data:`~pogles.egl.EGL_MULTISAMPLE_RESOLVE_BOX_BIT` and
:data:`~pogles.egl.EGL_SWAP_BEHAVIOR_PRESERVED_BIT` are supported only if the
EGL version is 1.4 or greater.

:data:`~pogles.egl.EGL_CONFORMANT`,
:data:`~pogles.egl.EGL_MATCH_NATIVE_PIXMAP`,
:data:`~pogles.egl.EGL_RENDERABLE_TYPE` bit
:data:`~pogles.egl.EGL_OPENGL_ES2_BIT`, and
:data:`~pogles.egl.EGL_SURFACE_TYPE` bits
:data:`~pogles.egl.EGL_VG_ALPHA_FORMAT_PRE_BIT` and
:data:`~pogles.egl.EGL_VG_COLORSPACE_LINEAR_BIT` are supported only if the EGL
version is 1.3 or greater.

:data:`~pogles.egl.EGL_ALPHA_MASK_SIZE`,
:data:`~pogles.egl.EGL_COLOR_BUFFER_TYPE`,
:data:`~pogles.egl.EGL_LUMINANCE_SIZE`,
:data:`~pogles.egl.EGL_RENDERABLE_TYPE`, and
:data:`~pogles.egl.EGL_RENDERABLE_TYPE` bits
:data:`~pogles.egl.EGL_OPENGL_ES_BIT` and :data:`~pogles.egl.EGL_OPENVG_BIT`
are supported only if the EGL version is 1.2 or greater.

If OpenGL or OpenGL ES rendering is supported for a luminance color buffer, it
is treated as RGB rendering with the value of
:data:`~pogles.gles2.GL_RED_BITS` equal to
:data:`~pogles.egl.EGL_LUMINANCE_SIZE` and the values of
:data:`~pogles.gles2.GL_GREEN_BITS` and :data:`~pogles.gles2.GL_BLUE_BITS`
equal to zero.  The red component of fragments is written to the luminance
channel of the color buffer while the green and blue components are discarded.

:func:`~pogles.egl.eglGetConfigs` and :func:`~pogles.egl.eglGetConfigAttrib`
can be used to implement selection algorithms other than the generic one
implemented by :func:`~pogles.egl.eglChooseConfig`.  Call
:func:`~pogles.egl.eglGetConfigs` to retrieve all the frame buffer
configurations, or alternatively, all the frame buffer configurations with a
particular set of attributes.  Next call
:func:`~pogles.egl.eglGetConfigAttrib` to retrieve additional attributes for
the frame buffer configurations and then select between them.

EGL implementors are strongly discouraged, but not proscribed, from changing
the selection algorithm used by :func:`~pogles.egl.eglChooseConfig`.
Therefore, selections may change from release to release of the client-side
library.
