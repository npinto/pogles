:func:`~pogles.gles2.glGetAttribLocation`
=========================================

.. function:: pogles.gles2.glGetAttribLocation(program, name) -> location

    Return the location of an attribute variable.

    :param program: is the program object to be queried.
    :type program: int
    :param name: is the name of the attribute variable whose location is to be
            queried.
    :type name: str
    :raises: :exc:`~pogles.gles2.GLException`
    :return: The location.


Description
-----------

:func:`~pogles.gles2.glGetAttribLocation` queries the previously linked program
object specified by *program* for the attribute variable specified by *name*
and returns the index of the generic vertex attribute that is bound to that
attribute variable.  If *name* is a matrix attribute variable, the index of the
first column of the matrix is returned.  If the named attribute variable is not
an active attribute in the specified program object or if *name* starts with
the reserved prefix ``gl_``, a value of -1 is returned.

The association between an attribute variable name and a generic attribute
index can be specified at any time by calling
:func:`~pogles.gles2.glBindAttribLocation`.  Attribute bindings do not go into
effect until :func:`~pogles.gles2.glLinkProgram` is called.  After a program
object has been linked successfully, the index values for attribute variables
remain fixed until the next link command occurs.  The attribute values can only
be queried after a link if the link was successful.
:func:`~pogles.gles2.glGetAttribLocation` returns the binding that actually
went into effect the last time :func:`~pogles.gles2.glLinkProgram` was called
for the specified program object.  Attribute bindings that have been specified
since the last link operation are not returned by
:func:`~pogles.gles2.glGetAttribLocation`.
