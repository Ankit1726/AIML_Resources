'''
# Building URL Dynamically
# Variable Rule
# Jinja 2 Template Engine
{{ }} -> print values in HTML
{% %} -> logic (if, for)
{# #} -> comments
'''

from flask import Flask, render_template, request, redirect, url_for

app = Flask(__name__)

@app.route("/")
def home():
    return render_template("home.html")


@app.route("/submit", methods=["GET", "POST"])
def submit():
    if request.method == "GET":
        return render_template("marks.html")

    science = float(request.form.get("science", 0))
    maths = float(request.form.get("maths", 0))
    c = float(request.form.get("c", 0))
    datascience = float(request.form.get("datascience", 0))

    average = (science + maths + c + datascience) / 4

    return redirect(url_for("result", score=average))


@app.route("/result")
def result():
    score = request.args.get("score", type=float)

    if score is None:
        return redirect(url_for("home"))

    status = "PASSED" if score >= 50 else "FAILED"

    data = {
        "Score": round(score, 2),
        "Status": status
    }

    return render_template("getresult.html", results=data)


if __name__ == "__main__":
    app.run(debug=True)

