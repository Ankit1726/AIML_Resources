from flask import Flask,render_template,request

### WSGI Application
app = Flask(__name__)

@app.route("/")
def wel():
     return render_template('wel.html')

@app.route("/form", methods=["GET", "POST"])
def contact():
    if request.method == "POST":
        name = request.form.get("name")
        return render_template("success.html", name=name)
    return render_template("form.html")

if __name__ == "__main__":
     app.run(debug=True)