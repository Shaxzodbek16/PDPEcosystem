from flask import Flask, render_template

app = Flask(__name__)


@app.route('/')
def index():
    my_family_list: list[str] = ['Shaxzodbek', 'Oygul']
    return render_template('family.html', content=my_family_list)


if __name__ == '__main__':
    app.run(debug=True)
