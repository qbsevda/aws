"""
Problem :

Task : Estimating the risk of death from coronavirus. Write a program that;

Takes "Yes" or "No" from the user as an answer to the following questions :

Are you a cigarette addict older than 75 years old? Variable → age

Do you have a severe chronic disease? Variable → chronic

Is your immune system too weak? Variable → immune

Set a logical algorithm using boolean logic operators (and/or) and use if-statements with the given variables in order to print out us a message : "You are in risky group"(if True ) or "You are not in risky group" (if False).
age =  # can be assigned only True/False
chronic =  # can be assigned only True/False
immune =  # can be assigned only True/False
risk = ?
"""

age = int(input ("What is your age? "))
addict = input ("Are you a cigarette addict? ")
chronic = input ("Do you have a severe chronic disease? ")
immune = input ("Is your immune system too weak? ")

if age > 75 :
  age = True
else:
  age = False

if addict == 'yes' :
  addict = True
else:
  addict = False

if chronic == 'yes' :
  chronic = True
else:
  chronic = False

if immune == 'yes' :
  immune = True
else:
  immune = False

result = bool (age and addict and chronic and immune)n

if result == True :
  print("You are at risk of death!")
else:
  print("There is not a risk of death")