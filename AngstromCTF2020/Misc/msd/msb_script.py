from PIL import Image

extracted_bin = []
with Image.open("encoded_image.png") as img:
    width, height = img.size
    byte = []
    for x in range(0, width):
        for y in range(0, height):
            pixel = list(img.getpixel((x, y)))
            for n in range(0,3):
                # extracted_bin.append(pixel[n]&1) 1 -> 00000001
                if pixel[n]&128 is 0:
                	extracted_bin.append(0)
                else:
                	extracted_bin.append(1)
                #extracted_bin.append(pixel[n]&128) # 128 -> 10000000
                #print("Pixel is: ", pixel[n], "and 128 is:", pixel[n]&128)

#print("EXTRACTED DATA IS:", extracted_bin)

#data = "".join([str(x) for x in extracted_bin])

def getbytes(bits):
    done = False
    while not done:
        byte = 0
        for _ in range(0, 8):
            try:
                bit = next(bits)
            except StopIteration:
                bit = 0
                done = True
            byte = (byte << 1) | bit
        yield byte

with open("msb_output", "wb") as file:
	for byte in getbytes(iter(extracted_bin)):
		file.write(bytes([byte]))


