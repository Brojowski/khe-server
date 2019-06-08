# flask_web/app.py

from flask import Flask

def create_app():
    f_app = Flask(__name__)
    return f_app


app = create_app()

@app.route('/')
def hello_world():
    return 'Hey, we have Flask in a Docker container!'


if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0')
