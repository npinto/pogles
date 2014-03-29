:func:`~pogles.gles2.glDrawArrays`
==================================

.. function:: pogles.gles2.glDrawArrays(mode, first, count)

    Render primitives from array data.

    :param mode: is the kind of primitives to render.  It must be
            :data:`~pogles.gles2.GL_POINTS`,
            :data:`~pogles.gles2.GL_LINE_STRIP`,
            :data:`~pogles.gles2.GL_LINE_LOOP`, :data:`~pogles.gles2.GL_LINES`,
            :data:`~pogles.gles2.GL_TRIANGLE_STRIP`,
            :data:`~pogles.gles2.GL_TRIANGLE_FAN` or
            :data:`~pogles.gles2.GL_TRIANGLES`.
    :type mode: int
    :param first: is the starting index in the enabled arrays.
    :type first: int
    :param count: is the number of indices to be rendered.
    :type count: int
    :raises: :exc:`~pogles.gles2.GLException`


Description
-----------

:func:`~pogles.gles2.glDrawArrays` specifies multiple geometric primitives with
very few subroutine calls.  Instead of calling a GL procedure to pass each
individual vertex attribute, you can use
:func:`~pogles.gles2.glVertexAttribPointer` to prespecify separate arrays of
vertices, normals, and colors and use them to construct a sequence of
primitives with a single call to :func:`~pogles.gles2.glDrawArrays`.

When :func:`~pogles.gles2.glDrawArrays` is called, it uses *count* sequential
elements from each enabled array to construct a sequence of geometric
primitives, beginning with element *first*.  *mode* specifies what kind of
primitives are constructed and how the array elements construct those
primitives.

To enable and disable a generic vertex attribute array, call
:func:`~pogles.gles2.glEnableVertexAttribArray` and
:func:`~pogles.gles2.glDisableVertexAttribArray`.


Notes
-----

If the current program object, as set by :func:`~pogles.gles2.glUseProgram`, is
invalid, rendering results are undefined.  However, no error is generated for
this case.
