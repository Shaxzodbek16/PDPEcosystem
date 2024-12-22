def long(*ismlar):
    print(
        min(
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
