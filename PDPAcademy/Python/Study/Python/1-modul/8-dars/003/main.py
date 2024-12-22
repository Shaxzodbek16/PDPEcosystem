# l=['olma', 'anor','jaummma']
# a=max(l, key=len)
# print(a)


def long(*ismlar):
    print(
        max(
            ismlar,
            key=len,
        )
    )


long(
    "salom",
    "apple",
    "green",
    "orange",
    "black",
    "blue",
    "green",
    "orange",
    "black",
    "orange",
)
