:func:`~pogles.gles2.glGetProgramInfoLog`
=========================================

.. function:: pogles.gles2.glGetProgramInfoLog(program) -> log

    Return the information log for a program object.

    :param program: is the program object whose information log is to be
            queried.
    :type program: int
    :raises: :exc:`~pogles.gles2.GLException`
    :return: The information log.


Description
-----------

:func:`~pogles.gles2.glGetProgramInfoLog` returns the information log for the
specified program object.  The information log for a program object is modified
when the program object is linked or validated.

The information log is a bytes object in Python v3 and a str object in Python
v2.

The information log for a program object is either empty, or containing
information about the last link operation, or containing information about the
last validation operation.  It may contain diagnostic messages, warning
messages, and other information.  When a program object is created, its
information log will be empty.


Notes
-----

The information log for a program object is the OpenGL implementer's primary
mechanism for conveying information about linking and validating.  Therefore,
the information log can be helpful to application developers during the
development process, even when these operations are successful.  Application
developers should not expect different OpenGL implementations to produce
identical information logs.
