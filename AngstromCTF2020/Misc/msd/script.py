#Kashmir code
# https://www.rapidtables.com/convert/number/ascii-hex-bin-dec-converter.html
# FLAG: 97 99 116 102 123 105 110 104 97 108 101 95 101 120 104 97 108 101 95 101 122 112 122 45 49 50 51 48 57 98 105 103 103 121 104 97 98 121 125
# actf{inhale_exhale_ezpz-12309biggyhaby}

from PIL import Image
import time

#Original image
im = Image.open('original_image.jpg')

#Encoded image
im2 = Image.open('encoded_image.png')

width, height = im.size

flag = "actf{"
flag = ''.join([str(ord(i)) for i in flag])


def encode(i, d):
	print('i: {} d:{} '.format(i, d))
	i = list(str(i))
	i[0] = d
	print('returned i: {}'.format(int(''.join(i))))
	return int(''.join(i))

def obtain_d(i):

	if len(str(i)) <= 2:
		i = list(str("{:02d}".format(i)))
	else:
		i = list(str("{:03d}".format(i)))
	return i[0]

c = 0
true_flag = []
for j in range(height):
	for i in range(width):
		data = []
		print('PIXEL ORIGINAL: {}'.format(im.getpixel((i,j))))
		
		for a , b  in zip(im.getpixel((i,j)), im2.getpixel((i,j))):
			#Check the 
			if len(str(encode(a, obtain_d(b)))) != len(str(b)):
				true_flag.append(str(0))
				input()
			else:
				true_flag.append(obtain_d(b))

			data.append(encode(a, obtain_d(b)))
			print('PIXELS: {} - {} ENC'.format(data, list(im2.getpixel((i,j)))))
			c+=1
			
		im.putpixel((i,j), tuple(data))
		print('-------------------------------')

	with open('test.txt', 'w') as out:
		pass
		#out.write(''.join(true_flag))
		
im.save("output.png")
pixels = im.load()
