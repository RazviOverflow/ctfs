n = 86431753033855985150102208955150746586984567379198773779001331665367046453352820308880271669822455250275431988006538670370772552305524017849991185913742092236107854495476674896994207609393292792117921602704960758666683584350417558805524933062668049116636465650763347823718120563639928978056322149710777096619

e = 43593315545590924566741189956390609253174017258933397294791907025439424425774036889638411588405163282027748339397612059157433970580764560513322386317250465583343254411506953895016705520492303066099891805233630388103484393657354623514864187319578938539051552967682959449373268200012558801313113531016410903723

c = 6017385445033775122298094219645257172271491520435372858165807340335108272067850311951631832540055908237902072239439990174700038153658826905580623598761388867106266417340542206012950531616502674237610428277052393911078615817819668756516229271606749753721145798023983027473008670407713937202613809743778378902

def rational_to_contfrac(x,y):
    # Converts a rational x/y fraction into a list of partial quotients [a0, ..., an]
    a = x // y
    pquotients = [a]
    while a * y != x:
        x, y = y, x - a * y
        a = x // y
        pquotients.append(a)
    return pquotients

def convergents_from_contfrac(frac):
    # computes the list of convergents using the list of partial quotients
    convs = [];
    for i in range(len(frac)): convs.append(contfrac_to_rational(frac[0 : i]))
    return convs

def contfrac_to_rational (frac):
    # Converts a finite continued fraction [a0, ..., an] to an x/y rational.
    if len(frac) == 0: return (0,1)
    num = frac[-1]
    denom = 1
    for _ in range(-2, -len(frac) - 1, -1): num, denom = frac[_] * num + denom, num
    return (num, denom)

def egcd(a, b):
    if a == 0: return (b, 0, 1)
    g, x, y = egcd(b % a, a)
    return (g, y - (b // a) * x, x)

def mod_inv(a, m):
    g, x, _ = egcd(a, m)
    return (x + m) % m

def isqrt(n):
    x = n
    y = (x + 1) // 2
    while y < x:
        x = y
        y = (x + n // x) // 2
    return x
  
def crack_rsa(e, n):
    frac = rational_to_contfrac(e, n)
    convergents = convergents_from_contfrac(frac)
    
    for (k, d) in convergents:
        if k != 0 and (e * d - 1) % k == 0:
            phi = (e * d - 1) // k
            s = n - phi + 1
            # check if x*x - s*x + n = 0 has integer roots
            D = s * s - 4 * n
            if D >= 0:
                sq = isqrt(D)
                if sq * sq == D and (s + sq) % 2 == 0: return d

d = crack_rsa(e, n)
m = hex(pow(c, d, n)).rstrip("L")[2:]
print(m.decode("hex"))