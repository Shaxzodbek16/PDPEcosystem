from fastapi import FastAPI, Depends, status
from sqlalchemy.orm import Session
from sqlalchemy import text
from config import get_db
from schema import Employee

app = FastAPI()


@app.get("/employee", status_code=status.HTTP_200_OK, tags=["employees"])
async def example(db: Session = Depends(get_db)):
    stmt = db.execute(text("SELECT * FROM employee"))
    mapping_res = stmt.mappings().all()
    return mapping_res


@app.get("/employee/{id}", status_code=status.HTTP_200_OK, tags=["employees"])
async def example(employee_id: int, db: Session = Depends(get_db)):
    stmt = db.execute(text(f"SELECT * FROM employee WHERE id={employee_id}"))
    mapping_res = stmt.mappings().all()
    return mapping_res


@app.post("/employees/", status_code=status.HTTP_201_CREATED, response_model=Employee, tags=["employees"])
def create_employee(employee: Employee, db: Session = Depends(get_db)):
    try:
        db.execute(text(
            f"INSERT INTO employee (first_name, last_name, email, gender, date_of_birth, country_of_birth, position) "
            f"VALUES ('{employee.first_name}', '{employee.last_name}', '{employee.email}', '{employee.gender}', '{employee.date_of_birth}', '{employee.country_of_birth}', '{employee.position}')"))
        db.commit()
        db.refresh(employee)
        return employee
    except Exception as e:
        db.rollback()
        return {"error": str(e)}
