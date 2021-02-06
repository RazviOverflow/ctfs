When reversing the binary, one can notice there are 4 functions that correspond to eating helty, doing pushups, running and sleeping. You can select one of the each day and it will subtract from the total weight a fixed number of pounds:
- [1] Eat healthy: -4
- [2] Do pushup: -1 *(It doesn't matter the text says do **50** pushups)*
- [3] Go run: -2
- [4] Go sleep: -3

If you try to readh 180 from 211 performing only 7 activities, you'll notice it is not possible. The closer is 211 - (eat_healthy * 7) = 183.

The trick can only be seen reversing the binary (hence the category of the challenge) and turns out everytime the user goes to run it also sleeps. That is, everytime you choose to [3] run (-2) you automatically sleep as well (-3) resulting in a total 5 pounds weight loss. 

This way, in order to reach 180 you must go running 6 times (-30) and then do pushups (-1).

The flag is: tjctf{w3iGht_l055_i5_d1ff1CuLt}