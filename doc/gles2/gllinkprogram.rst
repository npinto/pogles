:func:`~pogles.gles2.glLinkProgram`
===================================

.. function:: pogles.gles2.glLinkProgram(program)

    Link a program object.

    :param program: is the program object to be linked.
    :type program: int
    :raises: :exc:`~pogles.gles2.GLException`


Description
-----------

:func:`~pogles.gles2.glLinkProgram` links the program object specified by
*program*.  Shader objects of type :data:`~pogles.gles2.GL_VERTEX_SHADER`
attached to *program* are used to create an executable that will run on the
programmable vertex processor.  Shader objects of type
:data:`~pogles.gles2.GL_FRAGMENT_SHADER` attached to *program* are used to
create an executable that will run on the programmable fragment processor.

The status of the link operation will be stored as part of the program object's
state.  This value will be set to ``True`` if the program object was linked
without errors and is ready for use, and ``False`` otherwise.  It can be
queried by calling :func:`~pogles.gles2.glGetProgramiv` with arguments
*program* and :data:`~pogles.gles2.GL_LINK_STATUS`.

As a result of a successful link operation, all active user-defined uniform
variables belonging to program will be initialized to 0, and each of the
program object's active uniform variables will be assigned a location that can
be queried by calling :func:`~pogles.gles2.glGetUniformLocation`.  Also, any
active user-defined attribute variables that have not been bound to a generic
vertex attribute index will be bound to one at this time.

Linking of a program object can fail for a number of reasons as specified in
the **OpenGL ES Shading Language Specification**.  The following lists some of
the conditions that will cause a link error.

- A vertex shader and a fragment shader are not both present in the program
  object.

- The number of active attribute variables supported by the implementation has
  been exceeded.

- The storage limit for uniform variables has been exceeded.

- The number of active uniform variables supported by the implementation has
  been exceeded.

- The main function is missing for the vertex shader or the fragment shader.

- A varying variable actually used in the fragment shader is not declared in
  the same way (or is not declared at all) in the vertex shader.

- A reference to a function or variable name is unresolved.

- A shared global is declared with two different types or two different initial
  values.

- One or more of the attached shader objects has not been successfully compiled
  (via :func:`~pogles.gles2.glCompileShader`) or loaded with a pre-compiled
  shader binary (via :func:`~pogles.gles2.glShaderBinary`).

- Binding a generic attribute matrix caused some rows of the matrix to fall
  outside the allowed maximum of :data:`~pogles.gles2.GL_MAX_VERTEX_ATTRIBS`.

- Not enough contiguous vertex attribute slots could be found to bind attribute
  matrices.

When a program object has been successfully linked, the program object can be
made part of current state by calling :func:`~pogles.gles2.glUseProgram`.
Whether or not the link operation was successful, the program object's
information log will be overwritten.  The information log can be retrieved by
calling :func:`~pogles.gles2.glGetProgramInfoLog`.

:func:`~pogles.gles2.glLinkProgram` will also install the generated executables
as part of the current rendering state if the link operation was successful and
the specified program object is already currently in use as a result of a
previous call to :func:`~pogles.gles2.glUseProgram`.  If the program object
currently in use is relinked unsuccessfully, its link status will be set to
``False``, but the executables and associated state will remain part of the
current state until a subsequent call to :func:`~pogles.gles2.glUseProgram`
removes it from use.  After it is removed from use, it cannot be made part of
current state until it has been successfully relinked.

The program object's information log is updated and the program is generated at
the time of the link operation.  After the link operation, applications are
free to modify attached shader objects, compile attached shader objects, detach
shader objects, delete shader objects, and attach additional shader objects.
None of these operations affects the information log or the program that is
part of the program object.


Notes
-----

If the link operation is unsuccessful, any information about a previous link
operation on program is lost (i.e. a failed link does not restore the old state
of *program*).  Certain information can still be retrieved from program even
after an unsuccessful link operation.  See for instance
:func:`~pogles.gles2.glGetActiveAttrib` and
:func:`~pogles.gles2.glGetActiveUniform`.
