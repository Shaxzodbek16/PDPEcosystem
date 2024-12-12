from pydantic import BaseModel
from datetime import datetime


class Employee(BaseModel):
    first_name: str
    last_name: str
    email: str
    gender: str
    date_of_birth: datetime
    country_of_birth: str
    position: str

