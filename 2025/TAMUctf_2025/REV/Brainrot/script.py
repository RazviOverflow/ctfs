"""
huzz = range
mewing = for
diddy = in
its giving = return
rizz = +
lock in = from 
glze = import
skibidi = class
Cooked = False
chat is this real = if
Aura = True
yap = print
only in ohio = else
"""

from hashlib import sha256

class Brain:
    def __init__(unc, neurons):
        unc.neurons = neurons
        unc.thought_size = 10

    def brainstem(unc):
        return sha256(",".join(str(x) for x in sum(unc.neurons, [])).encode()).hexdigest()

    def rot(unc, data):
        print(f"Neurons before rot: {unc.neurons}")
        print(",".join(str(x) for x in sum(unc.neurons, [])).encode())
        for i in range(len(data)):
            unc.neurons[(3 * i + 7) % unc.thought_size][(9 * i + 3) % unc.thought_size] ^= data[i]
        print(f"Neurons after rot: {unc.neurons}")
        print(",".join(str(x) for x in sum(unc.neurons, [])).encode())

    def think(unc, data):
        thought = [0] * unc.thought_size
        for i in range(unc.thought_size):
            thought[i] = sum(unc.neurons[i][j] * data[j] for j in range(unc.thought_size))
        unc.neurons[:-1] = unc.neurons[1:]
        unc.neurons[-1] = thought
        return thought

    def unthink(unc, expected_thoughts):
        thought = [0] * unc.thought_size
        for i in range(unc.thought_size):
            for j in range(unc.thought_size):
                thought[i] -= unc.neurons[i][j] // data[j] 
            #thought[i] = 
        unc.neurons[:-1] = unc.neurons[1:]
        unc.neurons[-1] = thought
        return thought


neurons = healthy_brain = [[71, 101, 18, 37, 41, 69, 80, 28, 23, 48], [35, 32, 44, 24, 27, 20, 34, 58, 24, 9], [73, 29, 37, 94, 27, 58, 104, 65, 116, 44], [26, 83, 77, 116, 9, 96, 111, 118, 52, 62], [100, 15, 119, 53, 59, 34, 38, 68, 104, 110], [51, 1, 54, 62, 56, 120, 4, 80, 60, 120], [125, 92, 95, 98, 97, 110, 93, 33, 128, 93], [70, 23, 123, 40, 75, 23, 104, 73, 52, 6], [14, 11, 99, 16, 124, 52, 14, 73, 47, 66], [128, 11, 49, 111, 64, 108, 14, 66, 128, 101]]
thought_size = 10

required_thoughts = [
    [59477, 41138, 59835, 73146, 77483, 59302, 102788, 67692, 62102, 85259],
    [40039, 59831, 72802, 77436, 57296, 101868, 69319, 59980, 84518, 73579466],
    [59783, 73251, 76964, 58066, 101937, 68220, 59723, 85312, 73537261, 7793081533],
    [71678, 77955, 59011, 102453, 66381, 60215, 86367, 74176247, 9263142620, 982652150581],
]

brainrot = b"gnilretskdi ,coffee ,ymotobol ,amenic etulosba ,oihO ni ylno ,oihO ,pac eht pots ,pac ,yadot yarp uoy did ,pu lio ,eohs ym elkcub 2 1 ,sucric latigid ,zzir tanec iaK ,tac frumS ,yzzilg ,ekahs melraH ,tanec iaK ,raebzaf ydderF ,gnixamnoog ,hoesac ,relzzir eht rof ttayg ruoy tuo gnikcits ,reppay ,gnippay ,pay ,gniggom ,gom,ttalcobmob ,gnillihc gnib ,deepswohsi ,tor niarb ,oitar + L ,ozob L ,L ,oitar ,ie ie iE ,suoived ,emem seimmug revas efil dna seceip s'eseeR ,io io io ,ytrap zzir koTkiT ,teggun ,su gnoma ,retsopmi ,yssus ,suS ,elgnid eladnuaQ ,gnos metsys ym ni atnaF ,kcil suoived ,syddid ta sthgin 5 ,hsinapS ro hsilgnE .gnos teksirb ,agnizab ,bruc eht etib ,orb lil ,dulb ,ni gnihcram og stnias eht nehw ho ,neerb fo seert ees I ,sinneD ekud ,biks no ,ennud yvvil ,knorg ybab ,rehtorb pu s'tahw ,gab eht ni seirf eht tuP ,edaf repat wol ,yddid ,yddirg ,ahpla ,gnixxamskool ,gninoog ,noog ,egde ,gnigde ,raeb evif ydderf ,ekahs ecamirg ,ynnacnu ,arua ,daeh daerd tnalahcnon ,ekard ,gnixat munaF ,xat munaf ,zzir idibikS ,yug llihc ,eiddab ,kooc reh/mih tel ,gnikooc ,kooc ,nissub ,oihO ,amgis eht tahw ,amgis ,idibikS no ,relzzir ,gnizzir ,zzir ,wem ,gniwem ,ttayg ,teliot idibikS ,idibikS"[::-1]


brain = Brain(healthy_brain)
brain.rot(brainrot)

flag = "gigem{"+"A"*33+"}"

failed_to_think = False
for i in range(0, len(flag), 10):
    thought = brain.think(flag[i:i + 10])
    if thought != required_thoughts[i//10]:
        failed_to_think = True

if failed_to_think or brain.brainstem() != "4fe4bdc54342d22189d129d291d4fa23da12f22a45bca01e75a1f0e57588bf16":
    print("ermm... you might not be a s""igma...")
else:
    print("holy s""kibidi you popped off... go submit the flag") 

