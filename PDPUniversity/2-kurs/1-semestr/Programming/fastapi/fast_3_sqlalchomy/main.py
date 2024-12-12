from fastapi import FastAPI, Depends, status, HTTPException
from sqlalchemy.exc import SQLAlchemyError
from sqlalchemy.orm import Session
from sqlalchemy import text
from config import get_db
from schema import Employee
from typing import List

app = FastAPI()


@app.get("/employees", response_model=List[dict], status_code=status.HTTP_200_OK, tags=["employees"])
async def get_all_employees(db: Session = Depends(get_db)):
    """Get all employees from the database"""
    try:
        stmt = db.execute(
            text("SELECT * FROM employee")
        )
        employees = stmt.mappings().all()
        if not employees:
            raise HTTPException(status_code=404, detail="No employees found")
        return employees
    except SQLAlchemyError as e:
        raise HTTPException(status_code=500, detail=str(e))
    finally:
        db.close()


@app.get("/employees/{employee_id}", response_model=dict, status_code=status.HTTP_200_OK, tags=["employees"])
async def get_employee(employee_id: int, db: Session = Depends(get_db)):
    try:
        stmt = db.execute(
            text("SELECT * FROM employee WHERE id = :employee_id"),
            {"employee_id": employee_id}
        )
        employee = stmt.mappings().first()
        if not employee:
            raise HTTPException(status_code=404, detail="Employee not found")
        return employee
    except SQLAlchemyError as e:
        raise HTTPException(status_code=500, detail=str(e))
    finally:
        db.close()


@app.post("/employees", response_model=Employee, status_code=status.HTTP_201_CREATED, tags=["employees"])
async def create_employee(employee: Employee, db: Session = Depends(get_db)):
    try:
        stmt = text("""
            INSERT INTO employee (
                first_name, last_name, email, gender, 
                date_of_birth, country_of_birth, position
            ) VALUES (
                :first_name, :last_name, :email, :gender,
                :date_of_birth, :country_of_birth, :position
            ) RETURNING *
        """)

        result = db.execute(stmt, {
            "first_name": employee.first_name,
            "last_name": employee.last_name,
            "email": employee.email,
            "gender": employee.gender,
            "date_of_birth": employee.date_of_birth,
            "country_of_birth": employee.country_of_birth,
            "position": employee.position
        })

        db.commit()
        new_employee = result.mappings().first()
        return Employee(**new_employee)
    except SQLAlchemyError as e:
        db.rollback()
        raise HTTPException(status_code=400, detail=str(e))
    finally:
        db.close()


@app.put("/employees/{employee_id}", response_model=Employee, status_code=status.HTTP_200_OK, tags=["employees"])
async def update_employee(employee_id: int, employee_update: Employee, db: Session = Depends(get_db)):
    try:
        check_stmt = db.execute(
            text("SELECT * FROM employee WHERE id = :employee_id"),
            {"employee_id": employee_id}
        )
        if not check_stmt.first():
            raise HTTPException(status_code=404, detail="Employee not found")

        update_stmt = text("""
            UPDATE employee SET 
                first_name = :first_name,
                last_name = :last_name,
                email = :email,
                gender = :gender,
                date_of_birth = :date_of_birth,
                country_of_birth = :country_of_birth,
                position = :position
            WHERE id = :employee_id
            RETURNING *
        """)

        result = db.execute(update_stmt, {
            "employee_id": employee_id,
            "first_name": employee_update.first_name,
            "last_name": employee_update.last_name,
            "email": employee_update.email,
            "gender": employee_update.gender,
            "date_of_birth": employee_update.date_of_birth,
            "country_of_birth": employee_update.country_of_birth,
            "position": employee_update.position
        })

        db.commit()
        updated_employee = result.mappings().first()
        return Employee(**updated_employee)
    except SQLAlchemyError as e:
        db.rollback()
        raise HTTPException(status_code=400, detail=str(e))
    finally:
        db.close()


@app.patch("/employees/{employee_id}", status_code=status.HTTP_200_OK, tags=["employees"])
async def update_employee_partial(employee_id: int, employee_update: Employee, db: Session = Depends(get_db)):
    try:
        check_stmt = db.execute(
            text("SELECT * FROM employee WHERE id = :employee_id"),
            {"employee_id": employee_id}
        )
        if not check_stmt.first():
            raise HTTPException(status_code=404, detail="Employee not found")

        update_fields = {}
        for field, value in employee_update.dict(exclude_unset=True).items():
            update_fields[field] = value

        if not update_fields:
            return check_stmt.mappings().first()

        set_clause = ", ".join([f"{field} = :{field}" for field in update_fields])
        update_stmt = text(f"""
            UPDATE employee
            SET {set_clause}
            WHERE id = :employee_id
            RETURNING *
        """)

        update_fields["employee_id"] = employee_id

        result = db.execute(update_stmt, update_fields)
        db.commit()

        updated_employee = result.mappings().first()
        return Employee(**updated_employee)
    except SQLAlchemyError as e:
        db.rollback()
        raise HTTPException(status_code=400, detail=str(e))
    finally:
        db.close()


@app.delete("/employees/{employee_id}", status_code=status.HTTP_204_NO_CONTENT, tags=["employees"])
async def delete_employee(employee_id: int, db: Session = Depends(get_db)):
    """Delete an employee"""
    try:
        check_stmt = db.execute(
            text("SELECT * FROM employee WHERE id = :employee_id"),
            {"employee_id": employee_id}
        )
        if not check_stmt.first():
            raise HTTPException(status_code=404, detail="Employee not found")

        db.execute(
            text("DELETE FROM employee WHERE id = :employee_id"),
            {"employee_id": employee_id}
        )
        db.commit()
    except SQLAlchemyError as e:
        db.rollback()
        raise HTTPException(status_code=400, detail=str(e))
    finally:
        db.close()
