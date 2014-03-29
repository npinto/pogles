:func:`~pogles.gles2.glGetShaderSource`
=======================================

.. function:: pogles.gles2.glGetShaderSource(shader) -> source

    Return the source code from a shader object.

    :param shader: is the shader object to be queried.
    :type shader: int
    :raises: :exc:`~pogles.gles2.GLException`
    :return: The source code.


Description
-----------

:func:`~pogles.gles2.glGetShaderSource` returns the concatenation of the source
code from the shader object specified by *shader*.  The source code for a
shader object is the result of a previous call to
:func:`~pogles.gles2.glShaderSource`.

The source code is a bytes object in Python v3 and a str object in Python v2.
