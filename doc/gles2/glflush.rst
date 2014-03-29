:func:`~pogles.gles2.glFlush`
=============================

.. function:: pogles.gles2.glFlush()

    Force execution of GL commands in finite time.


Description
-----------

Different GL implementations buffer commands in several different locations,
including network buffers and the graphics accelerator itself.
:func:`~pogles.gles2.glFlush` empties all of these buffers, causing all issued
commands to be executed as quickly as they are accepted by the actual rendering
engine.  Though this execution may not be completed in any particular time
period, it does complete in finite time.

Because any GL program might be executed over a network, or on an accelerator
that buffers commands, all programs should call :func:`~pogles.gles2.glFlush`
whenever they count on having all of their previously issued commands
completed.  For example, call :func:`~pogles.gles2.glFlush` before waiting for
user input that depends on the generated image.


Notes
-----

:func:`~pogles.gles2.glFlush` can return at any time.  It does not wait until
the execution of all previously issued GL commands is complete.
