from random import randint

def email_randomizer():
    random_email = "xxx" + str(randint(11111, 99999)) + "@gmail.com"
    return random_email

def login_randomizer():
    random_name = "somename" + str(randint(11111, 99999))
    return random_name

def password_randomizer():
    random_password = "goodpassword" + str(randint(11111, 99999))
    return random_password

random_email_pylib = email_randomizer()
random_login_pylib = login_randomizer()
random_password_pylib = password_randomizer()
