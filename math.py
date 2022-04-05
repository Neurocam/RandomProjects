from math import factorial
from math import cos
from math import radians
from math import sin
from math import sqrt
from math import atan2
from math import degrees
from math import gcd
import statistics

def typeint(value):
    try:
        int(value)
        return True
    except ValueError:
        return False


def typefloat(value):
    try:
        float(value)
        return True
    except ValueError:
        return False


def converttype(s):
    for n in s:
        if typeint(s):
            return int(s)
        elif typefloat(s):
            return float(s)
        else:
            return str(s)
    return n


def pick(l, k):
    return (factorial(l)/(factorial(l-k)*factorial(k)))


def vecmagadd(mag1, dir1, mag2, dir2):
    vec1 = [mag1*cos(radians(dir1)), mag1*sin(radians(dir1))]
    vec2 = [mag2*cos(radians(dir2)), mag2*sin(radians(dir2))]
    vadd = [vec1[0]+vec2[0], vec1[1]+vec2[1]]
    vmag = sqrt(vadd[0]*vadd[0]+vadd[1]*vadd[1])
    vdir = atan2(vadd[1], vadd[0])
    vdir = degrees(vdir)
    if vdir < 0:
        vdir += 360.0
    return [vmag, vdir]


def vecmagaddunits(mag1, dir1, mag2, dir2):
    vadd = [mag1+mag2, dir1+dir2]
    vmag = sqrt(vadd[0]*vadd[0]+vadd[1]*vadd[1])
    vdir = atan2(vadd[1], vadd[0])
    return [vmag, vdir]


def vecmagsub(mag1, dir1, mag2, dir2):
    vec1 = [mag1*cos(radians(dir1)), mag1*sin(radians(dir1))]
    vec2 = [mag2*cos(radians(dir2)), mag2*sin(radians(dir2))]
    vsub = [vec1[0]-vec2[0], vec1[1]-vec2[1]]
    vmag = sqrt(vsub[0]*vsub[0]+vsub[1]*vsub[1])
    vdir = atan2(vsub[1], vsub[0])
    vdir = degrees(vdir)
    if vdir < 0:
        vdir += 360.0
    return [vmag, vdir]


def vecmagsubunits(mag1, dir1, mag2, dir2):
    vsub = [mag1-mag2, dir1-dir2]
    vmag = sqrt(vsub[0]*vsub[0]+vsub[1]*vsub[1])
    vdir = atan2(vsub[1], vsub[0])
    return [vmag, vdir]


def complexangle(realn, compn, degrad):
    if degrad == 'd':
        return degrees(atan2(compn, realn))
    elif degrad == 'r':
        return atan2(compn, realn)
    else:
        return atan2(compn, realn)


def compmagdir(mag, dr):
    return [mag*cos(radians(dr)), mag*sin(radians(dr))]


def lcm(a, b):
    return abs(a*b)/gcd(a, b)


# def fencingguy(name):
#     return ord()

# r=[convertType(x) for x in input("Stuff: ").split()]
# r=[convertType(x) for x in input("Stuff: ")]
# print(vecmagsub(r[0],r[1],r[2],r[3]))
r = [converttype(x) for x in input("Stuff: ").split()]
print(statistics.stdev(r))
# print(gcd(r[0], r[1]))
# m=[gamma(x) for x in r]
# o=m[::2]
# j=m[1::2]
# n=[fmod(i,24) for i in o]
# p=[fmod(i,27) for i in j]
# print(m)
# print(o)
# print(j)
# print(n)
# print(p)
# g=sum(n)
# h=sum(p)
# w=g+h
# print(w)

# print(complexangle(r[0],r[1],r[2]))
# print(vecmagadd(r[0],r[1],r[2],r[3]))
# print(pick(r[0],r[1]))
# def sixtext(n):
#     for i in range(100000):
#         if(i % 2 == 0):
#             print(6.0*i)
# print(sixtext(r));
