#TODO: change name of list to "Refrigirator" or something
harPålegg = ["salami", "pepperSkinke", "kaviar", "prim"]

harSmør = False

handleliste = ["skinke", "melk", "ost", "brødskiver", "salami", "agurk", "paprika", "kjøttdeig", "smør"]

budgetFileLink = "budget.txt"

# Funksjon for å lese budsjettet fra filen
def les_budget():
    try:
        with open(budgetFileLink, 'r') as fil:
            innhold = fil.read()
            print("Innholdet i budsjettfilen:", innhold.strip())
    except FileNotFoundError:
        print("Filen ble ikke funnet.")

# Funksjon for å skrive budsjett til filen
def skriv_budget(nytt_belop):
    with open(budgetFileLink, 'w') as fil:
        fil.write(f"{nytt_belop}\n(kroner)")
        print(f"Budsjett skrevet til filen: {nytt_belop} (kroner)")

print("Hello welcome to the store. You have the items: ")
print(harPålegg)

print("TEST: read from budget.txt file? ")
les_budget()

#TODO: add the input handling for the user to be able to add items to the shoppingcart. Or remove stuff.

#TODO: calculate the items worth when adding items to basket, the basket should have a "price" and each items worth should increase this price when added
for item in handleliste:

    if harPålegg.__contains__(item):
        #FIXME: In this section here, should we deny the user from buying items they already own?
        print("We already have this pålegg")

    else:
        #FIXME: there is an issue/Bug in the code that stops the list from being added to the user's handleliste
        print("We did not have this, adding to shopping cart and buying!")
        harPålegg.append(item)
        if (item.__contains__("smør")):
            harSmør = False
        if item.startswith("s"):
            break
        print("User should now have items!")


#TODO: Money handling, update budget.txt with the amount the items cost, and add to list

print("After shopping, you now have these products in your refrigirator")
print(harPålegg)

#Try changing the budget
nytt_belop = 1200 - 50
skriv_budget(nytt_belop)

print("TEST: read from budget.txt file? ")
les_budget()

#Try adding 25kr
nytt_belop = nytt_belop + 25
skriv_budget(nytt_belop)

print("TEST: read from budget.txt file? ")
les_budget()

print("Do you have smør now? " + harSmør.__str__())
