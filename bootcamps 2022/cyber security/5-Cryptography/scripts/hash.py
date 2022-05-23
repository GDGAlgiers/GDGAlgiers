import hashlib

toHash = "300489"

hash = hashlib.sha256(toHash.encode()).hexdigest()

print(hash)

