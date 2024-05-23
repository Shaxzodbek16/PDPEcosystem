from flask import Flask


app = Flask(__name__)


@app.route('/')
def hello():
    return f'<h1 align="center">Hello, World!</h1>'


if __name__ == '__main__':
    app.run(debug=True)
