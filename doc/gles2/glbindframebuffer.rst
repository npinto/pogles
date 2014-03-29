:func:`~pogles.gles2.glBindFramebuffer`
=======================================

.. function:: pogles.gles2.glBindFramebuffer(target, framebuffer)

    Bind a named framebuffer object.

    :param target: is the target to which the framebuffer object is bound.  It
            must be :data:`~pogles.gles2.GL_FRAMEBUFFER`.
    :type target: int
    :param framebuffer: is the name of a framebuffer object.
    :type framebuffer: int
    :raises: :exc:`~pogles.gles2.GLException`


Description
-----------

:func:`~pogles.gles2.glBindFramebuffer` lets you create or use a named
framebuffer object.  Calling :func:`~pogles.gles2.glBindFramebuffer` with
*target* set to :data:`~pogles.gles2.GL_FRAMEBUFFER` and *framebuffer* set to
the name of the new framebuffer object binds the framebuffer object name.  When
a framebuffer object is bound, the previous binding is automatically broken.

Framebuffer object names are unsigned integers.  The value zero is reserved to
represent the default framebuffer provided by the windowing system.
Framebuffer object names and the corresponding framebuffer object contents are
local to the shared object space of the current GL rendering context.

You may use :func:`~pogles.gles2.glGenFramebuffers` to generate a set of new
framebuffer object names.

The state of a framebuffer object immediately after it is first bound is three
attachment points (:data:`~pogles.gles2.GL_COLOR_ATTACHMENT0`,
:data:`~pogles.gles2.GL_DEPTH_ATTACHMENT` and
:data:`~pogles.gles2.GL_STENCIL_ATTACHMENT`) each with
:data:`~pogles.gles2.GL_NONE` as the object type.

While a non-zero framebuffer object name is bound, GL operations on target
:data:`~pogles.gles2.GL_FRAMEBUFFER` affect the bound framebuffer object, and
queries of target :data:`~pogles.gles2.GL_FRAMEBUFFER` or of framebuffer
details such as :data:`~pogles.gles2.GL_DEPTH_BITS` return state from the bound
framebuffer object.  While framebuffer object name zero is bound, as in the
initial state, attempts to modify or query state on target
:data:`~pogles.gles2.GL_FRAMEBUFFER` generates an
:data:`~pogles.gles2.GL_INVALID_OPERATION` error.

While a non-zero framebuffer object name is bound, all rendering to the
framebuffer (with :func:`~pogles.gles2.glDrawArrays` and
:func:`~pogles.gles2.glDrawElements`) and reading from the framebuffer (with
:func:`~pogles.gles2.glReadPixels`, :func:`~pogles.gles2.glCopyTexImage2D` or
:func:`~pogles.gles2.glCopyTexSubImage2D`) use the images attached to the
application-created framebuffer object rather than the default
window-system-provided framebuffer.

Application created framebuffer objects (i.e. those with a non-zero name)
differ from the default window-system-provided framebuffer in a few important
ways.  First, they have modifiable attachment points for a color buffer, a
depth buffer, and a stencil buffer to which framebuffer attachable images may
be attached and detached.  Second, the size and format of the attached images
are controlled entirely within the GL and are not affected by window-system
events, such as pixel format selection, window resizes, and display mode
changes.  Third, when rendering to or reading from an application created
framebuffer object, the pixel ownership test always succeeds (i.e. they own all
their pixels).  Fourth, there are no visible color buffer bitplanes, only a
single "off-screen" color image attachment, so there is no sense of front and
back buffers or swapping.  Finally, there is no multisample buffer, so the
value of the implementation-dependent state variables
:data:`~pogles.gles2.GL_SAMPLES` and :data:`~pogles.gles2.GL_SAMPLE_BUFFERS`
are both zero for application created framebuffer objects.

A framebuffer object binding created with
:func:`~pogles.gles2.glBindFramebuffer` remains active until a different
framebuffer object name is bound, or until the bound framebuffer object is
deleted with :func:`~pogles.gles2.glDeleteFramebuffers`.


Notes
-----

Queries of implementation-dependent pixel depths and related state are derived
from the currently bound framebuffer object.  These include
:data:`~pogles.gles2.GL_RED_BITS`, :data:`~pogles.gles2.GL_GREEN_BITS`,
:data:`~pogles.gles2.GL_BLUE_BITS`, :data:`~pogles.gles2.GL_ALPHA_BITS`,
:data:`~pogles.gles2.GL_DEPTH_BITS`, :data:`~pogles.gles2.GL_STENCIL_BITS`,
:data:`~pogles.gles2.GL_IMPLEMENTATION_COLOR_READ_TYPE`,
:data:`~pogles.gles2.GL_IMPLEMENTATION_COLOR_READ_FORMAT`,
:data:`~pogles.gles2.GL_SAMPLES` and :data:`~pogles.gles2.GL_SAMPLE_BUFFERS`.
