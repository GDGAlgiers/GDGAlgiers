from Crypto.PublicKey import RSA
from Crypto.Util.number import inverse,bytes_to_long,long_to_bytes

keys = RSA.generate(1024)

n = keys.n
p = keys.p
q = keys.q
e = keys.e
#we can get the d just with p,q and e
def getD(p,q,e):
    assert p*q == n
    phi = (p-1)*(q-1)
    d=inverse(e,phi)
    return d

d=getD(p,q,e)
msg=b"GDG{this_is_RSA}"

msgint = bytes_to_long(msg)

enc=pow(msgint,e,n)


print(f'''n = {n}
p = {p}
q = {q}
e = {e}
enc = {enc}
''')
#print(enc)

# dec=pow(enc,d,n)
# dec=long_to_bytes(dec)

#print(dec)