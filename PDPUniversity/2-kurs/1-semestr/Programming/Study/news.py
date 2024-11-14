from warnings import deprecated


@deprecated("Bu funksiya developerlar tomonidan support qilinmanayti, o'rniga hello_2 ni ishlating")
def hello(name: str) -> str:
    return f"Hello {name}"

def hello2(f_name: str, l_name: str)->str:
    return f"Hello {f_name} {l_name}"


print(hello("Shaxzodbek"))
print(hello2("Shaxzodbek", "Muxtorov"))
