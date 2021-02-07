from flask_wtf import Form
from wtforms import StringField, BooleanField , PasswordField,validators,IntegerField

class LoginForm(Form):
    email = StringField('email',[validators.DataRequired(),validators.Email(), validators.Length(min=6, max=35)])
    password = PasswordField('password',[validators.DataRequired()])



class RegisterForm(Form):
    name = StringField('name',[validators.DataRequired(), validators.Length(min=6, max=35)])
    rollno = IntegerField('rollno',[validators.DataRequired()])
    email = StringField('email',[validators.DataRequired(),validators.Email(), validators.Length(min=6, max=35)])
    password = PasswordField('password',[validators.DataRequired(), validators.Length(min=6, max=35)])
    standard = StringField('standard',[validators.DataRequired()])
    marks = StringField('marks')
