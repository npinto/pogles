:func:`~pogles.gles2.glBindAttribLocation`
==========================================

.. function:: pogles.gles2.glBindAttribLocation(program, index, name)

    Associate a generic vertex attribute index with a named attribute variable.

    :param program: is the handle of the program object in which the
            association is to be made.
    :type program: int
    :param index: is the index of the generic vertex attribute to be bound.
    :type index: int
    :param name: is the name of the vertex shader attribute variable to which
            *index* is to be bound.
    :type name: str
    :raises: :exc:`~pogles.gles2.GLException`


Description
-----------

:func:`~pogles.gles2.glBindAttribLocation` is used to associate a user-defined
attribute variable in the program object specified by *program* with a generic
vertex attribute index.  The name of the user-defined attribute variable is
passed as a string in *name*.  The generic vertex attribute index to be bound
to this variable is specified by *index*.  When *program* is made part of the
current state, values provided via the generic vertex attribute *index* will
modify the value of the user-defined attribute variable specified by *name*.

If *name* refers to a matrix attribute variable, *index* refers to the first
column of the matrix.  Other matrix columns are then automatically bound to
locations *index+1* for a matrix of type ``mat2``; *index+1* and *index+2* for
a matrix of type ``mat3``; and *index+1*, *index+2* and *index+3* for a matrix
of type ``mat4``.

This command makes it possible for vertex shaders to use descriptive names for
attribute variables rather than generic variables that are numbered from 0 to
:data:`~pogles.gles2.GL_MAX_VERTEX_ATTRIBS`-1.  The values sent to each
generic attribute index are part of current state, just like standard vertex
attributes such as color, normal, and vertex position.  If a different program
object is made current by calling :func:`~pogles.gles2.glUseProgram`, the
generic vertex attributes are tracked in such a way that the same values will
be observed by attributes in the new program object that are also bound to
*index*.

Attribute variable name-to-generic attribute index bindings for a program
object can be explicitly assigned at any time by calling
:func:`~pogles.gles2.glBindAttribLocation`.  Attribute bindings do not go into
effect until :func:`~pogles.gles2.glLinkProgram` is called.  After a program
object has been linked successfully, the index values for generic attributes
remain fixed (and their values can be queried) until the next link command
occurs.

Applications are not allowed to bind any of the standard OpenGL vertex
attributes using this command, as they are bound automatically when needed.
Any attribute binding that occurs after the program object has been linked will
not take effect until the next time the program object is linked.


Notes
-----

:func:`~pogles.gles2.glBindAttribLocation` can be called before any vertex
shader objects are bound to the specified program object.  It is also
permissible to bind a generic attribute index to an attribute variable name
that is never used in a vertex shader.

If *name* was bound previously, that information is lost.  Thus you cannot bind
one user-defined attribute variable to multiple indices, but you can bind
multiple user-defined attribute variables to the same index.

Applications are allowed to bind more than one user-defined attribute variable
to the same generic vertex attribute index.  This is called aliasing, and it is
allowed only if just one of the aliased attributes is active in the executable
program, or if no path through the shader consumes more than one attribute of a
set of attributes aliased to the same location.  The compiler and linker are
allowed to assume that no aliasing is done and are free to employ optimizations
that work only in the absence of aliasing.  OpenGL implementations are not
required to do error checking to detect aliasing.  Because there is no way to
bind standard attributes, it is not possible to alias generic attributes with
conventional ones (except for generic attribute 0).

Active attributes that are not explicitly bound will be bound by the linker
when :func:`~pogles.gles2.glLinkProgram` is called.  The locations assigned can
be queried by calling :func:`~pogles.gles2.glGetAttribLocation`.
