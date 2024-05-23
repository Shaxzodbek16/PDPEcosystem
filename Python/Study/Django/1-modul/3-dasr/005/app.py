from flask import Flask, request

app = Flask(__name__)


@app.route('/static/image.png')
def show_image():
    pic = app.send_static_file('image.jpg')
    return (f'<img src="static/{pic}" width=400px> <br> <br> '
            f'<a href="/">Home</a>')


@app.route('/')
def home():
    return '<h1>Home</h1> <a href="/static/image.jpg">Show image</a>'


if __name__ == '__main__':
    app.run(debug=True)
