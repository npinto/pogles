:func:`~pogles.gles2.glFinish`
==============================

.. function:: pogles.gles2.glFinish()

    Block until all GL execution is complete.


Description
-----------

:func:`~pogles.gles2.glFinish` does not return until the effects of all
previously called GL commands are complete.  Such effects include all changes
to GL state, all changes to connection state, and all changes to the frame
buffer contents.


Notes
-----

:func:`~pogles.gles2.glFinish` requires a round trip to the server.
