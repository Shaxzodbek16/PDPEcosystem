import asyncio
import logging
import sys

from aiogram import Bot, Dispatcher
from aiogram.client.default import DefaultBotProperties
from aiogram.enums import ParseMode
from aiogram.filters import CommandStart
from aiogram.types import Message
from aiogram.utils.keyboard import ReplyKeyboardBuilder, KeyboardButton
from aiogram.fsm.state import StatesGroup, State
from aiogram.fsm.context import FSMContext

import environ
import requests

environ.Env.read_env("../.env")
env = environ.Env()
BOT_TOKEN = env("BOT_TOKEN")
TOKEN = BOT_TOKEN

dp = Dispatcher()


class ConverterState(StatesGroup):
    converter_button = State()
    converter_money = State()
    converter = State()


@dp.message(CommandStart())
async def command_start_handler(message: Message, state: FSMContext) -> None:
    rkb = ReplyKeyboardBuilder()
    rkb.add(KeyboardButton(text="USD to UZS"), KeyboardButton(text="UZS to USD"))
    await state.set_state(ConverterState.converter_button)
    rkb = rkb.as_markup(resize_keyboard=True)
    await message.answer(
        f"Hello, Welcome to converter bot!\nIn here, You will compare valuates",
        reply_markup=rkb,
    )


@dp.message(ConverterState.converter_button)
async def converter_button_handler(message: Message, state: FSMContext) -> None:
    from_money, _, to_money = message.text.split(" ")
    await state.update_data({"from_money": from_money, "to_money": to_money})
    await message.answer(text="Enter amount...")
    await state.set_state(ConverterState.converter_money)


@dp.message(ConverterState.converter_money)
async def converter_money_handler(message: Message, state: FSMContext) -> None:
    data = await state.get_data()
    from_money = data.get("from_money")
    to_money = data.get("to_money")
    money = float(message.text)
    response = requests.get(f"https://open.er-api.com/v6/latest/{from_money}")
    convert = response.json().get("rates").get(to_money)
    await message.answer(text=f"Covert: {to_money}->{convert * money:.4f}")
    await state.clear()


async def main() -> None:
    bot = Bot(token=TOKEN, default=DefaultBotProperties(parse_mode=ParseMode.HTML))
    await dp.start_polling(bot)


if __name__ == "__main__":
    logging.basicConfig(level=logging.INFO, stream=sys.stdout)
    asyncio.run(main())
