import sys
import matplotlib.pyplot as plt
import pynmea2
from datetime import datetime
import math

gps = []
file = sys.argv[1]
lngs, lats, msgs = [], [], []

def convert(data):
	sentencearr = (data).split(',')
	n = sentencearr[3]
	w = sentencearr[5]
	return str(float(n[:2]) + (float(n[2:])/60)) + " N " + str(float(w[:3]) + (float(w[3:])/60)) + " W"


with open(file, 'r') as in_file:
	data = in_file.read().splitlines()


target = "GPGGA"

msgs_gpgga = []

for line in data:
	msg = bytearray.fromhex(line).decode()
	if msg != '' and 'GPRMC' in msg:
		msg_split = msg.split(',')
		d = msg_split[1][:-3]+' '+msg_split[9]
		datetime_object = datetime.strptime(d, '%H%M%S %d%m%y')
		msg_split.append(datetime_object)
		msgs.append(msg_split)
	if msg != '' and 'GPGGA' in msg:
		msgs_gpgga.append(msg)



msgs.sort(key=lambda x: x[12])
msgs_str = []

for msg in msgs:
	msg[12] = msg[12].strftime('%H:%M:%S %d/%m/%y')
	msgs_str.append(','.join(msg))


with open('gps_gprmc.txt', 'w') as out_file:
	for msg in msgs_str:
		out_file.write(msg + "\n")


with open('gps_gpgga.txt', 'w') as out_file:
	for msg in msgs_gpgga:
		out_file.write(msg + "\n")


if target == "GPRMC":

	for coor in msgs_str:
		#print(coor)
		coor_decoded = convert(coor)
		coor_split = coor_decoded.split(' N ')
		lat,lng = float(coor_split[0]), float(coor_split[1][:-2])
		
		if target == "GPRMC":
			lats.append(lat)
			lngs.append(lng)

		#print(lat," ",lng)
		gps.append(coor_decoded)

else:

	for coor in msgs_gpgga:
		#print(coor)
		msg = pynmea2.parse(coor)

		if target == 'GPGGA':
			lats.append(msg.latitude)
			lngs.append(msg.longitude)

		#print(msg.latitude, ' ', msg.longitude)



size = 100
chuncks = len(lngs) / size
total_chuncks = math.ceil(chuncks)
print(len(lngs), total_chuncks)

for i in range(0,total_chuncks):
	a = i*size
	b = (i+1)*size
	if target == "GPRMC":
		plt.plot(lngs[a:b], lats[a:b], 'b')
		plt.savefig(f'imgs/bar{i}.png')
		plt.figure().clear()
	else:
		plt.plot(lngs[a:b], lats[a:b], 'g')
		plt.savefig(f'imgs/foo{i}.png')
		plt.figure().clear()



if target == 'GPGGA':
	with open('coords_gps_GPGGA.txt', 'w') as out_file:
		for lat,lng  in zip(lats,lngs):
			out_file.write(str(lat) + " " + str(lng) + "\n")

elif target == 'GPRMC':
	with open('coords_gps_GPRMC.txt', 'w') as out_file:
		for lat,lng  in zip(lats,lngs):
			out_file.write(str(lat) + " " + str(lng) + "\n")






"""

# Create MAP

BBox = (-123.1279, -120.9718,45.8967, 45.1026)

ruh_m = plt.imread('map.png')
fig, ax = plt.subplots(figsize = (20,14))
ax.scatter(lngs[-2000:], lats[-2000:], zorder=1, alpha= 0.2, c='b', s=10)
ax.set_title('me cago en dioooooos')
ax.set_xlim(BBox[0],BBox[1])
ax.set_ylim(BBox[2],BBox[3])
ax.imshow(ruh_m, zorder=0, extent = BBox, aspect= 'equal')

plt.plot(lngs[-2000:], lats[-2000:], 'b')
plt.show()


# Create images

size = 100
chuncks = len(lngs) / size
total_chuncks = math.ceil(chuncks)
print(len(lngs), total_chuncks)

for i in range(0,total_chuncks):
	a = i*size
	b = (i+1)*size
	if target == "GPRMC":
		plt.plot(lngs[a:b], lats[a:b], 'b')
		plt.savefig(f'imgs/bar{i}.png')
		plt.figure().clear()
	else:
		plt.plot(lngs[a:b], lats[a:b], 'g')
		plt.savefig(f'imgs/foo{i}.png')
		plt.figure().clear()




plt.plot(lngs, lats, 'b')
plt.show()


with open('coords_gps_n.txt', 'w') as out_file:
	for lat,lng  in zip(lats,lngs):
		out_file.write(lat + " " + lng + "\n")



"""

"""
45.50205774166667 N 122.43668222333334 W
45.126036578333334 N 119.17516393 W
45.64076246 N 122.84038949833334 W
"""