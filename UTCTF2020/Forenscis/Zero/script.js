const stego = require("./unicode_steganography.js").unicodeSteganographer;
stego.setUseChars('\u200b\u200c\u200d\u200e\u200f');

var fs = require("fs");
var text = fs.readFileSync("zero.txt");

console.log(text);

console.log(stego.decodeText(text));

var myBuffer = [];
var str = stego.decodeText(text).hiddenText.toString();
console.log("EL STR ES: " + str)
var buffer = new Buffer(str, 'utf16le');
for (var i = 0; i < buffer.length; i++) {
    myBuffer.push(buffer[i]);
}

console.log(myBuffer.toString());