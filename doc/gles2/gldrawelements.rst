:func:`~pogles.gles2.glDrawElements`
====================================

.. function:: pogles.gles2.glDrawElements(mode, count, type, indices)

    Render primitives from array data.

    :param mode: is the kind of primitives to render.  It must be
            :data:`~pogles.gles2.GL_POINTS`,
            :data:`~pogles.gles2.GL_LINE_STRIP`,
            :data:`~pogles.gles2.GL_LINE_LOOP`, :data:`~pogles.gles2.GL_LINES`,
            :data:`~pogles.gles2.GL_TRIANGLE_STRIP`,
            :data:`~pogles.gles2.GL_TRIANGLE_FAN` or
            :data:`~pogles.gles2.GL_TRIANGLES`.
    :type mode: int
    :param count: is the number of elements to be rendered.
    :type count: int
    :param type: is the type of the values in *indices*.  It must be
            :data:`~pogles.gles2.GL_UNSIGNED_BYTE` or
            :data:`~pogles.gles2.GL_UNSIGNED_SHORT`.
    :type type: int
    :param indices: is a pointer to the location where the indices are stored.
    :type indices: object that implements the buffer protocol
    :raises: :exc:`~pogles.gles2.GLException`


Description
-----------

:func:`~pogles.gles2.glDrawElements` specifies multiple geometric primitives
with very few subroutine calls.  Instead of calling a GL function to pass each
vertex attribute, you can use :func:`~pogles.gles2.glVertexAttribPointer` to
prespecify separate arrays of vertex attributes and use them to construct a
sequence of primitives with a single call to
:func:`~pogles.gles2.glDrawElements`.

When :func:`~pogles.gles2.glDrawElements` is called, it uses *count* sequential
elements from an enabled array, starting at *indices* to construct a sequence
of geometric primitives.  *mode* specifies what kind of primitives are
constructed and how the array elements construct these primitives.  If more
than one array is enabled, each is used.

To enable and disable a generic vertex attribute array, call
:func:`~pogles.gles2.glEnableVertexAttribArray` and
:func:`~pogles.gles2.glDisableVertexAttribArray`.


Notes
-----

If the current program object, as set by :func:`~pogles.gles2.glUseProgram`, is
invalid, rendering results are undefined.  However, no error is generated for
this case.
