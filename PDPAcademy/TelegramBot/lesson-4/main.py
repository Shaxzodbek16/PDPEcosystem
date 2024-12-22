import asyncio
import json
import logging
import sys

from aiogram import Bot, Dispatcher, html
from aiogram.client.default import DefaultBotProperties
from aiogram.enums import ParseMode
from aiogram.filters import CommandStart
from aiogram.types import Message, KeyboardButton
from aiogram.fsm.state import StatesGroup, State  # new
from aiogram.fsm.context import FSMContext  # new
from aiogram.utils.keyboard import ReplyKeyboardBuilder

import environ

environ.Env.read_env("../.env")
env = environ.Env()

BOT_TOKEN = env("BOT_TOKEN")

TOKEN = BOT_TOKEN

dp = Dispatcher()


class UserForm(StatesGroup):
    full_name = State()
    age = State()
    phone_number = State()
    location = State()


@dp.message(CommandStart())
async def command_start_handler(message: Message, state: FSMContext) -> None:
    await message.answer(f"Hello, {html.bold(message.from_user.full_name)}!")
    await state.set_state(UserForm.full_name)
    await message.answer("Enter your full name.")


@dp.message(UserForm.full_name)
async def full_name_handler(message: Message, state: FSMContext) -> None:
    await state.update_data({"full name": message.text})
    await state.set_state(UserForm.age)
    await message.answer("Enter your age.")


@dp.message(UserForm.age)
async def age_handler(message: Message, state: FSMContext) -> None:
    await state.update_data({"age": message.text})
    await state.set_state(UserForm.phone_number)
    rkb = ReplyKeyboardBuilder()
    rkb.add(*[KeyboardButton(text="Phone number", request_contact=True)])
    await message.answer(
        "Enter your phone number with the button.",
        reply_markup=rkb.as_markup(resize_keyboard=True),
    )


@dp.message(UserForm.phone_number)
async def phone_number_handler(message: Message, state: FSMContext) -> None:
    await state.update_data({"phone number": message.contact.phone_number})
    await state.set_state(UserForm.location)
    rkb = ReplyKeyboardBuilder()
    rkb.add(*[KeyboardButton(text="Location", request_location=True)])
    await message.answer(
        "Enter your location with the button.",
        reply_markup=rkb.as_markup(resize_keyboard=True),
    )


@dp.message(UserForm.location)
async def location_handler(message: Message, state: FSMContext) -> None:
    await state.update_data(
        {
            "location": {
                "long": message.location.longitude,
                "lat": message.location.latitude,
            }
        }
    )
    user_data = await state.get_data()
    await state.clear()
    with open("users.json", "r") as f:
        users = json.load(f)
    users.append(user_data)
    with open("users.json", "w") as f:
        json.dump(users, f, indent=3)

    await message.answer(text="Your information has been saved successfully!")


async def main() -> None:
    bot = Bot(token=TOKEN, default=DefaultBotProperties(parse_mode=ParseMode.HTML))
    await dp.start_polling(bot)


if __name__ == "__main__":
    logging.basicConfig(level=logging.INFO, stream=sys.stdout)
    asyncio.run(main())
