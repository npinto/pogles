:func:`~pogles.gles2.glGetShaderInfoLog`
========================================

.. function:: pogles.gles2.glGetShaderInfoLog(shader) -> log

    Return the information log for a shader object.

    :param shader: is the shader object whose information log is to be queried.
    :type shader: int
    :raises: :exc:`~pogles.gles2.GLException`
    :return: The information log.


Description
-----------

:func:`~pogles.gles2.glGetShaderInfoLog` returns the information log for the
specified shader object.  The information log for a shader object is modified
when the shader is compiled.

The information log is a bytes object in Python v3 and a str object in Python
v2.

The information log for a shader object contains diagnostic messages, warning
messages, and other information about the last compile operation.  When a
shader object is created, its information log will be empty.


Notes
-----

The information log for a shader object is the OpenGL implementer's primary
mechanism for conveying information about the compilation process.  Therefore,
the information log can be helpful to application developers during the
development process, even when compilation is successful.  Application
developers should not expect different OpenGL implementations to produce
identical information logs.
