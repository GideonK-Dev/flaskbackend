# import flask

from flask import*

# initialize our app

app=Flask(__name__)

# creating routes

@app.route("/api/home")

# define function

def home():
    return jsonify({"message":"Welcome to home API"})


# API for products

@app.route("/api/products")
def products():
    return jsonify({"message":"Welcome to products api"})


# endpoint to calculate two numbers

@app.route("/api/calc",methods=["POST"])
def calcl():
    num1=request.form["num1"]
    num2=request.form["num2"]
    sum=int(num1)+int(num2)
    return jsonify({"The sum is":sum})


# calculating simple interest
@app.route("/api/simple_interest",methods=["POST"])
def simple_interest():
    rate=request.form["rate"]
    time=request.form["time"]
    principle=request.form["principle"]
    SI=int(rate)*int(time)*int(principle)/100
    return jsonify({"The simple interest is":SI})















# returning the app 

app.run(debug=True)
