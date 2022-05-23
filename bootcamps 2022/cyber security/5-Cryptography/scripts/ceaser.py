ciphertext = "Z yrmv cvrievu yfn kf sivrb Trvjri Tzgyvi !!!"


for key in range(26):
    plaintext = ''
    for char in ciphertext:
        if char.islower():
            plaintext+=chr((ord(char)-ord('a') +key)%26 + ord('a') )
        elif char.isupper():
            plaintext+=chr((ord(char)-ord('A') +key)%26 + ord('A') )
        else: 
            plaintext += char
    print(f"key :{key}\n{plaintext}")
    input()



