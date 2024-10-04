"""Sample Flask app."""

from flask import Flask

app = Flask(__name__)


@app.route("/")
def hello_world() -> str:
    """Return a friendly HTTP greeting."""
    return "<p>Hello, World!</p>"


if __name__ == "__main__":
    app.run(host="0.0.0.0", port=8080)
