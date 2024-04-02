# Challenge
29 Solves
CCV
993
I've got some credit cards but I don't which ones are valid. Where did I get them? Uh, that's not important.

Oh, you'll probably need this: dae55498c432545826fb153885bcb06b

By mzone (@mzone on discord)

nc puffer.utctf.live 8625

# Solution
When trying to find out what's going on with the PAN and the CVV numbers, I stumbled upon several related sites like:
1. https://www.linkedin.com/pulse/card-verification-code-cvc-value-cvv-nayoon-cooray/
2. https://neapay.com/online-tools/calculate-cvv-cvc-icvv-cvv2-cvc2-dcvv.html
3. https://fint-1227.appspot.com/cvvcalc/
4. https://paymentcardtools.com/card-security-values/cvv-calculator
5. http://software.codemagus.com/WebTools/cgi-bin/cmlvccomputevisacvv

The 1st one seems to be the algorithm to get the CVV based on a given PAN, CSC and DATe (which the challenge provides). From 2 to 5 are tools that get the CVV given those 3 fields. Strangely enough, different tools generate different CVV based on the same input. My guess is that they implement different algorithms and, since none of them is public, you can't even guess which one. However, I noticed that 3 and 5 produced the same CVV as the challenge.

Since we did not manage to get a correct implementation of the algorithm, we ended up querying the 3. site and just delegate the CVV validation. _In case somebody is monitoring the traffic, they must've noticed a spontaneous increase in bandwidth usage and some unexplained spikes. Sorry for that._

The code to solve the challenge is [script.py](./script.py).

# Flag
```
100111000111010101110100011001100110110001100001011001110111101101101000011011110111000001100101010111110110111001101111011011100110010101011111011011110110011001011111011101000110100001101111011100110110010101011111011101110110010101110010011001010101111101111001011011110111010101110010011100110101111101101100011011110110110001111101
```

From binary -> `utflag{hope_none_of_those_were_yours_lol} `