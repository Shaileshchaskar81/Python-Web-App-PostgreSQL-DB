from app import app

@app.route('/')
def hello():
    return "Hello from Flask with PostgreSQL in Azure!"
