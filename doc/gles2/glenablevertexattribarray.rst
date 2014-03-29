:func:`~pogles.gles2.glEnableVertexAttribArray` :func:`~pogles.gles2.glDisableVertexAttribArray`
================================================================================================

.. function:: pogles.gles2.glEnableVertexAttribArray(index)

    Enable a generic vertex attribute array.

    :param index: is the index of the generic vertex attribute to be enabled.
    :type index: int
    :raises: :exc:`~pogles.gles2.GLException`


.. function:: pogles.gles2.glDisableVertexAttribArray(index)

    Disable a generic vertex attribute array.

    :param index: is the index of the generic vertex attribute to be disabled.
    :type index: int
    :raises: :exc:`~pogles.gles2.GLException`


Description
-----------

:func:`~pogles.gles2.glEnableVertexAttribArray` enables the generic vertex
attribute array specified by *index*.
:func:`~pogles.gles2.glDisableVertexAttribArray` disables the generic vertex
attribute array specified by *index*.  By default, all client-side capabilities
are disabled, including all generic vertex attribute arrays.  If enabled, the
values in the generic vertex attribute array will be accessed and used for
rendering when calls are made to vertex array commands such as
:func:`~pogles.gles2.glDrawArrays` or :func:`~pogles.gles2.glDrawElements`.
