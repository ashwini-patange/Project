from flask import Flask,flash,render_template,request,redirect,session
import bcrypt
import mysql.connector
import os
import json
from forms import LoginForm,RegisterForm
import bcrypt

app = Flask(__name__)
app.secret_key=os.urandom(24)


conn=mysql.connector.connect(host="localhost", user="root",password="", database="users")
cursor=conn.cursor()

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
    if 'id' in session: 
        student_id=session['id']
        cursor.execute("SELECT * FROM register WHERE id = {};".format(student_id))
        data = cursor.fetchall()
        return render_template('home.html', data=data)
    else:
        return redirect('/')


@app.route("/login_validation", methods=['POST'])
def login_validation(): 
    email = request.form.get('email')
    password = request.form.get('password')
    data=("select * from `register` where `email` = '{}' and `password` = md5('{}')".format(email,password))
    register=cursor.execute(data)
    register=cursor.fetchall()
    if len(register)>0:
        session['id']=register[0][0]
        if register[0][6]=="null":
            flash('please enter the previous standard marks')
            return redirect('/register')

        return redirect('/home')
    else:
        flash('email and password is not valid')
        return redirect('/')

    



@app.route("/add_user/<serverData>/", methods=['POST','GET'])
def add_user(serverData):
    studentData=json.loads(serverData) 
    name = studentData['name'] 
    rollno = studentData['rollno'] 
    email = studentData['email']
    standard = studentData['standard']
    mark =studentData['marksDetails']
    password = studentData['password'] 
    qry="""insert into `register` (`name`,`rollno`,`email`,`password`,`standard`,`mark`) values('{}','{}','{}',md5('{}'),'{}','{}')""".format(name,rollno,email,password,standard,json.dumps(mark)) 
    cursor.execute(qry)
    conn.commit()
    #session code
    cursor.execute("""select * from register where `email` like '{}' """.format(email))
    register=cursor.fetchall()
    session['id']=register[0][0]
    return "{status:true}"


@app.route("/logout")
def logout():
    session.pop('id')
    return redirect('/') 


if __name__ == "__main__":
    app.run(debug=True)