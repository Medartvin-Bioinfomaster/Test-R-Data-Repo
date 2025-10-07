#Welcome to our very own encryption methods!

unEncryptedString = "hello world"

print("Unencrypted string: ")
print(unEncryptedString)

def encrypt_strings (stringname):
    newstringEncrypter = ""
    trial = 1
    for letter in len(stringname):
        print("hello")
        if trial % 2 != 0:
            newstringEncrypter = newstringEncrypter + letter
        else:
            newstringEncrypter = newstringEncrypter + 1 + letter

    print("Encryption complete!")
    print("Final encryption")
    print(newstringEncrypter)
