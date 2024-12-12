from pydantic import BaseModel
from datetime import datetime
from typing import Optional


class Employee(BaseModel):
    first_name: Optional[str] = None
    last_name: Optional[str] = None
    email: Optional[str] = None
    gender: Optional[str] = None
    date_of_birth: Optional[datetime] = None
    country_of_birth: Optional[str] = None
    position: Optional[str] = None
