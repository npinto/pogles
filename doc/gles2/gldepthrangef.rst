:func:`~pogles.gles2.glDepthRangef`
===================================

.. function:: pogles.gles2.glDepthRangef(nearVal, farVal)

    Specify mapping of depth values from normalized device coordinates to
    window coordinates.

    :param nearVal: is the mapping of the near clipping plane to window
            coordinates.  The initial value is 0.
    :type nearVal: float
    :param farVal: is the mapping of the far clipping plane to window
            coordinates.  The initial value is 1.
    :type farVal: float


Description
-----------

After clipping and division by **w**, depth coordinates range from -1 to 1,
corresponding to the near and far clipping planes.
:func:`~pogles.gles2.glDepthRangef` specifies a linear mapping of the
normalized depth coordinates in this range to window depth coordinates.
Regardless of the actual depth buffer implementation, window coordinate depth
values are treated as though they range from 0 through 1 (like color
components).  Thus, the values accepted by :func:`~pogles.gles2.glDepthRangef`
are both clamped to this range before they are accepted.

The setting of (0,1) maps the near plane to 0 and the far plane to 1.  With
this mapping, the depth buffer range is fully utilized.


Notes
-----

It is not necessary that *nearVal* be less than *farVal*.  Reverse mappings
such as *nearVal*\ =\ 1, and *farVal*\ =\ 0 are acceptable.
