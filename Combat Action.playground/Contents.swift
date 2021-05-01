import Cocoa

//  1.Create an enumeration called ActionError that adopt the Error Protocol with three cases - InsufficientMP, OutOfRange, and UnkownError
 
enum ActionError: Error {
    case insufficientMP
    case OutOfRange
    case UnknownError
}

//  2.Declare a function called attackEnemy tat takes in an integer named mp and a double named distance as parameters and return an option boolean
//  3.Mark attackEnemy as a throwable function
func attackEnemy(mp: Int, distance: Double) throws -> Bool? {
//  4.add two guard statements - if mp is less that 10 throw insufficientMP, if distance is greaten than 5.89 throw OutOfRange
    guard mp > 10 else {
        throw ActionError.insufficientMP
    }
    guard distance < 5.89 else{
        throw ActionError.OutOfRange
    }
//  5.if both guard statements pass, return true
    return true
}
//  6.use do catch statement to call attackEnemy andhandle each error case individually
do{
    try attackEnemy(mp: 12, distance: 5)
    print("attack landed!")
}catch ActionError.insufficientMP {
    print("sorry, you don't have enough MP for that one")
}catch ActionError.OutOfRange{
    print("the enemy is too far away to hit")
}catch ActionError.UnknownError{
    print("not sure what happened there boss")
}catch{
    print("undefined error detected")
}

//  7.unwrap the optional return value from attackEnemy using an if-let statement
if let attackSuccess = try? attackEnemy(mp: 55, distance: 5){
    print("attack success: \(attackSuccess)")
}
