:func:`~pogles.gles2.glScissor`
===============================

.. function:: pogles.gles2.glScissor(x, y, width, height)

    Define the scissor box.

    :param x: is the x coordinate of the lower left corner of the scissor box.
            It is initially 0.
    :type x: int
    :param y: is the y coordinate of the lower left corner of the scissor box.
            It is initially 0.
    :type y: int
    :param width: is the width of the scissor box.
    :type width: int
    :param height: is the height of the scissor box.
    :type height: int
    :raises: :exc:`~pogles.gles2.GLException`


Description
-----------

:func:`~pogles.gles2.glScissor` defines a rectangle, called the scissor box, in
window coordinates.  The first two arguments, *x* and *y*, specify the lower
left corner of the box.  *width* and *height* specify the width and height of
the box.  When a GL context is first attached to a window, *width* and *height*
are set to the dimensions of that window.

To enable and disable the scissor test, call :func:`~pogles.gles2.glEnable` and
:func:`~pogles.gles2.glDisable` with argument
:data:`~pogles.gles2.GL_SCISSOR_TEST`.  The test is initially disabled.  While
the test is enabled, only pixels that lie within the scissor box can be
modified by drawing commands.  Window coordinates have integer values at the
shared corners of frame buffer pixels.  ``glScissor(0,0,1,1)`` allows
modification of only the lower left pixel in the window, and
``glScissor(0,0,0,0)`` doesn't allow modification of any pixels in the window.

When the scissor test is disabled, it is as though the scissor box includes the
entire window.
