:func:`~pogles.gles2.glClearStencil`
====================================

.. function:: pogles.gles2.glClearStencil(s)

    Specify the clear value for the stencil buffer.

    :param s: is the index used when the stencil buffer is cleared.  The
            initial value is 0.
    :type s: int


Description
-----------

:func:`~pogles.gles2.glClearStencil` specifies the index used by
:func:`~pogles.gles2.glClear` to clear the stencil buffer.  *s* is masked with
:math:`2^m - 1`, where **m** is the number of bits in the stencil buffer.
