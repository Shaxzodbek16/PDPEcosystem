def float_range(from_, to_, step_):
    while from_ < to_:
        yield from_
        from_ += step_


for i in float_range(0, 10, 0.5):
    print(i)
