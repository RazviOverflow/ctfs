#!/usr/bin/python3
# RazviOverflow

import wavefile
import sys
import BitVector

def wav_to_binary(filename = 'file1.wav'):
    w = wavefile.load(filename)
    print("IMPRESO: ", w, "CON LONGITUD: ", len(w[1][0]), "\n", "FIRST:", w[1][0][0], "SECOND:", w[1][0][1])
    count = 0
    bits_list = []
    for index in range(len(w[1][0])):
    	if(index == len(w[1][0])-1):
    		break

    	if(w[1][0][index] > 0):
    		count += 1
	    	if(w[1][0][index] != w[1][0][index+1]):
	    		#print("COUNT ES:", count)
	    		if(count > 739): # LONG = 1
	    			bits_list.append("1")
	    		else: # SHORT = 0
	    			bits_list.append("0")
	    		count = 0

    	
    #bits_list.append("1") # Append one at the end so it is divisible by 8
    string = "".join(bits_list)
    print("Longitud string:", len(string),"\nContenido:", string)
    #print("Esta es la string resultante: ", "".join(bits_list))
    bv = BitVector.BitVector(bitstring = string)
    FILEOUT = open("bogus_file", "wb")
    bv.write_to_file(FILEOUT)
    FILEOUT.close()

    return w[1][0]

signal = wav_to_binary(sys.argv[1])
print("read "+str(len(signal))+" frames")
print("in the range "+str(min(signal))+" to "+str(min(signal)))