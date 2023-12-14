from fastapi import FastAPI, Request


app = FastAPI(
    title="Echo your name with json",
    version="1.0.0",
)

@app.get("/{name}")
def handle_name(req: Request, name: str):
    return {
        "name": name,
        "ip": req.client.host
    }

