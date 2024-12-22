import asyncio
import random


async def prepare_order(name: str, preparing_time: int) -> None:
    print("Preparing order for:", name, "in", preparing_time, "seconds")
    await asyncio.sleep(preparing_time)
    print(f"Order prepared for: {name} in {preparing_time} seconds")


names = [
    "John",
    "Doe",
    "Jane",
    "Alice",
    "Bob",
    "Eve",
    "Mallory",
    "Trudy",
    "Carol",
    "Charlie",
    "David",
    "Frank",
    "Grace",
    "Heidi",
    "Ivan",
    "Jack",
    "Kevin",
    "Larry",
    "Mallory",
    "Nancy",
    "Oscar",
    "Peggy",
    "Quentin",
    "Romeo",
    "Sue",
    "Trent",
    "Ursula",
    "Victor",
    "Walter",
    "Xander",
    "Yvonne",
    "Zelda",
]


async def main() -> None:
    tasks = [prepare_order(name, random.randint(1, 15)) for name in names]
    await asyncio.gather(*tasks)


if __name__ == "__main__":
    asyncio.run(main(), debug=True)
