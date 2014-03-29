:func:`~pogles.gles2.glDepthMask`
=================================

.. function:: pogles.gles2.glDepthMask(flag)

    Enable or disable writing into the depth buffer.

    :param flag: specifies whether the depth buffer is enabled for writing.
    :type flag: bool


Description
-----------

:func:`~pogles.gles2.glDepthMask` specifies whether the depth buffer is enabled
for writing.  If *flag* is ``False``, depth buffer writing is disabled.
Otherwise, it is enabled.  Initially, depth buffer writing is enabled.
