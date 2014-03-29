:func:`~pogles.gles2.glBlendFuncSeparate`
=========================================

.. function:: pogles.gles2.glBlendFuncSeparate(srcRGB, dstRGB, srcAlpha, dstAlpha)

    Specify pixel arithmetic for RGB and alpha components separately.

    :param srcRGB: specifies how the red, green and blue blending factors are
            computed.  It must be :data:`~pogles.gles2.GL_ZERO`,
            :data:`~pogles.gles2.GL_ONE`, :data:`~pogles.gles2.GL_SRC_COLOR`,
            :data:`~pogles.gles2.GL_ONE_MINUS_SRC_COLOR`,
            :data:`~pogles.gles2.GL_DST_COLOR`,
            :data:`~pogles.gles2.GL_ONE_MINUS_DST_COLOR`,
            :data:`~pogles.gles2.GL_SRC_ALPHA`,
            :data:`~pogles.gles2.GL_ONE_MINUS_SRC_ALPHA`,
            :data:`~pogles.gles2.GL_DST_ALPHA`,
            :data:`~pogles.gles2.GL_ONE_MINUS_DST_ALPHA`,
            :data:`~pogles.gles2.GL_CONSTANT_COLOR`,
            :data:`~pogles.gles2.GL_ONE_MINUS_CONSTANT_COLOR`,
            :data:`~pogles.gles2.GL_CONSTANT_ALPHA`,
            :data:`~pogles.gles2.GL_ONE_MINUS_CONSTANT_ALPHA` or
            :data:`~pogles.gles2.GL_SRC_ALPHA_SATURATE`.  The initial value is
            :data:`~pogles.gles2.GL_ONE`.
    :type srcRGB: int
    :param dstRGB: specifies how the red, green and blue destination blending
            factors are computed.  It must be :data:`~pogles.gles2.GL_ZERO`,
            :data:`~pogles.gles2.GL_ONE`, :data:`~pogles.gles2.GL_SRC_COLOR`,
            :data:`~pogles.gles2.GL_ONE_MINUS_SRC_COLOR`,
            :data:`~pogles.gles2.GL_DST_COLOR`,
            :data:`~pogles.gles2.GL_ONE_MINUS_DST_COLOR`,
            :data:`~pogles.gles2.GL_SRC_ALPHA`,
            :data:`~pogles.gles2.GL_ONE_MINUS_SRC_ALPHA`,
            :data:`~pogles.gles2.GL_DST_ALPHA`,
            :data:`~pogles.gles2.GL_ONE_MINUS_DST_ALPHA`,
            :data:`~pogles.gles2.GL_CONSTANT_COLOR`,
            :data:`~pogles.gles2.GL_ONE_MINUS_CONSTANT_COLOR`,
            :data:`~pogles.gles2.GL_CONSTANT_ALPHA` or
            :data:`~pogles.gles2.GL_ONE_MINUS_CONSTANT_ALPHA`.  The initial
            value is :data:`~pogles.gles2.GL_ZERO`.
    :type dstRGB: int
    :param srcAlpha: specifies how the alpha source blending factor is
            computed.  The same values are accepted as for *srcRGB*.  The
            initial value is :data:`~pogles.gles2.GL_ONE`.
    :type srcAlpha: int
    :param dstAlpha: specifies how the alpha destination blending factor is
            computed.  The same values are accepted as for *dstRGB*.  The
            initial value is :data:`~pogles.gles2.GL_ZERO`.
    :type dstAlpha: int
    :raises: :exc:`~pogles.gles2.GLException`


Description
-----------

Pixels can be drawn using a function that blends the incoming (source) RGBA
values with the RGBA values that are already in the frame buffer (the
destination values).  Blending is initially disabled.  Use
:func:`~pogles.gles2.glEnable` and :func:`~pogles.gles2.glDisable` with
argument :data:`~pogles.gles2.GL_BLEND` to enable and disable blending.

:func:`~pogles.gles2.glBlendFuncSeparate` defines the operation of blending
when it is enabled.  *srcRGB* specifies which method is used to scale the
source RGB-color components.  *dstRGB* specifies which method is used to scale
the destination RGB-color components.  Likewise, *srcAlpha* specifies which
method is used to scale the source alpha color component, and *dstAlpha*
specifies which method is used to scale the destination alpha component.  The
possible methods are described in the following table.  Each method defines
four scale factors, one each for red, green, blue and alpha.

In the table and in subsequent equations, source and destination color
components are referred to as :math:`(R_s, G_s, B_s, A_s)` and
:math:`(R_d, G_d, B_d, A_d)`.  The color specified by
:func:`~pogles.gles2.glBlendColor` is referred to as
:math:`(R_c, G_c, B_c, A_c)`.  They are understood to have integer values
between 0 and :math:`(k_R, k_G, k_B, k_A)`, where :math:`k = 2^{m_c} - 1` and
:math:`(m_R, m_G, m_B, m_A)` is the number of red, green, blue and alpha
bitplanes.

Source and destination scale factors are referred to as
:math:`(s_R, s_G, s_B, s_A)` and :math:`(d_R, d_G, d_B, d_A)`. All scale
factors have range :math:`[0,1]`.

+---------------------------------------------------+------------------------------------------------------------------------------------+-----------------------------+
| **Parameter**                                     | **RGB Factor**                                                                     | **Alpha Factor**            |
+---------------------------------------------------+------------------------------------------------------------------------------------+-----------------------------+
| :data:`~pogles.gles2.GL_ZERO`                     | :math:`(0, 0, 0)`                                                                  | :math:`0`                   |
+---------------------------------------------------+------------------------------------------------------------------------------------+-----------------------------+
| :data:`~pogles.gles2.GL_ONE`                      | :math:`(1, 1, 1)`                                                                  | :math:`1`                   |
+---------------------------------------------------+------------------------------------------------------------------------------------+-----------------------------+
| :data:`~pogles.gles2.GL_SRC_COLOR`                | :math:`\left(\frac{R_s}{k_R}, \frac{G_s}{k_G}, \frac{B_s}{k_B}\right)`             | :math:`\frac{A_s}{k_A}`     |
+---------------------------------------------------+------------------------------------------------------------------------------------+-----------------------------+
| :data:`~pogles.gles2.GL_ONE_MINUS_SRC_COLOR`      | :math:`(1, 1, 1) - \left(\frac{R_s}{k_R}, \frac{G_s}{k_G}, \frac{B_s}{k_B}\right)` | :math:`1 - \frac{A_s}{k_A}` |
+---------------------------------------------------+------------------------------------------------------------------------------------+-----------------------------+
| :data:`~pogles.gles2.GL_DST_COLOR`                | :math:`\left(\frac{R_d}{k_R}, \frac{G_d}{k_G}, \frac{B_d}{k_B}\right)`             | :math:`\frac{A_d}{k_A}`     |
+---------------------------------------------------+------------------------------------------------------------------------------------+-----------------------------+
| :data:`~pogles.gles2.GL_ONE_MINUS_DST_COLOR`      | :math:`(1, 1, 1) - \left(\frac{R_d}{k_R}, \frac{G_d}{k_G}, \frac{B_d}{k_B}\right)` | :math:`1 - \frac{A_d}{k_A}` |
+---------------------------------------------------+------------------------------------------------------------------------------------+-----------------------------+
| :data:`~pogles.gles2.GL_SRC_ALPHA`                | :math:`\left(\frac{A_s}{k_A}, \frac{A_s}{k_A}, \frac{A_s}{k_A}\right)`             | :math:`\frac{A_s}{k_A}`     |
+---------------------------------------------------+------------------------------------------------------------------------------------+-----------------------------+
| :data:`~pogles.gles2.GL_ONE_MINUS_SRC_ALPHA`      | :math:`(1, 1, 1) - \left(\frac{A_s}{k_A}, \frac{A_s}{k_A}, \frac{A_s}{k_A}\right)` | :math:`1 - \frac{A_s}{k_A}` |
+---------------------------------------------------+------------------------------------------------------------------------------------+-----------------------------+
| :data:`~pogles.gles2.GL_DST_ALPHA`                | :math:`\left(\frac{A_d}{k_A}, \frac{A_d}{k_A}, \frac{A_d}{k_A}\right)`             | :math:`\frac{A_d}{k_A}`     |
+---------------------------------------------------+------------------------------------------------------------------------------------+-----------------------------+
| :data:`~pogles.gles2.GL_ONE_MINUS_DST_ALPHA`      | :math:`(1, 1, 1) - \left(\frac{A_d}{k_A}, \frac{A_d}{k_A}, \frac{A_d}{k_A}\right)` | :math:`1 - \frac{A_d}{k_A}` |
+---------------------------------------------------+------------------------------------------------------------------------------------+-----------------------------+
| :data:`~pogles.gles2.GL_CONSTANT_COLOR`           | :math:`(R_c, G_c, B_c)`                                                            | :math:`A_c`                 |
+---------------------------------------------------+------------------------------------------------------------------------------------+-----------------------------+
| :data:`~pogles.gles2.GL_ONE_MINUS_CONSTANT_COLOR` | :math:`(1, 1, 1) - (R_c, G_c, B_c)`                                                | :math:`1 - A_c`             |
+---------------------------------------------------+------------------------------------------------------------------------------------+-----------------------------+
| :data:`~pogles.gles2.GL_CONSTANT_ALPHA`           | :math:`(A_c, A_c, A_c)`                                                            | :math:`A_c`                 |
+---------------------------------------------------+------------------------------------------------------------------------------------+-----------------------------+
| :data:`~pogles.gles2.GL_ONE_MINUS_CONSTANT_ALPHA` | :math:`(1, 1, 1) - (A_c, A_c, A_c)`                                                | :math:`1 - A_c`             |
+---------------------------------------------------+------------------------------------------------------------------------------------+-----------------------------+
| :data:`~pogles.gles2.GL_SRC_ALPHA_SATURATE`       | :math:`(i, i, i)`                                                                  | :meth:`1`                   |
+---------------------------------------------------+------------------------------------------------------------------------------------+-----------------------------+

In the table, :math:`i = min(A_s, 1 - A_d)`.

To determine the blended RGBA values of a pixel, the system uses one of the
equations set by :func:`~pogles.gles2.glBlendEquation` or
:func:`~pogles.gles2.glBlendEquationSeparate`.

Despite the apparent precision of the above equations, blending arithmetic is
not exactly specified because blending operates with imprecise integer color
values.  However, a blend factor that should be equal to 1 is guaranteed not to
modify its multiplicand, and a blend factor equal to 0 reduces its multiplicand
to 0.


Notes
-----

Incoming (source) alpha is correctly thought of as a material opacity, ranging
from 1.0 (:math:`k_A`), representing complete opacity, to 0.0 (0), representing
complete transparency.
