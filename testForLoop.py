harPålegg = ["salami", "pepperSkinke", "kaviar", "prim"]

harSmør = False

handleliste = ["skinke", "melk", "ost", "brødskiver", "salami", "agurk", "paprika", "kjøttdeig", "smør"]


print("Hello welcome to the store. You have the items: ")
print(harPålegg)
for item in handleliste:
    if harPålegg.__contains__(item):
        print("We already have this pålegg")
    else:
        print("We did not have this, adding to shopping cart and buying!")
        harPålegg.append(item)
        if (item.__contains__("smør")):
            harSmør = False
        if item.startswith("s"):
            break
        print("User should now have items!")


print("After shopping, you now have these products in your refrigirator")
print(harPålegg)

print("Do you have smør now? " + harSmør.__str__())
