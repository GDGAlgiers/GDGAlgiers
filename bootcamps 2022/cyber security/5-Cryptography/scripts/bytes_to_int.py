from binascii import hexlify, unhexlify
from Crypto.Util.number import bytes_to_long,long_to_bytes


message = "hey people !"

#from string to int
a=int(''.join([hex(ord(i))[2:].zfill(2) for i in message]),16)

b=int(hexlify(message.encode()),16)

c=bytes_to_long(message.encode())


#from int to string
d=unhexlify(hex(a)[2:])

e= long_to_bytes(a)

f=bytes.fromhex(hex(a)[2:])

g=a.to_bytes(len(message),byteorder='big')

for i in [a,b,c,d,e,f,g]:print(i)
