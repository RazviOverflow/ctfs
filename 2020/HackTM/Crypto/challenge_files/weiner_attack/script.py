#!/usr/bin/python3
import owiener

e = 65537
n = 28150970547901913019901824364390497053600856369839321617996700606130553862041378369018779003752433356889118526332329074054728613209407037089320809898343953157935211086135010436283805891893636870991411236307901650696221491790470635225076251966300189483160148297407974155121570252648252906976186499329924342873
d = owiener.attack(e, n)

if d is None:
    print("Failed")
else:
    print("Hacked d={}".format(d))