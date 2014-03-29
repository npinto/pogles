:func:`~pogles.gles2.glStencilOp`
=================================

.. function:: pogles.gles2.glStencilOp(sfail, dpfail, dppass)

    Set front and back stencil test actions.

    :param sfail: is the action to take when the stencil test fails.  It must
            be :data:`~pogles.gles2.GL_KEEP`, :data:`~pogles.gles2.GL_ZERO`,
            :data:`~pogles.gles2.GL_REPLACE`, :data:`~pogles.gles2.GL_INCR`,
            :data:`~pogles.gles2.GL_INCR_WRAP`, :data:`~pogles.gles2.GL_DECR`,
            :data:`~pogles.gles2.GL_DECR_WRAP` or
            :data:`~pogles.gles2.GL_INVERT`.  The initial value is
            :data:`~pogles.gles2.GL_KEEP`.
    :type sfail: int
    :param dpfail: is the stencil action when the stencil test passes, but the
            depth test fails.  *dpfail* accepts the same values as *sfail*.
            The initial value is :data:`~pogles.gles2.GL_KEEP`.
    :type dpfail: int
    :param dppass: is the stencil action when both the stencil test and the
            depth test pass, or when the stencil test passes and either there
            is no depth buffer or depth testing is not enabled.  *dppass*
            accepts the same values as *sfail*.  The initial value is
            :data:`~pogles.gles2.GL_KEEP`.
    :type dppass: int
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
comparison between the value in the stencil buffer and a reference value.  To
enable and disable the test, call :func:`~pogles.gles2.glEnable` and
:func:`~pogles.gles2.glDisable` with argument
:data:`~pogles.gles2.GL_STENCIL_TEST`; to control it, call
:func:`~pogles.gles2.glStencilFunc` or
:func:`~pogles.gles2.glStencilFuncSeparate`.

There can be two separate sets of *sfail*, *dpfail* and *dppass* parameters;
one affects back facing polygons, and the other affects front facing polygons
as well as other non-polygon primitives.  :func:`~pogles.gles2.glStencilOp`
sets both front and back stencil state to the same values.  Use
:func:`~pogles.gles2.glStencilOpSeparate` to set front and back stencil state
to different values.

:func:`~pogles.gles2.glStencilOp` takes three arguments that indicate what
happens to the stored stencil value while stenciling is enabled.  If the
stencil test fails, no change is made to the pixel's color or depth buffers,
and *sfail* specifies what happens to the stencil buffer contents.  The
following eight actions are possible.

:data:`~pogles.gles2.GL_KEEP`
    Keeps the current value.

:data:`~pogles.gles2.GL_ZERO`
    Sets the stencil buffer value to 0.

:data:`~pogles.gles2.GL_REPLACE`
    Sets the stencil buffer value to *ref*, as specified by
    :func:`~pogles.gles2.glStencilFunc`.

:data:`~pogles.gles2.GL_INCR`
    Increments the current stencil buffer value.  Clamps to the maximum
    representable unsigned value.

:data:`~pogles.gles2.GL_INCR_WRAP`
    Increments the current stencil buffer value.  Wraps stencil buffer value to
    zero when incrementing the maximum representable unsigned value.

:data:`~pogles.gles2.GL_DECR`
    Decrements the current stencil buffer value.  Clamps to 0.

:data:`~pogles.gles2.GL_DECR_WRAP`
    Decrements the current stencil buffer value.  Wraps stencil buffer value to
    the maximum representable unsigned value when decrementing a stencil buffer
    value of zero.

:data:`~pogles.gles2.GL_INVERT`
    Bitwise inverts the current stencil buffer value.

Stencil buffer values are treated as unsigned integers.  When incremented and
decremented, values are clamped to :math:`0` and :math:`2^n-1`, where :math:`n`
is the value returned by querying :data:`~pogles.gles2.GL_STENCIL_BITS`.

The other two arguments to :func:`~pogles.gles2.glStencilOp` specify stencil
buffer actions that depend on whether subsequent depth buffer tests succeed
(*dppass*) or fail (*dpfail*) (see :func:`~pogles.gles2.glDepthFunc`).  The
actions are specified using the same eight symbolic constants as  *sfail*.
Note that *dpfail* is ignored when there is no depth buffer, or when the depth
buffer is not enabled.  In these cases, *sfail* and *dppass* specify stencil
action when the stencil test fails and passes, respectively.


Notes
-----

Initially the stencil test is disabled.  If there is no stencil buffer, no
stencil modification can occur and it is as if the stencil tests always pass,
regardless of any call to :func:`~pogles.gles2.glStencilOp`.

:func:`~pogles.gles2.glStencilOp` is the same as calling
:func:`~pogles.gles2.glStencilOpSeparate` with *face* set to
:data:`~pogles.gles2.GL_FRONT_AND_BACK`.
