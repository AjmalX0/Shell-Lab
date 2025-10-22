import string


lowercase = False
uppercase = False
num = False
special_char = False
length = False


password = input("Enter password: ")


if len(password) >= 8:
    length = True
else:
    print("Password is too short")


for char in password:
    if char.islower():
        lowercase = True
    elif char.isupper():
        uppercase = True
    elif char.isdigit():
        num = True
    elif char in string.punctuation:
        special_char = True


if not lowercase:
    print("Add a lowercase letter")
if not uppercase:
    print("Add an uppercase letter")
if not num:
    print("Add a number")
if not special_char:
    print("Add a special character")


if length and lowercase and uppercase and num and special_char:
    print("Password is strong")
else:
    print("Password is weak")
