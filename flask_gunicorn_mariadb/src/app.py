from flask import Flask, jsonify

app = Flask(__name__)
@app.route('/')
@app.route('/<id>')
def index(id=None):
  return 'flask app'

if __name__ == '__main__':
  app.run()