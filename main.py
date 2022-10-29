from symbol import import_from
from fastapi import FastAPI


app = FastAPI()


@app.get("/")
def get_root():
    return {"hello": "container"}
