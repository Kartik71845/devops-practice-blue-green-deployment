from flask import Flask
import os

app = Flask(__name__)

COLOR = os.getenv("APP_COLOR", "blue")

@app.route("/")
def home():
    return f"<h1>Blue-Green Deployment</h1><p>Running version: <b>{COLOR}</b></p>"

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=8080)
