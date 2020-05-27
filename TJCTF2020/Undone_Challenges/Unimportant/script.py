#!/usr/bin/env python3

from PIL import Image
import binascii

def decode(img):
	pixels = img.load()
	i = 0
	for x in range(img.width):
		for y in range(img.height):
			pixel = pixels[x,y]
			pixel = (pixel[0], pixel[1]&~0b10|(bits[i]>>1), pixel[2], pixel[3])
			pixels[x,y] = pixel
			i += 1
			if i == len(bits):
				return

img = Image.open("unimportant.png")


decode(img)

img.save("source.png")
