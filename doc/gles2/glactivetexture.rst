:func:`~pogles.gles2.glActiveTexture`
=====================================

.. function:: pogles.gles2.glActiveTexture(texture)

    Select active texture unit.

    :param texture: is the texture unit to make active.  The number of texture
            units is implementation dependent, but must be at least 8.
            *texture* must be one of **GL_TEXTUREi**, where **i** ranges from 0
            to (:data:`~pogles.gles2.GL_MAX_COMBINED_TEXTURE_IMAGE_UNITS`-1).
            The initial value is :data:`~pogles.gles2.GL_TEXTURE0`.
    :type texture: int
    :raises: :exc:`~pogles.gles2.GLException`


Description
-----------

:func:`~pogles.gles2.glActiveTexture` selects which texture unit subsequent
texture state calls will affect.  The number of texture units an implementation
supports is implementation dependent, but must be at least 8.
