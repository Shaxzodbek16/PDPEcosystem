from fastapi import FastAPI

app = FastAPI()


@app.get("/")
async def read_root():
    return {"message": "This is a get method"}


@app.post("/")
async def read_root():
    return {"message": "This is a post method"}


@app.put("/")
def read_root():
    return {"message": "This is a put method"}


@app.delete("/")
async def read_root():
    return {"message": "This is a delete method"}


@app.patch("/")
async def read_root():
    return {"message": "This is a patch method"}


@app.options("/")
async def read_root():
    return {"message": "This is a options method"}


@app.head("/")
async def read_root():
    return {"message": "This is a head method"}


@app.trace("/")
async def read_root():
    return {"message": "This is a trace method"}

@app.get('/hello')
async def hello():
    return {"message": "Hello PDP"}

@app.post('/submit')
async def submit(path_parameter: str):
    return {"message": f"Hello {path_parameter}"}

@app.put('/update')
async def update():
    return {"message": "Data updated successfully"}


@app.delete('/delete')
async def delete():
    return {"message": "Data deleted successfully"}

@app.patch('/patch')
async def patch():
    return {"message": "Data patched successfully"}

@app.options('/options')
async def options():
    return {"message": "Options method called"}

@app.head('/head')
async def head():
    return {"message": "Head method called"}

@app.trace('/trace')
async def trace():
    return {"message": "Trace method called"}


