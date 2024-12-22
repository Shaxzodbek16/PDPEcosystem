import asyncio
import logging
import sys
from email.policy import default

from aiogram import Bot, Dispatcher, html, F
from aiogram.client.default import DefaultBotProperties
from aiogram.enums import ParseMode
from aiogram.filters import CommandStart, Command
from aiogram.types import (
    Message,
    KeyboardButton,
    ReplyKeyboardMarkup,
    InlineKeyboardButton,
    InlineKeyboardMarkup,
)

import environ

environ.Env.read_env("../.env")
env = environ.Env()

BOT_TOKEN = env("BOT_TOKEN")

TOKEN = BOT_TOKEN

dp = Dispatcher()


# /start
@dp.message(CommandStart())
async def command_start_handler(message: Message) -> None:
    await message.answer(f"Hello, {html.bold(message.from_user.full_name)}!")


# reply button
@dp.message(Command("reply_button"))
async def reply_button(message: Message) -> None:
    design: list[list] = [
        [KeyboardButton(text="Section 1")],
        [KeyboardButton(text="Section 2")],
        [KeyboardButton(text="Section 3"), KeyboardButton(text="Section 4")],
    ]
    rkm = ReplyKeyboardMarkup(keyboard=design, resize_keyboard=True)
    await message.answer(text="Select one of them", reply_markup=rkm)


# inline button
@dp.message(Command("inline_button"))
async def inline_button(message: Message) -> None:
    design: list[list] = [
        [
            InlineKeyboardButton(
                text="Inline section 1", callback_data="Inline section 1"
            ),
            InlineKeyboardButton(text="✅", callback_data="tick"),
        ],
        [
            InlineKeyboardButton(
                text="Inline section 2", callback_data="Inline section 2"
            ),
            InlineKeyboardButton(text="✅", callback_data="tick"),
        ],
        [
            InlineKeyboardButton(
                text="Inline section 3", callback_data="Inline section 3"
            ),
            InlineKeyboardButton(text="❌", callback_data="cross"),
        ],
        [
            InlineKeyboardButton(
                text="Inline section 4", callback_data="Inline section 4"
            ),
            InlineKeyboardButton(text="❌", callback_data="cross"),
        ],
    ]
    rkm = InlineKeyboardMarkup(inline_keyboard=design)
    await message.answer(text="Select one of them", reply_markup=rkm)


# get phone number and location from user
@dp.message(Command("phone_number_and_location"))
async def get_phone_number(message: Message) -> None:
    btn = [
        [
            KeyboardButton(text="Share phone number", request_contact=True),
            KeyboardButton(text="Share current location", request_location=True),
        ]
    ]
    rkm = ReplyKeyboardMarkup(keyboard=btn, resize_keyboard=True)
    await message.answer("Send your phone number or location", reply_markup=rkm)


# handle phone number from user
@dp.message(F.contact)
async def handle_phone_number(message: Message) -> None:
    await message.answer(text=message.contact.phone_number)


# handle location from user
@dp.message(F.location)
async def handle_location(message: Message) -> None:
    await message.answer(
        text=f"{message.location.latitude}, {message.location.longitude}"
    )


# /menu
@dp.message(Command("menu"))
async def menu_handler(message: Message) -> None:
    await message.answer("Menu is opened")


# /help
@dp.message(Command("help"))
async def menu_handler(message: Message) -> None:
    await message.answer("Help section is opened")


# taking picture
@dp.message(F.photo)
async def photo_handler(message: Message) -> None:
    await message.answer("It is photo format")


# specific user handling
# It will handle messages for only admin
# & is char which is mean "and"
@dp.message((F.text == "admin") & (F.from_user.id == 6521856185))
async def user_handler(message: Message) -> None:
    await message.answer("You are user 6521856185")


# multiple Id handler
@dp.message(F.from_user.id.in_({6521856185, 6521856184}))  # add you want
async def multiple_user_handler(message: Message) -> None:
    await message.answer("You are user 6521856185")


# Reply
@dp.message(F.text == "Hello")
async def hello_handler(message: Message) -> None:
    try:
        await message.reply("Hello, How is going on?")
    except TypeError:
        await message.reply("I have something wrong...")


# Answer
@dp.message(F.text == "What is up?")
async def text_handler(message: Message) -> None:
    try:
        await message.answer("It going pretty well.")
    except TypeError:
        await message.answer("Check network, please!")


# Copy and send itself
@dp.message()
async def echo_handler(message: Message) -> None:
    try:
        await message.send_copy(chat_id=message.chat.id)
    except TypeError:
        await message.answer("Nice try!")


async def main() -> None:
    bot = Bot(token=TOKEN, default=DefaultBotProperties(parse_mode=ParseMode.HTML))
    await dp.start_polling(bot)


if __name__ == "__main__":
    logging.basicConfig(level=logging.INFO, stream=sys.stdout)
    asyncio.run(main())
