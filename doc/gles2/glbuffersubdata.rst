:func:`~pogles.gles2.glBufferSubData`
=====================================

.. function:: pogles.gles2.glBufferSubData(target, offset, size, data)

    Update a subset of a buffer object's data store.

    :param target: is the target buffer object.  It must be
            :data:`~pogles.gles2.GL_ARRAY_BUFFER` or
            :data:`~pogles.gles2.GL_ELEMENT_ARRAY_BUFFER`.
    :type target: int
    :param offset: is the offset into the buffer object's data store where data
            replacement will begin, measured in bytes.
    :type offset: int
    :param size: is the size in bytes of the data store region being replaced.
    :type size: int
    :param data: is a pointer to the new data that will be copied into the data
            store.
    :type data: object that implements the buffer protocol
    :raises: :exc:`~pogles.gles2.GLException`


Description
-----------

:func:`~pogles.gles2.glBufferSubData` redefines some or all of the data store
for the buffer object currently bound to *target*.  Data starting at byte
offset *offset* and extending for *size* bytes is copied to the data store from
the memory pointed to by *data*.  An exception is raised if *offset* and *size*
together define a range beyond the bounds of the buffer object's data store.


Notes
-----

When replacing the entire data store, consider using
:func:`~pogles.gles2.glBufferSubData` rather than completely recreating the
data store with :func:`~pogles.gles2.glBufferData`.  This avoids the cost of
reallocating the data store.

Consider using multiple buffer objects to avoid stalling the rendering pipeline
during data store updates.  If any rendering in the pipeline makes reference to
data in the buffer object being updated by
:func:`~pogles.gles2.glBufferSubData`, especially from the specific region
being updated, that rendering must drain from the pipeline before the data
store can be updated.

Clients must align data elements consistent with the requirements of the client
platform, with an additional base-level requirement that an offset within a
buffer to a datum comprising **NN**.
