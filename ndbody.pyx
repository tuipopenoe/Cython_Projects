cdef struct body_t:
    double x[3]
    double v[3]
    double m

cdef void make_cbodies(list bodies, body_t *cbodies, int num_cbodies):
    cdef body_t *cbody
    for i, body in enumerate(bodies):
        if i >= num_cbodies:
            break
        (x, v, m) = body
        cbody = &cbodies[i]
        cbody.x[0], cbody.x[1], cbody.x[2] = x
        cbody.v[0], cbody.v[1], cbody.v[2] = v
        cbodies[i].m = m

        