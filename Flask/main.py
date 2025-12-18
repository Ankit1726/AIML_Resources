from flask import Flask,render_template

'''
-> Its creates an instance of the flask class which will be your WSGI Application.
'''

## Web Server Gateway Interface
app = Flask(__name__)

@app.route("/")
def welcome():
     # return "<html><h2>Welcome to flask backend server..!</h2></html>"
     return render_template('wel.html')

@app.route("/index")
def index():
     return render_template('index.html')

@app.route('/about')
def about():
     return render_template('about.html')

if __name__ == "__main__":
     app.run(debug=True)