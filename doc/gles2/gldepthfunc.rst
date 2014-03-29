:func:`~pogles.gles2.glDepthFunc`
=================================

.. function:: pogles.gles2.glDepthFunc(func)

    Specify the value used for depth buffer comparisons.

    :param func: is the depth comparison function.  It must be
            :data:`~pogles.gles2.GL_NEVER`, :data:`~pogles.gles2.GL_LESS`,
            :data:`~pogles.gles2.GL_EQUAL`, :data:`~pogles.gles2.GL_LEQUAL`,
            :data:`~pogles.gles2.GL_GREATER`,
            :data:`~pogles.gles2.GL_NOTEQUAL`, :data:`~pogles.gles2.GL_GEQUAL`
            or :data:`~pogles.gles2.GL_ALWAYS`.  The initial value is
            :data:`~pogles.gles2.GL_LESS`.
    :type func: int
    :raises: :exc:`~pogles.gles2.GLException`


Description
-----------

:func:`~pogles.gles2.glDepthFunc` specifies the function used to compare each
incoming pixel depth value with the depth value present in the depth buffer.
The comparison is performed only if depth testing is enabled.
(See :func:`~pogles.gles2.glEnable` and :func:`~pogles.gles2.glDisable` of
:data:`~pogles.gles2.GL_DEPTH_TEST`.)

*func* specifies the conditions under which the pixel will be drawn.  The
comparison functions are as follows:

:data:`~pogles.gles2.GL_NEVER`
    Never passes.

:data:`~pogles.gles2.GL_LESS`
    Passes if the incoming depth value is less than the stored depth value.

:data:`~pogles.gles2.GL_EQUAL`
    Passes if the incoming depth value is equal to the stored depth value.

:data:`~pogles.gles2.GL_LEQUAL`
    Passes if the incoming depth value is less than or equal to the stored
    depth value.

:data:`~pogles.gles2.GL_GREATER`
    Passes if the incoming depth value is greater than the stored depth value.

:data:`~pogles.gles2.GL_NOTEQUAL`
    Passes if the incoming depth value is not equal to the stored depth value.

:data:`~pogles.gles2.GL_GEQUAL`
    Passes if the incoming depth value is greater than or equal to the stored
    depth value.

:data:`~pogles.gles2.GL_ALWAYS`
    Always passes.

The initial value of *func* is :data:`~pogles.gles2.GL_LESS`.  Initially, depth
testing is disabled.  If depth testing is disabled or no depth buffer exists,
it is as if the depth test always passes.


Notes
-----

Even if the depth buffer exists and the depth mask is non-zero, the depth
buffer is not updated if the depth test is disabled.
