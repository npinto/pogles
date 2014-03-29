:func:`~pogles.gles2.glClearDepthf`
===================================

.. function:: pogles.gles2.glClearDepthf(depth)

    Specify the clear value for the depth buffer.

    :param depth: is the depth value used when the depth buffer is cleared.
            The initial value is 1.
    :type depth: float


Description
-----------

:func:`~pogles.gles2.glClearDepthf` specifies the depth value used by
:func:`~pogles.gles2.glClear` to clear the depth buffer.  Values specified by
:func:`~pogles.gles2.glClearDepthf` are clamped to the range :math:`[0,1]`.
