from flask import Flask
app = Flask(__name__)
@app.route("/")
def hello():
    return "Hello, I love Digital test Ocean but not really!"
if __name__ == "__main__":
    app.run('0.0.0.0')
