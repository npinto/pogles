:func:`~pogles.gles2.glBlendColor`
==================================

.. function:: pogles.gles2.glBlendColor(red, green, blue, alpha)

    Set the blend color.

    :param red: is the red component.
    :type red: float
    :param green: is the green component.
    :type green: float
    :param blue: is the blue component.
    :type blue: float
    :param alpha: is the alpha component.
    :type alpha: float


Description
-----------

The :data:`~pogles.gles2.GL_BLEND_COLOR` may be used to calculate the source
and destination blending factors.  The color components are clamped to the
range :math:`[0,1]` before being stored.  See :func:`~pogles.gles2.glBlendFunc`
for a complete description of the blending operations.  Initially the
:data:`~pogles.gles2.GL_BLEND_COLOR` is set to (0, 0, 0, 0).
