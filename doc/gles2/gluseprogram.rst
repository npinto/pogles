:func:`~pogles.gles2.glUseProgram`
==================================

.. function:: pogles.gles2.glUseProgram(program)

    Install a program object as part of current rendering state.

    :param program: is the program object whose executables are to be used as
            part of current rendering state.
    :type program: int
    :raises: :exc:`~pogles.gles2.GLException`


Description
-----------

:func:`~pogles.gles2.glUseProgram` installs the program object specified by
*program* as part of current rendering state.  One or more executables are
created in a program object by successfully attaching shader objects to it with
:func:`~pogles.gles2.glAttachShader`, successfully compiling the shader objects
with :func:`~pogles.gles2.glCompileShader` and successfully linking the program
object with :func:`~pogles.gles2.glLinkProgram`.

A program object will contain executables that will run on the vertex and
fragment processors if it contains one or more shader objects of type
:data:`~pogles.gles2.GL_VERTEX_SHADER` and one or more shader objects of type
:data:`~pogles.gles2.GL_FRAGMENT_SHADER` that have all been successfully
compiled and linked.

While a program object is in use, applications are free to modify attached
shader objects, compile attached shader objects, attach additional shader
objects and detach or delete shader objects.  None of these operations will
affect the executables that are part of the current state.  However, relinking
the program object that is currently in use will install the program object as
part of the current rendering state if the link operation was successful (see
:func:`~pogles.gles2.glLinkProgram`).  If the program object currently in use
is relinked unsuccessfully, its link status will be set to ``False``, but the
executables and associated state will remain part of the current state until a
subsequent call to :func:`~pogles.gles2.glUseProgram` removes it from use.
After it is removed from use, it cannot be made part of current state until it
has been successfully relinked.

If *program* is 0, then the current rendering state refers to an invalid
program object, and the results of vertex and fragment shader execution due to
any :func:`~pogles.gles2.glDrawArrays` or :func:`~pogles.gles2.glDrawElements`
commands are undefined.


Notes
-----

Like texture objects and buffer objects, the name space for program objects may
be shared across a set of contexts, as long as the server sides of the contexts
share the same address space.  If the name space is shared across contexts, any
attached objects and the data associated with those attached objects are shared
as well.

Applications are responsible for providing the synchronization across API calls
when objects are accessed from different execution threads.
