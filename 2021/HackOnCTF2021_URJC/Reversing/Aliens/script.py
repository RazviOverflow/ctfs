def Chri1(O00O00000O0OOO0OO):
    if len(O00O00000O0OOO0OO) != 14:
        print("¡Alienígena detectado!")
        return 
    else:
        if fuscat1(O00O00000O0OOO0OO):
            print("¡Bienvenido a la nave!")
            return
        else :
            print("¡Alienígena detectado!")
            return 
def fuscat1(OOOO0OO00OO0000OO):
    O000OO0O00OO0O000 = [ord(O00OOO000O00000OO) for O00OOO000O00000OO in OOOO0OO00OO0000OO]
    OO0OO00OOOO0O00OO = [112,83,99,52,95,51,110,49,52,86,51,100,53,114]
    O00O00O00OOOOOOOO = True
    O00O000O00O0OOOO0 = 0 
    O000O00OO00O00O00 = 1 
    while O00O00O00OOOOOOOO and O00O000O00O0OOOO0 < 14:
        if OO0OO00OOOO0O00OO[O00O000O00O0OOOO0] != O000OO0O00OO0O000[O000O00OO00O00O00]:
            O00O00O00OOOOOOOO = False
        if OO0OO00OOOO0O00OO[O000O00OO00O00O00] == O000OO0O00OO0O000[O00O000O00O0OOOO0]:
            O00O000O00O0OOOO0 = O00O000O00O0OOOO0 + 2 
            O000O00OO00O00O00 = O000O00OO00O00O00 + 2 
        else:
            O00O00O00OOOOOOOO = False
    return O00O00O00OOOOOOOO


array = [83,112,52,99,51,95,49,110,86,52,100,51,114,53]
for number in array:
    print(chr(number))

print("Bienvenido a la nave, indique su contraseña de acceso: ")
Niswanobi = str(input())
Chri1(Niswanobi)