import asyncio


async def async_example(number: int) -> str:
    print("Starting example function with number:", number)
    await asyncio.sleep(2)
    print("Finished example function with number:", number)
    return str(number)


async def main() -> None:
    print("Hello...")
    tasks = [async_example(i) for i in range(5)]
    await asyncio.gather(*tasks)
    print("...World")


if __name__ == "__main__":
    asyncio.run(main(), debug=True)
