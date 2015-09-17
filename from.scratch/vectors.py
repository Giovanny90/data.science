def vector_add(v, w):
    """adds corresponding elements."""
    return [v_i + w_i
            for v_i, w_i in zip(v, w)]


def vector_substract(v, w):
    return [v_i - w_i
            for v_i, w_i in zip(v, w)]


def vector_sum(vectors):
    return reduce(vector_add, vectors)
# Or: vector_sum = partial(reduce, vector_add)


def scalar_multiply(c, v):
    return [c * v_i for v_i in v]


def vector_mean(vectors):
    """computes the componentwise means of a list 
    of (same-sized) vectors."""
    n = len(vectors)
    return scalar_multiply(1 / n, vector_sum(vectors))


def dot(v, w):
    """dot product of two vectors."""
    return sum(v_i * w_i
               for v_i, w_i in zip(v, w))


def sum_of_squares(v):
    return dot(v, v)


import math


def magnitude(v):
    return math.sqrt(sum_of_squares(v))


def squared_distance(v, w):
    return sum_of_squares(vector_substract(v, w))


def distance(v, w):
    return math.sqrt(squared_distance(v, w))
