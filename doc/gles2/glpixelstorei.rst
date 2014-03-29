:func:`~pogles.gles2.glPixelStorei`
===================================

.. function:: pogles.gles2.glPixelStorei(pname, param)

    Set pixel storage modes.

    :param pname: is the parameter to be set.
    :type pname: int
    :param param: is the value that *pname* is set to.  It must be
            :data:`~pogles.gles2.GL_PACK_ALIGNMENT` or
            :data:`~pogles.gles2.GL_UNPACK_ALIGNMENT`.
    :type param: int
    :raises: :exc:`~pogles.gles2.GLException`


Description
-----------

:func:`~pogles.gles2.glPixelStorei` sets pixel storage modes that affect the
operation of subsequent :func:`~pogles.gles2.glReadPixels` as well as the
unpacking of texture patterns (see :func:`~pogles.gles2.glTexImage2D` and
:func:`~pogles.gles2.glTexSubImage2D`).

*pname* is the parameter to be set, and *param* is the new value.  One storage
parameter affects how pixel data is returned to client memory:

:data:`~pogles.gles2.GL_PACK_ALIGNMENT`
    Specifies the alignment requirements for the start of each pixel row in
    memory.  The allowable values are 1 (byte-alignment), 2 (rows aligned to
    even-numbered bytes), 4 (word-alignment), and 8 (rows start on double-word
    boundaries).  The initial value is 4.

The other storage parameter affects how pixel data is read from client memory:

:data:`~pogles.gles2.GL_UNPACK_ALIGNMENT`
    Specifies the alignment requirements for the start of each pixel row in
    memory.  The allowable values are 1 (byte-alignment), 2 (rows aligned to
    even-numbered bytes), 4 (word-alignment), and 8 (rows start on double-word
    boundaries).  The initial value is 4.
