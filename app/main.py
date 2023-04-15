from fastapi import FastAPI

app = FastAPI()


@app.get("/")
def service_only():
    return {"message": "On"}