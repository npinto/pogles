:func:`~pogles.egl.eglCreateContext`
====================================

.. function:: pogles.egl.eglCreateContext(display, config, share_context, attrib_list) -> context

    Create a new EGL rendering context.

    :param display: is the EGL display.
    :type display: :class:`~pogles.egl.EGLDisplay`
    :param config: is the EGL frame buffer configuration that defines the frame
            buffer resource available to the rendering context.
    :type config: :class:`~pogles.egl.EGLConfig`
    :param share_context: is another EGL rendering context with which to share
            data, as defined by the client API corresponding to the contexts.
            Data is also shared with all other contexts with which
            *share_context* shares data.  ``None`` indicates that no sharing is
            to take place.
    :type share_context: :class:`~pogles.egl.EGLContext`
    :param attrib_list: is the list of attributes and attribute values for the
            context being created.  Only the attribute
            :data:`~pogles.egl.EGL_CONTEXT_CLIENT_VERSION` may be specified.
    :type attrib_list: list of int
    :raises: :exc:`~pogles.egl.EGLException`
    :return:
        The :class:`~pogles.egl.EGLContext` context.


Description
-----------

:func:`~pogles.egl.eglCreateContext` creates an EGL rendering context for the
current rendering API (as set with :func:`~pogles.egl.eglBindAPI`) and returns
a handle to the context.  The context can then be used to render into an EGL
drawing surface.

If *share_context* is not ``None``, then all shareable data in the context (as
defined by the client API specification for the current rendering API) are
shared by context *share_context*, all other contexts *share_context* already
shares with, and the newly created context.  An arbitrary number of rendering
contexts can share data.  However, all rendering contexts that share data must
themselves exist in the same address space.  Two rendering contexts share an
address space if both are owned by a single process.

*attrib_list* specifies a list of attributes for the context.  The list has the
same structure as described for :func:`~pogles.egl.eglChooseConfig`.  The
attributes and attribute values which may be specified are as follows:

:data:`~pogles.egl.EGL_CONTEXT_CLIENT_VERSION`
    Must be followed by an integer that determines which version of an OpenGL
    ES context to create.  A value of 1 specifies creation of an OpenGL ES 1.x
    context.  An attribute value of 2 specifies creation of an OpenGL ES 2.x
    context.  The default value is 1.  This attribute can only be specified
    when creating a OpenGL ES context (e.g. when the current rendering API is
    :data:`~pogles.egl.EGL_OPENGL_ES_API`).


Notes
-----

The current rendering API is only respected if the EGL version is 1.2 or
greater.  Otherwise, an OpenGL ES context will always be created.

The :data:`~pogles.egl.EGL_CONTEXT_CLIENT_VERSION` attribute is only supported
if the EGL version is 1.3 or greater.

A **process** is a single execution environment, implemented in a single
address space, consisting of one or more threads.

A **thread** is one of a set of subprocesses that share a single address space,
but maintain separate program counters, stack spaces, and other related global
data.  A thread is the only member of its subprocess group is equivalent to a
process.
