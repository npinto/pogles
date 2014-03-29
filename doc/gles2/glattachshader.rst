:func:`~pogles.gles2.glAttachShader`
====================================

.. function:: pogles.gles2.glAttachShader(program, shader)

    Attach a shader object to a program object.

    :param program: is the program object to which a shader object will be
            attached.
    :type program: int
    :param shader: is the shader object that is to be attached.
    :type shader: int
    :raises: :exc:`~pogles.gles2.GLException`


Description
-----------

In order to create an executable, there must be a way to specify the list of
things that will be linked together.  Program objects provide this mechanism.
Shaders that are to be linked together in a program object must first be
attached to that program object.  :func:`~pogles.gles2.glAttachShader` attaches
the shader object specified by *shader* to the program object specified by
*program*.  This indicates that *shader* will be included in link operations
that will be performed on *program*.

All operations that can be performed on a shader object are valid whether or
not the shader object is attached to a program object.  It is permissible to
attach a shader object to a program object before source code has been loaded
into the shader object or before the shader object has been compiled.  Multiple
shader objects of the same type may not be attached to a single program object.
However, a single shader object may be attached to more than one program
object.  If a shader object is deleted while it is attached to a program
object, it will be flagged for deletion, and deletion will not occur until
:func:`~pogles.gles2.glDetachShader` is called to detach it from all program
objects to which it is attached.
