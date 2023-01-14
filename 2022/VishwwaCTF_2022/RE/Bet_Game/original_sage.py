


sage_words = "ǏǇǣŻǏƟƣƷƫƣƷƛŻƷƓƛƓǏƣǗƓƯǣ"

def function(passed_strr):
    variable_1=''
    for letter in passed_strr:
        new_letter = interpret_letter(letter)
        variable_1 = variable_1+chr(2*(ord(new_letter))+1)
    print("Result is: {}".format(variable_1))
    return variable_1

def interpret_letter(passed_char):
    return chr(2*(ord(passed_char))-1)

print("The biggest clue lies in your input")  

user_input = input("Your input: ")

if sage_words == function(user_input):
    print("!_h0p3_y0u_g0t_!t_n0w")
else:
    print("t@k3_f3w_5t3p5_b@<k")  

