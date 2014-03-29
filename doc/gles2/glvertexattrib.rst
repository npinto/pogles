:func:`~pogles.gles2.glVertexAttrib1f` :func:`~pogles.gles2.glVertexAttrib2f` :func:`~pogles.gles2.glVertexAttrib3f` :func:`~pogles.gles2.glVertexAttrib4f` :func:`~pogles.gles2.glVertexAttrib1fv` :func:`~pogles.gles2.glVertexAttrib2fv` :func:`~pogles.gles2.glVertexAttrib3fv` :func:`~pogles.gles2.glVertexAttrib4fv`
===========================================================================================================================================================================================================================================================================================================================

.. function:: pogles.gles2.glVertexAttrib1f(index, x)

    Specify the value of a generic vertex attribute.

    :param index: is the index of the generic vertex attribute to be modified.
    :type index: int
    :param v0: is the value to be used for the specified vertex attribute.
    :type v0: float
    :raises: :exc:`~pogles.gles2.GLException`


.. function:: pogles.gles2.glVertexAttrib2f(index, v0, v1)

    Specify the value of a generic vertex attribute.

    :param index: is the index of the generic vertex attribute to be modified.
    :type index: int
    :param v0:
    :type v0: float
    :param v1: are the values to be used for the specified vertex attribute.
    :type v1: float
    :raises: :exc:`~pogles.gles2.GLException`


.. function:: pogles.gles2.glVertexAttrib3f(index, v0, v1, v2)

    Specify the value of a generic vertex attribute.

    :param index: is the index of the generic vertex attribute to be modified.
    :type index: int
    :param v0:
    :type v0: float
    :param v1:
    :type v1: float
    :param v2: are the values to be used for the specified vertex attribute.
    :type v2: float
    :raises: :exc:`~pogles.gles2.GLException`


.. function:: pogles.gles2.glVertexAttrib4f(index, v0, v1, v2, v3)

    Specify the value of a generic vertex attribute.

    :param index: is the index of the generic vertex attribute to be modified.
    :type index: int
    :param v0:
    :type v0: float
    :param v1:
    :type v1: float
    :param v2:
    :type v2: float
    :param v3: are the values to be used for the specified vertex attribute.
    :type v3: float
    :raises: :exc:`~pogles.gles2.GLException`


.. function:: pogles.gles2.glVertexAttrib1fv(index, v)

    Specify the value of a generic vertex attribute as a list.

    :param index: is the index of the generic vertex attribute to be modified.
    :type index: int
    :param v: is the list of values to be used for the specified vertex
            attribute.  The number of values must be 1.
    :type v: list of float
    :raises: :exc:`~pogles.gles2.GLException`


.. function:: pogles.gles2.glVertexAttrib2fv(index, v)

    Specify the value of a generic vertex attribute as a list.

    :param index: is the index of the generic vertex attribute to be modified.
    :type index: int
    :param v: is the list of values to be used for the specified vertex
            attribute.  The number of values must be 2.
    :type v: list of float
    :raises: :exc:`~pogles.gles2.GLException`


.. function:: pogles.gles2.glVertexAttrib3fv(index, v)

    Specify the value of a generic vertex attribute as a list.

    :param index: is the index of the generic vertex attribute to be modified.
    :type index: int
    :param v: is the list of values to be used for the specified vertex
            attribute.  The number of values must be 3.
    :type v: list of float
    :raises: :exc:`~pogles.gles2.GLException`


.. function:: pogles.gles2.glVertexAttrib4fv(index, v)

    Specify the value of a generic vertex attribute as a list.

    :param index: is the index of the generic vertex attribute to be modified.
    :type index: int
    :param v: is the list of values to be used for the specified vertex
            attribute.  The number of values must be 4.
    :type v: list of float
    :raises: :exc:`~pogles.gles2.GLException`


Description
-----------

This group of functions allow an application to pass generic vertex attributes
in numbered locations.

Generic attributes are defined as four-component values that are organized into
an array.  The first entry of this array is numbered 0, and the size of the
array is specified by the implementation-dependent symbolic constant
:data:`~pogles.gles2.GL_MAX_VERTEX_ATTRIBS`.  Individual elements of this array
can be modified with a call that specifies the index of the element to be
modified and a value for that element.

These functions can be used to specify one, two, three, or all four components
of the generic vertex attribute specified by *index*.  A 1 in the name of the
function indicates that only one value is passed, and it will be used to modify
the first component of the generic vertex attribute.  The second and third
components will be set to 0, and the fourth component will be set to 1.
Similarly, a 2 in the name of the function indicates that values are provided
for the first two components, the third component will be set to 0, and the
fourth component will be set to 1 . A 3 in the name of the function indicates
that values are provided for the first three components and the fourth
component will be set to 1, whereas a 4 in the name indicates that values are
provided for all four components.

The letter ``f`` indicates that the arguments are of type float.  When ``v`` is
appended to the name, the functions take a list of floats.

OpenGL ES Shading Language attribute variables are allowed to be of type
``mat2``, ``mat3`` or ``mat4``.  Attributes of these types may be loaded using
these functions.  Matrices must be loaded into successive generic attribute
slots in column major order, with one column of the matrix in each generic
attribute slot.

A user-defined attribute variable declared in a vertex shader can be bound to a
generic attribute index by calling :func:`~pogles.gles2.glBindAttribLocation`.
This allows an application to use descriptive variable names in a vertex
shader.  A subsequent change to the specified generic vertex attribute will be
immediately reflected as a change to the corresponding attribute variable in
the vertex shader.

The binding between a generic vertex attribute index and a user-defined
attribute variable in a vertex shader is part of the state of a program object,
but the current value of the generic vertex attribute is not.  The value of
each generic vertex attribute is part of current state and it is maintained
even if a different program object is used.

An application may freely modify generic vertex attributes that are not bound
to a named vertex shader attribute variable.  These values are simply
maintained as part of current state and will not be accessed by the vertex
shader.  If a generic vertex attribute bound to an attribute variable in a
vertex shader is not updated while the vertex shader is executing, the vertex
shader will repeatedly use the current value for the generic vertex attribute.


Notes
-----

It is possible for an application to bind more than one attribute name to the
same generic vertex attribute index.  This is referred to as aliasing, and it
is allowed only if just one of the aliased attribute variables is active in the
vertex shader, or if no path through the vertex shader consumes more than one
of the attributes aliased to the same location.  OpenGL implementations are not
required to do error checking to detect aliasing, they are allowed to assume
that aliasing will not occur, and they are allowed to employ optimizations that
work only in the absence of aliasing.
