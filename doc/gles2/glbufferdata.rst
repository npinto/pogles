:func:`~pogles.gles2.glBufferData`
==================================

.. function:: pogles.gles2.glBufferData(target, size, data, usage)

    Create and initialize a buffer object's data store.

    :param target: is the target buffer object.  It must be
            :data:`~pogles.gles2.GL_ARRAY_BUFFER` or
            :data:`~pogles.gles2.GL_ELEMENT_ARRAY_BUFFER`.
    :type target: int
    :param size: is the size in bytes of the buffer object's new data store.
    :type size: int
    :param data: is a pointer to data that will be copied into the data store
            for initialization, or ``None`` if no data is to be copied.
    :type data: object that implements the buffer protocol
    :param usage: is the expected usage pattern of the data store.  It must be
            :data:`~pogles.gles2.GL_STREAM_DRAW`,
            :data:`~pogles.gles2.GL_STATIC_DRAW` or
            :data:`~pogles.gles2.GL_DYNAMIC_DRAW`.
    :type usage: int
    :raises: :exc:`~pogles.gles2.GLException`


Description
-----------

:func:`~pogles.gles2.glBufferData` creates a new data store for the buffer
object currently bound to *target*.  Any pre-existing data store is deleted.
The new data store is created with the specified *size* in bytes and *usage*.
If *data* is not ``None``, the data store is initialized with data from this
pointer.

*usage* is a hint to the GL implementation as to how a buffer object's data
store will be accessed.  This enables the GL implementation to make more
intelligent decisions that may significantly impact buffer object performance.
It does not, however, constrain the actual usage of the data store.  *usage*
can be broken down into two parts: first, the frequency of access (modification
and usage), and second, the nature of that access.  The frequency of access may
be one of these:

:data:`~pogles.gles2.GL_STREAM_DRAW`
    The data store contents will be modified once and used at most a few times.

:data:`~pogles.gles2.GL_STATIC_DRAW`
    The data store contents will be modified once and used many times.

:data:`~pogles.gles2.GL_DYNAMIC_DRAW`
    The data store contents will be modified repeatedly and used many times.


Notes
-----

If *data* is ``None``, a data store of the specified size is still created, but
its contents remain uninitialized and thus undefined.

Clients must align data elements consistent with the requirements of the client
platform, with an additional base-level requirement that an offset within a
buffer to a datum comprising **NN**.
