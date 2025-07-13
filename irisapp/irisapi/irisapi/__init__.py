from fastapi import FastAPI 
from fastapi.responses import JSONResponse
from irisapi.utils.dummy import get_random_prediction

version="0.1.0"
description="Iris API for Cosmos DB"

app = FastAPI()

@app.get("/")
async def read_root():
    return {"message": "Welcome to the Iris API", "version": version, "description": description}

@app.post("/predict")
async def predict(data: dict)-> JSONResponse:
    """
    Predict the class of iris flowers based on input features.
    """
    # Here you would typically call your model to make a prediction
    # For now, we will return a mock response
    prediction = get_random_prediction()
    return JSONResponse(content=prediction)

