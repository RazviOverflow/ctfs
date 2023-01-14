
def multiply_by_len_div_3_ret_string(passed_string):
    return str(int(passed_string)*user_input_len_divided_by_3)

def process(passed_string, passed_index):
    print(passed_string, passed_index)
    index1 = 0
    index2 = 0
    auxiliar = 0
    result_string = ""
    while index1 < len(passed_string) and index2 < len(passed_index):
        if auxiliar%user_input_len_divided_by_3 == user_len_div_3_minus_one//user_len_div_3_plus_one:
            result_string += passed_index[index2]
            index2 += 1
        else:
            result_string += passed_string[index1]
            index1 += 1
        auxiliar += 1
    return result_string

#def catt(passed_string):
#    return passed_string[::user_input_len_divided_by_3-user_len_div_3_plus_one]

def caT(passed_string):
    return multiply_by_len_div_3_ret_string(passed_string[:user_input_len_divided_by_3]) + passed_string[::-1]

#def rAT(passed_string):
#    return passed_string

def Rat(passed_string):
    return "Cat" + str(len(passed_string)) + passed_string[:user_input_len_divided_by_3]

def main_function(passed_string):
    if len(passed_string) == 9:
        if str.isdigit(passed_string[:user_input_len_divided_by_3]) and\
            str.isdigit(passed_string[len(passed_string)-user_input_len_divided_by_3+1:]):
                #result_string = process(caT(passed_string), Rat(rAT(catt(passed_string))))
                result_string = process(caT(passed_string), Rat(passed_string[::-1]))
                if result_string == "C20a73t0294t0ac2194":
                    flag = "runner_" + passed_string
                    print("So here you are!! VishwaCTF{",flag,"}")
                else:
                    print("You are using right format, but answer is not correct\n>>", result_string)
        else:
            print("You are not using correct format :(\
            \n(A small help from out side, Format should be like 123xyz789)")
    else:
        print("Wrong answer, check length :(")

print("What'S tHe aNsWer")
user_input = input()
user_input_len_divided_by_3 = len(user_input)//3
user_len_div_3_plus_one = user_input_len_divided_by_3+1
user_len_div_3_minus_one = user_input_len_divided_by_3-1
main_function(user_input)
