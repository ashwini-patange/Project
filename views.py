from flask import Flask,flash,render_template,request,redirect,session
import bcrypt
import mysql.connector
import os
import json
from forms import LoginForm,RegisterForm
from flask_pymongo import PyMongo
from bson import ObjectId


app = Flask(__name__)
app.config["MONGO_URI"] = "mongodb://localhost:27017/Information"
mongo = PyMongo(app)
app.secret_key=os.urandom(24)


@app.route("/")
def login():
    form=LoginForm()
    return render_template('login.html',form = form)


@app.route("/register")
def register():  
    form=RegisterForm()
    return render_template('register.html',form=form)


@app.route("/home")
def home(): 
    register = mongo.db.Registration
    if '_id' in session:
        data = register.find_one({'_id': ObjectId(session['_id'])})
        return render_template('home.html', data=data)
    else:
        return redirect('/')


@app.route("/login_validation", methods=['POST'])
def login_validation(): 
    register = mongo.db.Registration
    email = request.form.get('email')
    password = request.form.get('password')
    data = register.find_one({'email' : email})
    if data:
        session['_id']=str(data['_id'])
        password_data = data['password']
        if bcrypt.checkpw(password.encode('utf8'), password_data):
            if(data['mark']==None):
                return redirect('/register')
            else:
                return redirect('/home')
        else:
            flash('email and password is not valid')
            return redirect('/')
    
    else:
        flash('email and password is not valid')
        return redirect('/')

   

@app.route("/add_user/<serverData>/", methods=['POST','GET'])
def add_user(serverData):
    register = mongo.db.Registration
    studentData=json.loads(serverData) 
    name = studentData['name'] 
    rollno = studentData['rollno'] 
    email = studentData['email']
    standard = studentData['standard']
    mark =studentData['marksDetails']
    password = studentData['password']
    hashed = bcrypt.hashpw(password.encode('utf-8'), bcrypt.gensalt()) 
    register_id = register.insert({'name': name,'password':hashed, 'rollno': rollno,'email':email,'standard':standard,'mark':mark})
    register_data = register.find_one({"_id":register_id})
    session['_id']=str(register_data['_id'])
    return "{status:true}"


@app.route("/logout")
def logout():
    session.pop('_id')
    return redirect('/') 


if __name__ == "__main__":
    app.run(debug=True)