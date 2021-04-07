import Foundation

// 1.Create 2 variables called characterName and WeaponClassificaion and assign them string value of your choice.
var characterName = "Link"
var weaponClassification = "Master Sword"

// 2. Use the += operator to add a nickname string onto characterName
characterName += " Baron"

// 3. Create a variable called currentMana and assign it a decimal value.
var currentMana = 75.5

//4. Create another variable called manaPercentage and assign it currentMana divided by 100. then exlicity convert it to a string.
var manaPercentage = String(currentMana / 100)

//5. Create a variable called debugStats and use string interpolation to lay outyour character stats in a create way. (HINT: use \n to create line breaks)
var debugStats = "Name :\(characterName)\nWeapon :\(weaponClassification) \nMana :\(manaPercentage)"

//6. Create 2 boolean variables called questAccepted and canQuesst respectively and assign them values of your choice
var questAccepted = true
var canQuest = false

//7. use the AND (&&) Operator to evaluate if questAcepted and canQuest are both true abd store it in a variable called questStatus.
var questStatus = questAccepted && canQuest

//8. Add an interpolated string that includes questStatus to debugStats using the append method and print out debugStats.
debugStats.append(contentsOf: "\nQuesting : \(questStatus)")
print(debugStats)

