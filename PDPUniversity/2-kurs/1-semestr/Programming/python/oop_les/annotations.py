async def async_func() -> int:
    return 42

def func() -> int:
    return 42

print(async_func.__annotations__)
print(func.__annotations__)