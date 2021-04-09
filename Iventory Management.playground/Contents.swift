import Foundation

//  1.Create class item and declare properties for name, price
class Item {
    var name: String
    var price: Int
    
//  4. Add an optional BonusEffect property to item named secret
    var secret: BonusEffect?
    
//  2.Declare a default initializer and set the stance properties
    init(name: String, price: Int) {
        self.name = name
        self.price = price
    }
    
}

//  3.Create a struct called BonusEffect and declare an integer property named bonus

struct  BonusEffect {
    var bonus: Int

}

//  5. Create a new class called Inventory with an Items array property named storedItemsc
class  Inventory {
    var storedItems: [Item]
    
    //6.    Declare a default initializer that takes in an array of items and assigns them storedItems
    init(items: [Item]) {
        self.storedItems = items
    }
}

//  7. Create a BonusEffect and two item instaces and assign the bonus effect as one items secret
var partyWideEffect = BonusEffect(bonus: 15)
var potion = Item(name: "Healing Potion", price: 75)
var elixir = Item(name: "Elixir IV", price: 88)
potion.secret = partyWideEffect

//  8.  Create an Inventory instance, initialize it with the item and weapon, and use optional chaining to unwrap one of the items bonus value
var cosmoInventory = Inventory(items: [potion, elixir])
if let itemPower = cosmoInventory.storedItems[0].secret?.bonus{
    print("healing potion has a bonus effect of \(itemPower)")
}else{
    print("The item has no secret effect")
}



