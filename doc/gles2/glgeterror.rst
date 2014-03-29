:func:`~pogles.gles2.glGetError`
================================

.. function:: pogles.gles2.glGetError() -> error flag

    Return error information.

    :return: The error flag.


Description
-----------

:func:`~pogles.gles2.glGetError` returns the value of the error flag.  Each
detectable error is assigned a numeric code and symbolic name.  When an error
occurs, the error flag is set to the appropriate error code value.  No other
errors are recorded until :func:`~pogles.gles2.glGetError` is called, the error
code is returned, and the flag is reset to :data:`~pogles.gles2.GL_NO_ERROR`.
If a call to :func:`~pogles.gles2.glGetError` returns
:data:`~pogles.gles2.GL_NO_ERROR`, there has been no detectable error since the
last call to :func:`~pogles.gles2.glGetError`, or since the GL was initialized.

To allow for distributed implementations, there may be several error flags.  If
any single error flag has recorded an error, the value of that flag is returned
and that flag is reset to :data:`~pogles.gles2.GL_NO_ERROR` when
:func:`~pogles.gles2.glGetError` is called.  If more than one flag has recorded
an error, :func:`~pogles.gles2.glGetError` returns and clears an arbitrary
error flag value.  Thus, :func:`~pogles.gles2.glGetError` should always be
called in a loop, until it returns :data:`~pogles.gles2.GL_NO_ERROR`, if all
error flags are to be reset.

Initially, all error flags are set to :data:`~pogles.gles2.GL_NO_ERROR`.

The following errors are currently defined:

:data:`~pogles.gles2.GL_NO_ERROR`
    No error has been recorded.  The value of this symbolic constant is
    guaranteed to be 0.

:data:`~pogles.gles2.GL_INVALID_ENUM`
    An unacceptable value is specified for an enumerated argument.  The
    offending command is ignored and has no other side effect than to set the
    error flag.

:data:`~pogles.gles2.GL_INVALID_VALUE`
    A numeric argument is out of range.  The offending command is ignored and
    has no other side effect than to set the error flag.

:data:`~pogles.gles2.GL_INVALID_OPERATION`
    The specified operation is not allowed in the current state.  The offending
    command is ignored and has no other side effect than to set the error flag.

:data:`~pogles.gles2.GL_INVALID_FRAMEBUFFER_OPERATION`
    The command is trying to render to or read from the framebuffer while the
    currently bound framebuffer is not framebuffer complete (i.e. the return
    value from :func:`~pogles.gles2.glCheckFramebufferStatus` is not
    :data:`~pogles.gles2.GL_FRAMEBUFFER_COMPLETE`).  The offending command is
    ignored and has no other side effect than to set the error flag.

:data:`~pogles.gles2.GL_OUT_OF_MEMORY`
    There is not enough memory left to execute the command.  The state of the
    GL is undefined, except for the state of the error flags, after this error
    is recorded.

When an error flag is set, results of a GL operation are undefined only if
:data:`~pogles.gles2.GL_OUT_OF_MEMORY` has occurred.  In all other cases, the
command generating the error is ignored and has no effect on the GL state or
frame buffer contents.  If the generating command returns a value, it returns
0.
