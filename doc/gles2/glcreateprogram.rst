:func:`~pogles.gles2.glCreateProgram`
=====================================

.. function:: pogles.gles2.glCreateProgram() -> program

    Create a program object.

    :raises: :exc:`~pogles.gles2.GLException`
    :return: The program.


Description
-----------

:func:`~pogles.gles2.glCreateProgram` creates an empty program object and
returns a non-zero value by which it can be referenced.  A program object is an
object to which shader objects can be attached.  This provides a mechanism to
specify the shader objects that will be linked to create a program.  It also
provides a means for checking the compatibility of the shaders that will be
used to create a program (for instance, checking the compatibility between a
vertex shader and a fragment shader).  When no longer needed as part of a
program object, shader objects can be detached.

One or more executables are created in a program object by successfully
attaching shader objects to it with :func:`~pogles.gles2.glAttachShader`,
successfully compiling the shader objects with
:func:`~pogles.gles2.glCompileShader`, and successfully linking the program
object with :func:`~pogles.gles2.glLinkProgram`.  These executables are made
part of current state when :func:`~pogles.gles2.glUseProgram` is called.
Program objects can be deleted by calling
:func:`~pogles.gles2.glDeleteProgram`.  The memory associated with the program
object will be deleted when it is no longer part of current rendering state for
any context.


Notes
-----

Like texture objects, the name space for program objects may be shared across a
set of contexts, as long as the server sides of the contexts share the same
address space.  If the name space is shared across contexts, any attached
objects and the data associated with those attached objects are shared as well.

Applications are responsible for providing the synchronization across API calls
when objects are accessed from different execution threads.
