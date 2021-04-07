import Foundation

//  1. Create an array called shopItemsArray and fill it with a few things, then create a dictionary called shopItemsDictionary with key that match your array items, with price for their values
var shopItemsArray : [String] = ["Mandragora", "Health Potion", "Elixir", "Mana Potion"]
var shopItemsDictionary : [String: Int] = ["Mandragora" : 100, "Healt Potion" : 80, "Elixir" : 500, "Mana Potion" : 75]

//  2. Use the contains method to check if shopItemsArray has the item you want (make it an item that is no in the array)
shopItemsArray.contains("Dragon Jewel")

//  3. Use the insert method to add the missing item to shopItemsArray at an index you choose
shopItemsArray.insert("Dragon Jewel", at: 2)

//  4. Create a new variable called selectedItem and assign it an item from shopItemsArray by using subscript syntax.
var selectedItems = shopItemsArray[0]

//  5. Create another variable called selectedItemPrice and use selectedItem and subscript syntax it's vaue from shopItemsDictionary
var selectedItemsPrice = "Buy :\(shopItemsArray[0]) \nPrice :\(shopItemsDictionary[selectedItems]!)"

//  6.  Create a set called fullArmorSet and assign it a fewe string values, then create a second set called currentArmorSet and assign it some, but not all, of the same values as fullArmorSet
var fullArmorSet : Set = ["Conqueror Armor", "Conqueror Greaves", "Conqueror Helmet", "Conqueror Gauntlets"]
var currentArmorSet : Set = ["Conqueror Gauntlets", "Conqueror Helmet"]

//  7.  Use the substract methodd to find out which items currentArmorSet is missing for complete set
var missingPiece = fullArmorSet.subtracting(currentArmorSet)
print(missingPiece)

//  8. Create a tuple called armorPieceTuple and assign it names variables for name, cost, and canEquip, all with initial values, then access the canEquip value with dot notaion
var armorPieceTuple = (Name : "Conqueror Armor", Cost: 1500, canEquip : false)
armorPieceTuple.canEquip
