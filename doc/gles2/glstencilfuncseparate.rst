:func:`~pogles.gles2.glStencilFuncSeparate`
===========================================

.. function:: pogles.gles2.glStencilFuncSeparate(face, func, ref, mask)

    Set front and/or back function and reference value for stencil testing.

    :param face: specifies whether the front and/or back stencil state is
            updated.  It must be :data:`~pogles.gles2.GL_FRONT`,
            :data:`~pogles.gles2.GL_BACK` or
            :data:`~pogles.gles2.GL_FRONT_AND_BACK`.
    :type face: int
    :param func: is the test function.  It must be
            :data:`~pogles.gles2.GL_NEVER`, :data:`~pogles.gles2.GL_LESS`,
            :data:`~pogles.gles2.GL_LEQUAL`, :data:`~pogles.gles2.GL_GREATER`,
            :data:`~pogles.gles2.GL_GEQUAL`, :data:`~pogles.gles2.GL_EQUAL`,
            :data:`~pogles.gles2.GL_NOTEQUAL` or
            :data:`~pogles.gles2.GL_ALWAYS`.  The initial value is
            :data:`~pogles.gles2.GL_ALWAYS`.
    :type func: int
    :param ref: is the reference value for the stencil test.  *ref* is clamped
            to the range :math:`[0,2^n-1]`, where :math:`n` is the number of
            bitplanes in the stencil buffer.  The initial value is 0.
    :type ref: int
    :param mask: is the mask that is ANDed with both the reference value and
            the stored stencil value when the test is done.  The initial value
            is all 1s.
    :type mask: int
    :raises: :exc:`~pogles.gles2.GLException`


Description
-----------

Stenciling, like depth-buffering, enables and disables drawing on a per-pixel
basis.  You draw into the stencil planes using GL drawing primitives, then
render geometry and images, using the stencil planes to mask out portions of
the screen.  Stenciling is typically used in multipass rendering algorithms to
achieve special effects, such as decals, outlining, and constructive solid
geometry rendering.

The stencil test conditionally eliminates a pixel based on the outcome of a
comparison between the reference value and the value in the stencil buffer.  To
enable and disable the test, call :func:`~pogles.gles2.glEnable` and
:func:`~pogles.gles2.glDisable` with argument
:data:`~pogles.gles2.GL_STENCIL_TEST`.  To specify actions based on the outcome
of the stencil test, call :func:`~pogles.gles2.glStencilOp` or
:func:`~pogles.gles2.glStencilOpSeparate`.

There can be two separate sets of *func*, *ref* and *mask* parameters; one
affects back-facing polygons, and the other affects front-facing polygons as
well as other non-polygon primitives.  :func:`~pogles.gles2.glStencilFunc` sets
both front and back stencil state to the same values, as if
:func:`~pogles.gles2.glStencilFuncSeparate` were called with face set to
:data:`~pogles.gles2.GL_FRONT_AND_BACK`.

*func* is a symbolic constant that determines the stencil comparison function.
It accepts one of eight values, shown in the following list.  *ref* is an
integer reference value that is used in the stencil comparison.  It is clamped
to the range :math:`[0,2^n-1]`, where :math:`n` is the number of bitplanes in
the stencil buffer.  *mask* is bitwise ANDed with both the reference value and
the stored stencil value, with the ANDed values participating in the
comparison.

If ``stencil`` represents the value stored in the corresponding stencil buffer
location, the following list shows the effect of each comparison function that
can be specified by *func*.  Only if the comparison succeeds is the pixel
passed through to the next stage in the rasterization process (see
:func:`~pogles.gles2.glStencilOp`).  All tests treat stencil values as unsigned
integers in the range :math:`[0,2^n-1]`, where :math:`n` is the number of
bitplanes in the stencil buffer.

The following values are accepted by *func*:

:data:`~pogles.gles2.GL_NEVER`
    Always fails.

:data:`~pogles.gles2.GL_LESS`
    Passes if ``(ref & mask) < (stencil & mask)``.

:data:`~pogles.gles2.GL_LEQUAL`
    Passes if ``(ref & mask) <= (stencil & mask)``.

:data:`~pogles.gles2.GL_GREATER`
    Passes if ``(ref & mask) > (stencil & mask)``.

:data:`~pogles.gles2.GL_GEQUAL`
    Passes if ``(ref & mask) >= (stencil & mask)``.

:data:`~pogles.gles2.GL_EQUAL`
    Passes if ``(ref & mask) = (stencil & mask)``.

:data:`~pogles.gles2.GL_NOTEQUAL`
    Passes if ``(ref & mask) != (stencil & mask)``.

:data:`~pogles.gles2.GL_ALWAYS`
    Always passes.


Notes
-----

Initially, the stencil test is disabled.  If there is no stencil buffer, no
stencil modification can occur and it is as if the stencil test always passes.
