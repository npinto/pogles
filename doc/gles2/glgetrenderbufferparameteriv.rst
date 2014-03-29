:func:`~pogles.gles2.glGetRenderbufferParameteriv`
==================================================

.. function:: pogles.gles2.glGetRenderbufferParameteriv(target, pname) -> (value, ...)

    Return parameters of a renderbuffer object.

    :param target: is the target renderbuffer object.  It must be
            :data:`~pogles.gles2.GL_RENDERBUFFER`.
    :type target: int
    :param pname: is the renderbuffer object parameter.  It must be
            :data:`~pogles.gles2.GL_RENDERBUFFER_WIDTH`,
            :data:`~pogles.gles2.GL_RENDERBUFFER_HEIGHT`,
            :data:`~pogles.gles2.GL_RENDERBUFFER_INTERNAL_FORMAT`,
            :data:`~pogles.gles2.GL_RENDERBUFFER_RED_SIZE`,
            :data:`~pogles.gles2.GL_RENDERBUFFER_GREEN_SIZE`,
            :data:`~pogles.gles2.GL_RENDERBUFFER_BLUE_SIZE`,
            :data:`~pogles.gles2.GL_RENDERBUFFER_ALPHA_SIZE`,
            :data:`~pogles.gles2.GL_RENDERBUFFER_DEPTH_SIZE` or
            :data:`~pogles.gles2.GL_RENDERBUFFER_STENCIL_SIZE`.
    :type pname: int
    :raises: :exc:`~pogles.gles2.GLException`
    :return: A tuple of the parameter's values.


Description
-----------

:func:`~pogles.gles2.glGetRenderbufferParameteriv` returns a tuple of the
values of a selected parameter of the currently bound renderbuffer object.

*pname* names a specific renderbuffer object parameter, as follows:

:data:`~pogles.gles2.GL_RENDERBUFFER_WIDTH`
    Returns a 1-tuple, the width in pixels of the image of the currently bound
    renderbuffer.  The initial value is ``(0, )``.

:data:`~pogles.gles2.GL_RENDERBUFFER_HEIGHT`
    Returns a 1-tuple, the height in pixels of the image of the currently bound
    renderbuffer.  The initial value is ``(0, )``.

:data:`~pogles.gles2.GL_RENDERBUFFER_INTERNAL_FORMAT`
    Returns a 1-tuple, the internal format of the image of the currently bound
    renderbuffer.  The initial value is :data:`~pogles.gles2.GL_RGBA4`.

:data:`~pogles.gles2.GL_RENDERBUFFER_RED_SIZE`
    Returns a 1-tuple, the resolution in bits for the red component of the
    image of the currently bound renderbuffer.  The initial value is ``(0, )``.

:data:`~pogles.gles2.GL_RENDERBUFFER_GREEN_SIZE`
    Returns a 1-tuple, the resolution in bits for the green component of the
    image of the currently bound renderbuffer.  The initial value is ``(0, )``.

:data:`~pogles.gles2.GL_RENDERBUFFER_BLUE_SIZE`
    Returns a 1-tuple, the resolution in bits for the blue component of the
    image of the currently bound renderbuffer.  The initial value is ``(0, )``.

:data:`~pogles.gles2.GL_RENDERBUFFER_ALPHA_SIZE`
    Returns a 1-tuple, the resolution in bits for the alpha component of the
    image of the currently bound renderbuffer.  The initial value is ``(0, )``.

:data:`~pogles.gles2.GL_RENDERBUFFER_DEPTH_SIZE`
    Returns a 1-tuple, the resolution in bits for the depth component of the
    image of the currently bound renderbuffer.  The initial value is ``(0, )``.

:data:`~pogles.gles2.GL_RENDERBUFFER_STENCIL_SIZE`
    Returns a 1-tuple, the resolution in bits for the stencil component of the
    image of the currently bound renderbuffer.  The initial value is ``(0, )``.


Notes
-----

The resolution of components reported by
:func:`~pogles.gles2.glGetRenderbufferParameteriv` are the actual resolutions
at which the components are stored, which may be different than those requested
by the *internalformat* parameter of
:func:`~pogles.gles2.glRenderbufferStorage`.
