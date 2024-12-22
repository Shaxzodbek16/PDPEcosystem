from pydantic import BaseModel
from datetime import datetime


class Image(BaseModel):
    img: str
    webp: int
    created_at: datetime = datetime.now()


class Product(BaseModel):
    title: str
    description: str
    price: tuple[float, float, float]
    image: Image
    quantity: int


image_dict = {"img": "banana.jpg", "webp": 1}

banana_dict = {
    "title": "Banana",
    "description": "Fruit",
    "price": (1.0, 2.0, 3.0),
    "image": image_dict,
    "quantity": 20,
}

banana = Product(**banana_dict)

print(banana.model_dump())
