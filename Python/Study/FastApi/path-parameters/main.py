from fastapi import FastAPI

app = FastAPI()


@app.get("/")
async def root():
    return {"name": "Shaxzodbek"}


@app.get("/items/")
async def items():
    elements: list[str] = ['Shaxzodbek', 'Shaxzodbek2', 'Shaxzodbek3']
    return {"items": elements}


@app.get("/items/{item_id}/")
async def item(item_id: str):
    elements: list[str] = ['Shaxzodbek', 'Shaxzodbek2', 'Shaxzodbek3']
    item_id = int(item_id)
    return {f"{item_id}": elements[item_id]}
