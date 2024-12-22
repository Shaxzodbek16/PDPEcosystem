from datetime import datetime
from typing import Union

from fastapi import FastAPI, status
from pydantic import BaseModel

app = FastAPI()

books = []


class BookSchema(BaseModel):
    title: str
    description: str | None = None
    quantity: int
    price: str
    created_at: datetime = datetime.now().strftime("%Y-%m-%d %H:%M:%S")


@app.get(
    "/books",
    status_code=status.HTTP_200_OK,
    response_model=list[BookSchema],
    tags=["Books"],
)
async def get_books():
    if len(books) == 0:
        return []
    books.sort()
    return books


@app.get(
    "/books/{index}",
    status_code=status.HTTP_200_OK,
    response_model=Union[BookSchema, dict[str, str]],
    tags=["Books"],
)
async def get_book(index: int):
    if index > len(books):
        return {"message": "Sorry, book not found!"}
    return books[index - 1]


@app.post(
    "/books/add",
    status_code=status.HTTP_201_CREATED,
    response_model=BookSchema,
    tags=["Books"],
)
async def add_book(book: BookSchema):
    books.append(book)
    return book.model_dump()


@app.put(
    "/books/update/{index}",
    status_code=status.HTTP_200_OK,
    response_model=Union[BookSchema, dict[str, str]],
    tags=["Books"],
)
async def update_book(book: BookSchema, index: int):
    if index > len(books):
        return {"message": "Sorry, book not found!"}
    books[index - 1] = book
    return book.model_dump()


@app.delete(
    "/books/delete/{index}",
    status_code=status.HTTP_200_OK,
    tags=["Books"],
    response_model=Union[BookSchema, dict[str, str]],
)
async def delete_book(index: int):
    if index > len(books):
        return {"message": "Sorry, book not found!"}
    book = books[index - 1]
    books.pop(index - 1)
    return book
