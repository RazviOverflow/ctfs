The provided file is an exact dump of xxd original_image. In order to retrieve the original flag I had to clean the provided file leaving only the original bytes and (using sublime text) saving the output as hexadecimal bytes, not utf-8 or ascii text. 

After saving the output I extracted the original image with binwalk --d=".*"

The flag is: castorsCTF{H3r3_Is_y0uR_Fl4gg}