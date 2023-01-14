sage_words = "ǏǇǣŻǏƟƣƷƫƣƷƛŻƷƓƛƓǏƣǗƓƯǣ"

def function(passed_strr):
    variable_1=''
    for letter in passed_strr:
        new_letter = interpret_letter(letter)
        variable_1 = variable_1+chr(2*(ord(new_letter))+1)
    return variable_1

def interpret_letter(passed_char):
    return chr(2*(ord(passed_char))-1)

#print("The biggest clue lies in your input")  

#user_input = input("Your input: ")

#if sage_words == function(user_input):
    #print("!_h0p3_y0u_g0t_!t_n0w")
#else:
    #print("t@k3_f3w_5t3p5_b@<k")  

def revert_letter(passed_char):
    #print((ord(passed_char)+1)//2)
    return chr((ord(passed_char)+1)//2)

def revert_function(passed_strr):
    variable_1=''
    for letter in passed_strr:
            #new_letter = revert_letter(letter)
            #print("Reverted letter: {}".format(new_letter))
            variable_1 = variable_1+revert_letter(chr((ord(letter)-1)//2))
    return variable_1

print(revert_function(sage_words))


