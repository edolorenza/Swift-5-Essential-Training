import Cocoa

//  1.Create a type alias tuple called Attack with named values for name and damage
typealias Attack = (name: String, damage: Int)

//  2.write a simple function called  attackEnemy with an integer parameter that prints out an interpolated string
func attackEnemy(damage: Int) {
    print("Enemy hit for \(damage) damage!\n")
}
//  3.write an overloaded version of attackEvenmy with a parameter of type attack that returns an string
func attackEnemy(attack: Attack) -> String{
    return "You attacked with \(attack.name)\nEnemy it for \(attack.damage) damage!\n"
}
//  4.use both attackEnemey methods
attackEnemy(damage: 90)
var message = attackEnemy(attack: ("Power Slam", 55))
print(message)
//  5.create a type alias closure called AttackClosure that takes in an array of Attacks and returns void, then declare a test array of Attack values.
typealias AttackClosure = ([Attack]) -> Void
let playerActions = [("Mist Bomb", 45), ("Ranger Eye", 15), ("Fists of fury", 5)]
//  6.Write a function called fetchPlayerAttacks that has a closure parameter of type AttackClosure and no return value
func fetchPlayerAttacks(closure: AttackClosure){
    closure(playerActions)
}
//  7.Call fetchPlayerAttacks and loop through the array inside the closure body to print out its tuple values
fetchPlayerAttacks{(attackOptions) in
    for (name, damage) in attackOptions {
        print("\(name) will hit for \(damage) if cast...")
    }
}
