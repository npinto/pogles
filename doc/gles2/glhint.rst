:func:`~pogles.gles2.glHint`
============================

.. function:: pogles.gles2.glHint(target, mode)

    Specify implementation-specific hints.

    :param target: is the behavior to be controlled.  It must be
            :data:`~pogles.gles2.GL_GENERATE_MIPMAP_HINT`.
    :type target: int
    :param mode: is the desired behavior.  It must be
            :data:`~pogles.gles2.GL_FASTEST`, :data:`~pogles.gles2.GL_NICEST`
            or :data:`~pogles.gles2.GL_DONT_CARE`.
    :type mode: int
    :raises: :exc:`~pogles.gles2.GLException`


Description
-----------

Certain aspects of GL behavior, when there is room for interpretation, can be
controlled with hints.  A hint is specified with two arguments.  *target* is a
symbolic constant indicating the behavior to be controlled, and *mode* is
another symbolic constant indicating the desired behavior.  The initial value
for each target is :data:`~pogles.gles2.GL_DONT_CARE`.  *mode* can be one of
the following:

:data:`~pogles.gles2.GL_FASTEST`
    The most efficient option should be chosen.

:data:`~pogles.gles2.GL_NICEST`
    The most correct, or highest quality, option should be chosen.

:data:`~pogles.gles2.GL_DONT_CARE`
    No preference.

Though the implementation aspects that can be hinted are well defined, the
interpretation of the hints depends on the implementation.  The hint aspects
that can be specified with *target*, along with suggested semantics, are as
follows:

:data:`~pogles.gles2.GL_GENERATE_MIPMAP_HINT`
    Indicates the quality of filtering when generating mipmap images with
    :func:`~pogles.gles2.glGenerateMipmap`.


Notes
-----

The interpretation of hints depends on the implementation.  Some
implementations ignore :func:`~pogles.gles2.glHint` settings.
