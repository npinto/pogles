:func:`~pogles.gles2.glBindBuffer`
==================================

.. function:: pogles.gles2.glBindBuffer(target, buffer)

    Bind a named buffer object.

    :param target: is the target to which the buffer object is bound.  It must
            be :data:`~pogles.gles2.GL_ARRAY_BUFFER` or
            :data:`~pogles.gles2.GL_ELEMENT_ARRAY_BUFFER`.
    :type target: int
    :param buffer: is the name of a buffer object.
    :type buffer: int
    :raises: :exc:`~pogles.gles2.GLException`


Description
-----------

:func:`~pogles.gles2.glBindBuffer` lets you create or use a named buffer
object.  Calling :func:`~pogles.gles2.glBindBuffer` with *target* set to
:data:`~pogles.gles2.GL_ARRAY_BUFFER` or
:data:`~pogles.gles2.GL_ELEMENT_ARRAY_BUFFER` and *buffer* set to the name of
the new buffer object binds the buffer object name to the target.  When a
buffer object is bound to a target, the previous binding for that target is
automatically broken.

Buffer object names are unsigned integers.  The value zero is reserved, but
there is no default buffer object for each buffer object target.  Instead,
buffer set to zero effectively unbinds any buffer object previously bound, and
restores client memory usage for that buffer object target.  Buffer object
names and the corresponding buffer object contents are local to the shared
object space of the current GL rendering context.

You may use :func:`~pogles.gles2.glGenBuffers` to generate a set of new buffer
object names.

The state of a buffer object immediately after it is first bound is a
zero-sized memory buffer with :data:`~pogles.gles2.GL_STATIC_DRAW` usage.

While a non-zero buffer object name is bound, GL operations on the target to
which it is bound affect the bound buffer object, and queries of the target to
which it is bound return state from the bound buffer object.  While buffer
object name zero is bound, as in the initial state, attempts to modify or query
state on the target to which it is bound generates an
:data:`~pogles.gles2.GL_INVALID_OPERATION` error.

When vertex array pointer state is changed by a call to
:func:`~pogles.gles2.glVertexAttribPointer`, the current buffer object binding
(:data:`~pogles.gles2.GL_ARRAY_BUFFER_BINDING`) is copied into the
corresponding client state for the vertex attrib array being changed, one of
the indexed :data:`~pogles.gles2.GL_VERTEX_ATTRIB_ARRAY_BUFFER_BINDING`.  While
a non-zero buffer object is bound to the :data:`~pogles.gles2.GL_ARRAY_BUFFER`
target, the vertex array pointer parameter that is traditionally interpreted as
a pointer to client-side memory is instead interpreted as an offset within the
buffer object measured in basic machine units.

While a non-zero buffer object is bound to the
:data:`~pogles.gles2.GL_ELEMENT_ARRAY_BUFFER` target, the indices parameter of
:func:`~pogles.gles2.glDrawElements` that is traditionally interpreted as a
pointer to client-side memory is instead interpreted as an offset within the
buffer object measured in basic machine units.

A buffer object binding created with :func:`~pogles.gles2.glBindBuffer` remains
active until a different buffer object name is bound to the same target, or
until the bound buffer object is deleted with
:func:`~pogles.gles2.glDeleteBuffers`.

Once created, a named buffer object may be re-bound to any target as often as
needed.  However, the GL implementation may make choices about how to optimize
the storage of a buffer object based on its initial binding target.
