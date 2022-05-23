from Crypto.Cipher import AES
from Crypto.Util.Padding import pad
from binascii import hexlify
import os 

BLOCK_SIZE = 16

key = os.urandom(BLOCK_SIZE)
iv = os.urandom(BLOCK_SIZE)


cbc = AES.new(key,AES.MODE_CBC,iv)

pt_cbc = pad(b"GDG{this_is_AES_CBC_mode}" ,BLOCK_SIZE)


ct = cbc.encrypt(pt_cbc)

print(f'''ct = {hexlify(ct).decode()}
key = {hexlify(key).decode()}
iv = {hexlify(iv).decode()}
''')

