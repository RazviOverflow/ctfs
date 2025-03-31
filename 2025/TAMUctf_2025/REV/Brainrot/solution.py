import numpy as np
from hashlib import sha256

# Initial healthy_brain neurons
healthy_brain = np.array([
    [71, 101, 18, 37, 41, 69, 80, 28, 23, 48],
    [35, 32, 44, 24, 27, 20, 34, 58, 24, 9],
    [73, 29, 37, 94, 27, 58, 104, 65, 116, 44],
    [26, 83, 77, 116, 9, 96, 111, 118, 52, 62],
    [100, 15, 119, 53, 59, 34, 38, 68, 104, 110],
    [51, 1, 54, 62, 56, 120, 4, 80, 60, 120],
    [125, 92, 95, 98, 97, 110, 93, 33, 128, 93],
    [70, 23, 123, 40, 75, 23, 104, 73, 52, 6],
    [14, 11, 99, 16, 124, 52, 14, 73, 47, 66],
    [128, 11, 49, 111, 64, 108, 14, 66, 128, 101]
], dtype=np.int64)

# Required output from think() for each 10-char block
required_thoughts = [
    [59477, 41138, 59835, 73146, 77483, 59302, 102788, 67692, 62102, 85259],
    [40039, 59831, 72802, 77436, 57296, 101868, 69319, 59980, 84518, 73579466],
    [59783, 73251, 76964, 58066, 101937, 68220, 59723, 85312, 73537261, 7793081533],
    [71678, 77955, 59011, 102453, 66381, 60215, 86367, 74176247, 9263142620, 982652150581],
]

# Brainrot data
brainrot = b"gnilretskdi ,coffee ,ymotobol ,amenic etulosba ,oihO ni ylno ,oihO ,pac eht pots ,pac ,yadot yarp uoy did ,pu lio ,eohs ym elkcub 2 1 ,sucric latigid ,zzir tanec iaK ,tac frumS ,yzzilg ,ekahs melraH ,tanec iaK ,raebzaf ydderF ,gnixamnoog ,hoesac ,relzzir eht rof ttayg ruoy tuo gnikcits ,reppay ,gnippay ,pay ,gniggom ,gom,ttalcobmob ,gnillihc gnib ,deepswohsi ,tor niarb ,oitar + L ,ozob L ,L ,oitar ,ie ie iE ,suoived ,emem seimmug revas efil dna seceip s'eseeR ,io io io ,ytrap zzir koTkiT ,teggun ,su gnoma ,retsopmi ,yssus ,suS ,elgnid eladnuaQ ,gnos metsys ym ni atnaF ,kcil suoived ,syddid ta sthgin 5 ,hsinapS ro hsilgnE .gnos teksirb ,agnizab ,bruc eht etib ,orb lil ,dulb ,ni gnihcram og stnias eht nehw ho ,neerb fo seert ees I ,sinneD ekud ,biks no ,ennud yvvil ,knorg ybab ,rehtorb pu s'tahw ,gab eht ni seirf eht tuP ,edaf repat wol ,yddid ,yddirg ,ahpla ,gnixxamskool ,gninoog ,noog ,egde ,gnigde ,raeb evif ydderf ,ekahs ecamirg ,ynnacnu ,arua ,daeh daerd tnalahcnon ,ekard ,gnixat munaF ,xat munaf ,zzir idibikS ,yug llihc ,eiddab ,kooc reh/mih tel ,gnikooc ,kooc ,nissub ,oihO ,amgis eht tahw ,amgis ,idibikS no ,relzzir ,gnizzir ,zzir ,wem ,gniwem ,ttayg ,teliot idibikS ,idibikS"[::-1]
brainrot = list(brainrot)

# Apply rot() to healthy_brain
for i in range(len(brainrot)):
    x = (3 * i + 7) % 10
    y = (9 * i + 3) % 10
    healthy_brain[x][y] ^= brainrot[i]

# Recover the 4 segments of the flag
flag_blocks = []
neurons = healthy_brain.copy()

for expected in required_thoughts:
    try:
        inverse = np.linalg.inv(neurons)
        segment = np.dot(inverse, expected)
        segment = np.round(segment).astype(np.int64)

        if not all(0 <= x < 256 for x in segment):
            raise ValueError("Non-byte values in result")

        flag_blocks.append(segment)

        # Update neurons using think()
        neurons[:-1] = neurons[1:]
        neurons[-1] = expected

    except np.linalg.LinAlgError:
        flag_blocks.append(None)

for flag_block in flag_blocks:
    print(np.array2string(flag_block))

#flag gigem{whats_up_my_fellow_skibidi_sigmas}