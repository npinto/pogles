:mod:`pogles.egl`
=================
.. module:: pogles.egl
    :synopsis: Implements the EGL native platform interface.

The :mod:`pogles.egl` module implements the EGL platform interface.


Overview
--------

The Khronos Native Platform Graphics Interface (EGL) provides a means for
rendering using a client API such as OpenGL ES (a 3D renderer for embedded
systems), OpenGL (a functional superset of OpenGL ES for desktop systems), and
OpenVG (a 2D vector graphics renderer) together with a native window system,
such as Microsoft Windows or the X Window System.

Depending on its implementation EGL might be more or less tightly integrated
into the native window system.  Most EGL functions require an EGL display
connection, which can be obtained by calling :func:`~pogles.egl.eglGetDisplay`.
To initialize and query what EGL version is supported on the display
connection, call :func:`~pogles.egl.eglInitialize`.

Native window systems supporting EGL make a subset of their visuals (which may
also referred to as pixel formats, frame buffer configurations, or other
similar terms) available for client API rendering.  Windows and pixmaps created
with these visuals may also be rendered into using the native window system
API.

An EGL surface extends a native window or pixmap with additional auxillary
buffers.  These buffers include a color buffer, a depth buffer, a stencil
buffer and an alpha mask buffer.  Some or all of the buffers listed are
included in each EGL frame buffer configuration.

EGL supports rendering into three types of surfaces: windows, pixmaps and pixel
buffers (pbuffers).  EGL window and pixmap surfaces are associated with
corresponding resources of the native window system.  EGL pixel buffers are EGL
only resources, and do not accept rendering through the native window system.

To render using a client API into an EGL surface, you must determine the
appropriate EGL frame buffer configuration, which supports the rendering
features the application requires.  :func:`~pogles.egl.eglChooseConfig` returns
an :class:`~pogles.egl.EGLConfig` matching the required attributes, if any.  A
complete list of EGL frame buffer configurations can be obtained by calling
:func:`~pogles.egl.eglGetConfigs`.  Attributes of a particular EGL frame buffer
configuration can be queried by calling :func:`~pogles.egl.eglGetConfigAttrib`.

For EGL window and pixmap surfaces, a suitable native window or pixmap with a
matching native visual must be created first.  For a given EGL frame buffer
configuration, the native visual type and ID can be retrieved with a call to
:func:`~pogles.egl.eglGetConfigAttrib`.  For pixel buffers, no underlying
native resource is required.

To create an EGL window surface from a native window, call
:func:`~pogles.egl.eglCreateWindowSurface`.  To create an EGL pixmap surface
from a native pixmap, call :func:`~pogles.egl.eglCreatePixmapSurface`.  To
create a pixel buffer (pbuffer) surface (which has no associated native
buffer), call :func:`~pogles.egl.eglCreatePbufferSurface`.   To create a pixel
buffer (pbuffer) surface whose color buffer is provided by an OpenVG
``VGImage``, call :func:`~pogles.egl.eglCreatePbufferFromClientBuffer`.  Use
:func:`~pogles.egl.eglDestroySurface` to release previously allocated
resources.

An EGL rendering context is required to bind client API rendering to an EGL
surface.  An EGL surface and an EGL rendering context must have compatible EGL
frame buffer configurations.  To create an EGL rendering context, call
:func:`~pogles.egl.eglCreateContext`.  The type of client API context created
(OpenGL ES, OpenVG, etc.) can be changed by first calling
:func:`~pogles.egl.eglBindAPI`.

An EGL rendering context may be bound to one or two EGL surfaces by calling
:func:`~pogles.egl.eglMakeCurrent`.  This context/surface(s) association
specifies the current context and current surface, and is used by all client
API rendering commands for the bound context until
:func:`~pogles.egl.eglMakeCurrent` is called with different arguments.

Both native and client API commands may be used to operate on certain surfaces,
however, the two command streams are not synchronized.  Synchronization can be
explicitly specified using by calling :func:`~pogles.egl.eglWaitClient`,
:func:`~pogles.egl.eglWaitNative`, and possibly by calling other native window
system commands.


Functions
---------

.. toctree::
    :glob:
    :titlesonly:

    egl/*


Exceptions
----------

.. exception:: EGLException

    The exception raised by this module's functions.


Types
-----

.. class:: EGLConfig

    This is an opaque type that represents an EGL configuration.


.. class:: EGLContext

    This is an opaque type that represents an EGL context.


.. class:: EGLDisplay

    This is an opaque type that represents an EGL display.


.. class:: EGLNativeWindowType

    This is a platform specific opaque type that represents a native window.
    It is created by calling :func:`~pogles.platform.ppCreateNativeWindow` and
    passed to :func:`~pogles.egl.eglCreateWindowSurface`.


.. class:: EGLSurface

    This is an opaque type that represents an EGL surface.


Constants
---------

.. data:: EGL_VERSION_1_0
.. data:: EGL_VERSION_1_1
.. data:: EGL_VERSION_1_2
.. data:: EGL_VERSION_1_3
.. data:: EGL_VERSION_1_4

.. data:: EGL_DONT_CARE

.. data:: EGL_SUCCESS
.. data:: EGL_NOT_INITIALIZED
.. data:: EGL_BAD_ACCESS
.. data:: EGL_BAD_ALLOC
.. data:: EGL_BAD_ATTRIBUTE
.. data:: EGL_BAD_CONFIG
.. data:: EGL_BAD_CONTEXT
.. data:: EGL_BAD_CURRENT_SURFACE
.. data:: EGL_BAD_DISPLAY
.. data:: EGL_BAD_MATCH
.. data:: EGL_BAD_NATIVE_PIXMAP
.. data:: EGL_BAD_NATIVE_WINDOW
.. data:: EGL_BAD_PARAMETER
.. data:: EGL_BAD_SURFACE
.. data:: EGL_CONTEXT_LOST

.. data:: EGL_BUFFER_SIZE
.. data:: EGL_ALPHA_SIZE
.. data:: EGL_BLUE_SIZE
.. data:: EGL_GREEN_SIZE
.. data:: EGL_RED_SIZE
.. data:: EGL_DEPTH_SIZE
.. data:: EGL_STENCIL_SIZE
.. data:: EGL_CONFIG_CAVEAT
.. data:: EGL_CONFIG_ID
.. data:: EGL_LEVEL
.. data:: EGL_MAX_PBUFFER_HEIGHT
.. data:: EGL_MAX_PBUFFER_PIXELS
.. data:: EGL_MAX_PBUFFER_WIDTH
.. data:: EGL_NATIVE_RENDERABLE
.. data:: EGL_NATIVE_VISUAL_ID
.. data:: EGL_NATIVE_VISUAL_TYPE
.. data:: EGL_SAMPLES
.. data:: EGL_SAMPLE_BUFFERS
.. data:: EGL_SURFACE_TYPE
.. data:: EGL_TRANSPARENT_TYPE
.. data:: EGL_TRANSPARENT_BLUE_VALUE
.. data:: EGL_TRANSPARENT_GREEN_VALUE
.. data:: EGL_TRANSPARENT_RED_VALUE
.. data:: EGL_NONE
.. data:: EGL_BIND_TO_TEXTURE_RGB
.. data:: EGL_BIND_TO_TEXTURE_RGBA
.. data:: EGL_MIN_SWAP_INTERVAL
.. data:: EGL_MAX_SWAP_INTERVAL
.. data:: EGL_LUMINANCE_SIZE
.. data:: EGL_ALPHA_MASK_SIZE
.. data:: EGL_COLOR_BUFFER_TYPE
.. data:: EGL_RENDERABLE_TYPE
.. data:: EGL_MATCH_NATIVE_PIXMAP
.. data:: EGL_CONFORMANT

.. data:: EGL_SLOW_CONFIG
.. data:: EGL_NON_CONFORMANT_CONFIG
.. data:: EGL_TRANSPARENT_RGB
.. data:: EGL_RGB_BUFFER
.. data:: EGL_LUMINANCE_BUFFER

.. data:: EGL_NO_TEXTURE
.. data:: EGL_TEXTURE_RGB
.. data:: EGL_TEXTURE_RGBA
.. data:: EGL_TEXTURE_2D

.. data:: EGL_PBUFFER_BIT
.. data:: EGL_PIXMAP_BIT
.. data:: EGL_WINDOW_BIT
.. data:: EGL_VG_COLORSPACE_LINEAR_BIT
.. data:: EGL_VG_ALPHA_FORMAT_PRE_BIT
.. data:: EGL_MULTISAMPLE_RESOLVE_BOX_BIT
.. data:: EGL_SWAP_BEHAVIOR_PRESERVED_BIT

.. data:: EGL_OPENGL_ES_BIT
.. data:: EGL_OPENVG_BIT
.. data:: EGL_OPENGL_ES2_BIT
.. data:: EGL_OPENGL_BIT

.. data:: EGL_VENDOR
.. data:: EGL_VERSION
.. data:: EGL_EXTENSIONS
.. data:: EGL_CLIENT_APIS

.. data:: EGL_HEIGHT
.. data:: EGL_WIDTH
.. data:: EGL_LARGEST_PBUFFER
.. data:: EGL_TEXTURE_FORMAT
.. data:: EGL_TEXTURE_TARGET
.. data:: EGL_MIPMAP_TEXTURE
.. data:: EGL_MIPMAP_LEVEL
.. data:: EGL_RENDER_BUFFER
.. data:: EGL_VG_COLORSPACE
.. data:: EGL_VG_ALPHA_FORMAT
.. data:: EGL_HORIZONTAL_RESOLUTION
.. data:: EGL_VERTICAL_RESOLUTION
.. data:: EGL_PIXEL_ASPECT_RATIO
.. data:: EGL_SWAP_BEHAVIOR
.. data:: EGL_MULTISAMPLE_RESOLVE

.. data:: EGL_BACK_BUFFER
.. data:: EGL_SINGLE_BUFFER

.. data:: EGL_VG_COLORSPACE_sRGB
.. data:: EGL_VG_COLORSPACE_LINEAR

.. data:: EGL_VG_ALPHA_FORMAT_NONPRE
.. data:: EGL_VG_ALPHA_FORMAT_PRE

.. data:: EGL_DISPLAY_SCALING

.. data:: EGL_UNKNOWN

.. data:: EGL_BUFFER_PRESERVED
.. data:: EGL_BUFFER_DESTROYED

.. data:: EGL_OPENVG_IMAGE

.. data:: EGL_CONTEXT_CLIENT_TYPE

.. data:: EGL_CONTEXT_CLIENT_VERSION

.. data:: EGL_MULTISAMPLE_RESOLVE_DEFAULT
.. data:: EGL_MULTISAMPLE_RESOLVE_BOX

.. data:: EGL_OPENGL_ES_API
.. data:: EGL_OPENVG_API
.. data:: EGL_OPENGL_API

.. data:: EGL_DRAW
.. data:: EGL_READ

.. data:: EGL_CORE_NATIVE_ENGINE

.. data:: EGL_COLORSPACE
.. data:: EGL_ALPHA_FORMAT
.. data:: EGL_COLORSPACE_sRGB
.. data:: EGL_COLORSPACE_LINEAR
.. data:: EGL_ALPHA_FORMAT_NONPRE
.. data:: EGL_ALPHA_FORMAT_PRE
