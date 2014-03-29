:func:`~pogles.gles2.glBindRenderbuffer`
========================================

.. function:: pogles.gles2.glBindRenderbuffer(target, renderbuffer)

    Bind a named renderbuffer object.

    :param target: is the target to which the renderbuffer object is bound.  It
            must be :data:`~pogles.gles2.GL_RENDERBUFFER`.
    :type target: int
    :param renderbuffer: is the name of a renderbuffer object.
    :type renderbuffer: int
    :raises: :exc:`~pogles.gles2.GLException`


Description
-----------

A renderbuffer is a data storage object containing a single image of a
renderable internal format.  A renderbuffer's image may be attached to a
framebuffer object to use as a destination for rendering and as a source for
reading.

:func:`~pogles.gles2.glBindRenderbuffer` lets you create or use a named
renderbuffer object.  Calling :func:`~pogles.gles2.glBindRenderbuffer` with
*target* set to :data:`~pogles.gles2.GL_RENDERBUFFER` and *renderbuffer* set to
the name of the new renderbuffer object binds the renderbuffer object name.
When a renderbuffer object is bound, the previous binding is automatically
broken.

Renderbuffer object names are unsigned integers.  The value zero is reserved,
but there is no default renderbuffer object.  Instead, *renderbuffer* set to
zero effectively unbinds any renderbuffer object previously bound.
Renderbuffer object names and the corresponding renderbuffer object contents
are local to the shared object space of the current GL rendering context.

You may use :func:`~pogles.gles2.glGenRenderbuffers` to generate a set of new
renderbuffer object names.

The state of a renderbuffer object immediately after it is first bound is a
zero-sized memory buffer with format :data:`~pogles.gles2.GL_RGBA4` and
zero-sized red, green, blue, alpha, depth, and stencil pixel depths.

While a non-zero renderbuffer object name is bound, GL operations on target
:data:`~pogles.gles2.GL_RENDERBUFFER` affect the bound renderbuffer object, and
queries of target :data:`~pogles.gles2.GL_RENDERBUFFER` return state from the
bound renderbuffer object. While renderbuffer object name zero is bound, as in
the initial state, attempts to modify or query state on target
:data:`~pogles.gles2.GL_RENDERBUFFER` generates an
:data:`~pogles.gles2.GL_INVALID_OPERATION` error.

A renderbuffer object binding created with
:func:`~pogles.gles2.glBindRenderbuffer` remains active until a different
renderbuffer object name is bound, or until the bound renderbuffer object is
deleted with :func:`~pogles.gles2.glDeleteRenderbuffers`.
