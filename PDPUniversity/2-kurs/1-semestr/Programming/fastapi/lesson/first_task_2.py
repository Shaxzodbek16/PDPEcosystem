import asyncio

apis: dict[str, int] = {"Review Api": 2, "User Api": 5, "Product Api": 4}


async def fetch_data(name: str, delay: int):
    print(f"Fetching data from {name} with delay of {delay} seconds")
    await asyncio.sleep(delay)
    print(f"Fetched data from {name} with delay of {delay} seconds")


async def process_data(data: dict[str, int]):
    print(f"Start processing data {data}")
    for key, value in data.items():
        await asyncio.sleep(2)
        apis[key] = value
    print(f"Updated Apis {apis}")


async def main() -> None:
    new_api: dict[str, int] = {"Order Api": 3, "Payment Api": 4, "User Api": 6}
    process_task = process_data(new_api)
    fetch_tasks = [fetch_data(name, delay) for name, delay in apis.items()]
    await asyncio.gather(process_task, *fetch_tasks)
    print("All tasks completed")


if __name__ == "__main__":
    asyncio.run(main(), debug=True)
