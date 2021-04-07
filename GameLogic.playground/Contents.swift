import Foundation

//  1.  Create two optional string variable called leftHandWeapon and rightHandWeapon assigning them initial values is at your discrection
var leftHandWeapon : String? = "Javelin Gun"
var rightHandWeapon : String? = "Sword of Light"

//  2. use optional binding to unwrap both optionals in a single statement and debug both outcomes
if let leftWeapon = leftHandWeapon, let rightWeapon = rightHandWeapon {
    print("Left Hand Weapon: \(leftWeapon) \nRight Hand Weapon: \(rightWeapon)\n")
}else {
    print("you have no weapon")
}

//  3. Create a dictionary called playerExp and assign it some key-values pairs of type string and integer
var playerExp : [String : Int] = ["Edo" : 12, "Bob" : 0, "Lorenza" : 555 ]

//  4. Use a for-in loop to iterate over playerExp and capture the keys and values

for (Quest, Exp) in playerExp {
    print("Quest Name: \(Quest) \nExp Point: \(Exp)\n")
}

//  5.  Add a guard statement inside the for-in loop to make sure each player is at least level 1 to proceed. Don't forget to include the continue keyword

for (Name, Exp) in playerExp {


    guard Exp >= 1 else {
        print("\(Name) Your level is to low to get this quest")
        continue
    }
    print("Player Name : \(Name) \nExp Point: \(Exp)")


}

//  6.  Use a switch statement to define the following cases: 6a. exp is equal to 32, 65. exp is between 200 and 500 6c. Use value binding to store exp and check that it is greater than 500 using the where keyword


for (Name, Exp) in playerExp {
    
 
    guard Exp >= 1 else {
        print("\(Name) Your level is to low to get this quest")
        continue
    }
    switch Exp {
    case 1...31:
     print("\(Name) Your level is Low")
    case 32:
     print("\(Name) Your level is Medium")
    case 50..<99:
     print("\(Name) Your level is High")
    case 99:
     print("\(Name) Your level is Maximum")
    case (let localExp) where localExp > 500 :
        print("Time to level UP!")
    default:
        print("\(Name) Your dont have an account")
    }
    
}
