from flask import Flask

app = Flask(__name__)

from python_chat_app import routes
