from flask import Flask, request

app = Flask(__name__)


@app.route('/hello')
def hello():
    name = request.args.get('name', 'PDP')
    return f'<h1>Hello, {name}</h1>', 404


if __name__ == '__main__':
    app.run(debug=True)
