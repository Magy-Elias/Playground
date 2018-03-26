//: Playground - noun: a place where people can play

import UIKit

let int1 :Int=5
var int2:Int8=127
let float1:Float=5.5
let double1:Double=5.5
var x:Double=3.3;
let myCGFloat = CFloat(x);
let char1 : Character = "1";
print(char1)
var bool1:Bool=false;
let st :String="Mammoth Interactive"
let count11 = st.count
print(count11)
let count1 = "name".count
print(count1)
let firstch = (st.first)!
print(firstch)
let lastch = (st.last)!
print(lastch)
let endIndex = st.index(st.startIndex, offsetBy:4)
// print(endIndex)
print(st[endIndex])
let i = st.index(st.startIndex, offsetBy:7)
let mam = String(st[...i])
print(mam)
let starIndex2 = st.index(st.startIndex, offsetBy:3)
print(st[starIndex2])
let endIndex2 = st.index(st.startIndex, offsetBy:8)
print(st[endIndex2])
//let moth = (String(st[starIndex2...endIndex2]))!
//print(moth)
let multiSt :String = """
hello how are you
I'm very well,
"""
print(multiSt)
let numOfEggs :Int = 12
let eggSt :String = "I have \(numOfEggs) eggs"
print(eggSt)
var itemNil : String? = "Game"
var lenNil : Int? = itemNil?.count
//print(lenNil)
itemNil = nil
//print(itemNil)
lenNil = itemNil?.count
//print(lenNil)
let nameTuple : (String, Int) = ("food", 6)
let itemTuple : String = nameTuple.0
print(itemTuple)
let itemTuple2 : Int = nameTuple.1
print(itemTuple2)
let (name1,quantity) = nameTuple
print(name1,quantity)
let (nameOnly,_) = nameTuple
let (_,quantityOnly) = nameTuple
let item2 = (itemName: "matches", itemQuantity: 10)
print(item2)
let item2Name = item2.itemName
let item2Quantity = item2.itemQuantity
print(item2Name,item2Quantity)
//-----------------------------------------------------------------------------------------------------------------------------------------------------------//
var intConver1 : Int = 50
var doubleConver1 : Double = Double(intConver1)
print(doubleConver1)
var floatConver1 :Float = Float(intConver1)
var int8 : Int8 = 45
intConver1 = Int(int8)
print(intConver1)
// intConver1 = 500
// int8 = Int8(intConver1)  not allowed
// intConver1 = -500
// var uIntConver1 : UInt = UInt(intConver1)  not allowed
doubleConver1 = 50.99
intConver1 = Int(doubleConver1)
print(intConver1)
intConver1 = 1
// var charConver1 : Character = Character(intConver1)
// var boolConver1 :Bool = Bool(1)  generally avoid doing this
var stringConver1 :String = String(intConver1)
print(stringConver1)
var charConver1 :Character = "c"
stringConver1 = String(charConver1)
print(stringConver1)
// charConver1 = "1"
// intConver1 = Int(charConver1)   cannot do this
var boolConver1 : Bool = false
// intConver1 = Int(boolConver1)
stringConver1 = String(boolConver1)
print(stringConver1)

stringConver1 = "2345"
intConver1 = (Int(stringConver1))!    //works only if string contains only numbers=

stringConver1 = "true"
boolConver1 = (Bool(stringConver1))!  //works only if string is true/false

stringConver1 = "1"
charConver1 = Character(stringConver1)

var string2 : String? = "Mammoth Interactive"
//stringConver1 = (string2)!
string2 = stringConver1
//-----------------------------------------------------------------------------------------------------------------------------------------------------------//
//Assignment: =
var int21 :Int = 5
var int22  = int21

//Arithmetic: +, -, *, /, %
var sum = int21 + (int22 / 2)

var int4 :Int = int21 % 2

var string21 = "Mammoth "
var string22 = string21 + "Interactive"

//unary: +, -, !
var int5 = -int21
var bool5 = !(true)

//combo assignment and arithmetic: +=, -=, *=, /=
int21 += 5 //int21 = int21 + 5
int21 /= 2
//-----------------------------------------------------------------------------------------------------------------------------------------------------------//
//Conditional: >, >=, <, <=, ==, !=, ===, !==
var isTrue : Bool = 5 != 2
var string5 : String = "hello"
isTrue = string5 == "hello"
isTrue = string5 > "goodbye"

//Logical: &&, ||, !

//Ternary: (a ? result_if_true : result_if_false)
var int51 : Int = isTrue ? 20 : 30

//nil-coalescing: a ?? b
var int52 : Int? = nil
int51 = int52 ?? 10  //int51 will have the value of int52 if int52 is not nil value, else (if int52 is nil) int51 will have 10 in value
//-----------------------------------------------------------------------------------------------------------------------------------------------------------//
let coat = "coat"
var inventory : [String] // = ["food",coat,"hat","matches"]
inventory = ["food",coat,"hat","matches"]
inventory = ["food",coat]

let randomArray : [Any] = [1,false,"hello"]
//-----------------------------------------------------------------------------------------------------------------------------------------------------------//
let array1 : [Int] = []   //initialize empty array
let array2 = [Int]()  //initialize empty array

let array3 : [Int] = [0,0,0,0,0]
var array4 : [Int] = Array(repeatElement(0, count: 5))
//-----------------------------------------------------------------------------------------------------------------------------------------------------------//
var inventory2 : [(String, Int)] = [("Gloves",2)]
let inventorySize : Int = inventory2.count

inventory2 = [("Gloves",2), ("Fruit",4), ("Brush",1)]
inventory2.count

let secItem : (String,Int) = inventory2[1]
let firstItem : (String,Int)? = inventory2.first
let thirdItemName : String = inventory2[2].0

let array5 : [Int] = [1,2,3,4,5]
array5.contains(2)

inventory2 = [("Gloves",2), ("Fruit",4), ("Shoes",2)]
//inventory2[0] = ("Gloves",3)
let newTuple = ("Gloves",3)
inventory2[0] = newTuple
inventory2[1...2] = [("Fish",4), ("Socks",2)]

//add tuple at the end of the list
inventory2.append(("Glasses", 1))
//inventory2.append(contentsOf: [("Fruit",4),("Shoes",2)])
inventory2 += [("Fruit",4),("Shoes",2)]

//add tuple at a specific index
inventory2.insert(("Hat", 2), at: 0)

let removedItm : (String,Int) = inventory2.remove(at: 0)
//-----------------------------------------------------------------------------------------------------------------------------------------------------------//
let groceryList : [String] = ["fruit","cheese","bread"]
var shoppingList : [[String]] = [groceryList, ["t-shirt","shorts"], ["paper towel"]]













// ****************************** Intro *********************
// Intro to control flow
// Discuss how control flow is used
// If and else statements

let buttonPressed : String = "left"
var playerPosition : Int = 0

if (buttonPressed == "right") {
    playerPosition += 1
} else {
    playerPosition -= 1
}

// ****************************** Else if *************************************
// Else if statements
// Test for additional conditions

let buttPressed : String = "left"
var playerXPosition : Int = 0
var playerYPosition : Int = 0

if (buttPressed == "right") {
    playerXPosition += 1
} else if (buttPressed == "left") {
    playerXPosition -= 1
} else if (buttPressed == "up") {
    playerYPosition += 1
} else if (buttPressed == "down") {
    playerYPosition -= 1
} else {
    print("invalid button")
}

// Compare to multiple "ifs"
if (buttPressed == "up") {
    playerYPosition += 1
}

// ********************** Testing multiple conditions simultaneously *****************
// Testing additional conditions

let firstButtonPressed : String = "right"
let secondButtonPressed : String = "shift"
var playerPos : Int = 0

// && and || operators
if (firstButtonPressed == "right" && secondButtonPressed == "shift") {
    playerPos += 2
}

if (firstButtonPressed == "right" || firstButtonPressed == "d") {
    playerPos += 1
}

// Nested if statements
if (firstButtonPressed == "right") {
    if (secondButtonPressed == "shift") {
        playerPos += 2
    }
}

if (firstButtonPressed == "right") {
    playerPos += 1
    if (secondButtonPressed == "shift") {
        playerPos += 1
    }
}

// **************************** Switch Statement *****************************
// Switch statements
// Provide cases for each possible value of a variable
// Compare to if/else if/else statement

let button : String = "up"
var xPosition : Int = 0
var yPosition : Int = 0

/*if (button == "right") {
 xPosition += 1
 } else if (button == "left") {
 xPosition -= 1
 } else if (button == "up") {
 yPosition += 1
 } else if (button == "down"){
 yPosition -= 1
 } else {
 print("invalid command")
 }*/

switch button {
    case "right":
        xPosition += 1
    case "left":
        xPosition -= 1
    case "up":
        yPosition += 1
    case "down":
        yPosition -= 1
    default:
        print("invalid command")
}

// *********************** Switch statements part 2 ******************************
// Ranges
var health : Int = 50
switch health {
    case 100:
        print("full health")
    case 50..<100:  //50...99
        print("healthy")
    case 1..<50:    //1...49
        print("low health")
    case 0:
        print("dead")
    default:
        print("health out of range")
}

//multiple values
var itemName : String = "fruit"
switch itemName {
    case "hat","coat","shoes":
        print("it is a clothing item")
    case "meat","fruit","bread":
        print("it is a food item")
    default:
        print("we do not have a category for this item")
}

// Working with tuples (decomposing, value-bindings, where)
//More specific then less specific
var item : (String, Int) = ("fruit",5)
switch item {
    case ("fruit",5):
        print("we have 5 fruits")
    case ("fruit",_):
        print("we have fruits but don't know how many")
    case (_,5):
        print("we have 5 items but don't know the name")
    default:
        print("we don't know this item or quantity")
}

switch item {
    case (let name,let quan) where quan == 5:
        print("we have \(quan) \(name)")
    case ("fruit",_):
        print("we have fruits but don't know how many")
    case (_,5):
        print("we have 5 items but don't know the name")
    default:
        print("we don't know this item or quantity")
}

// ****************************** Test nil values **********************************
// == nil
// Ways to prevent accidentally unwrapping nil value
var nilItem : String? = "fruit"
var nilItemName : String = ""

//force unwrapping:
//nilItemName = nilItem!
if (nilItem != nil) {
    nilItemName = nilItem!
}

// if let
//nilItem = nil
if let nilItemName2 = nilItem { //if nilItem is not nil this code block will be executed
    //if we can unwrap nilItem and store its value in this constant nilItemName2 will do this code
    //execute some code here
    print(nilItemName2)
}

// guard let - we should use else clause in contrary to if we can remove else clause without causing an error
func doSomething() {
    guard let nilItemName3 = nilItem else { return }    //try to unwrapp nilItem value and store it into nilItemName3 unless it will execute the return
    print(nilItemName3)
}

doSomething()

// Intro to loops
// How loops work and why they are useful
// While
var plPos : Int = 0
let endPos : Int = 10

//if (plPos != endPos) {
//    plPos += 1
//}

while (plPos < endPos) {    //checking the condition before executing the code
    plPos += 1
}

// repeat while loops
repeat {        //executing the code one time before checking the condition
    plPos += 1
    print(plPos)
} while (plPos < endPos)

// For-in loops
//for index in range { loop body }
for number in 1...10 {
    print(number + 1)
}

var countNo : Int = 0
for _ in 1...10 {
    countNo += 1
}

for number in stride(from: 1, to: 10, by: 2) {
    print(number)
}

var inventoryNames : [String] = ["food", "hat", "clothes", "water"]
for item in inventoryNames {
    print(item)
}

for index in inventoryNames.indices {
    print(index)
}

var invent : [(String,Int)] = [("food",5), ("hat",2), ("clothes",4)]
for (name,quant) in invent {
    print("name is \(name)")
    print("quantity is \(quant)")
}

// Compare and contrast to while loops
// When to use for vs while loop
for num in 1...10 {
    print(num)
}

var ind : Int = 1
while (ind <= 10) {
    print(ind)
    ind += 1
}

//for loop uses when: exactly how many times the loop is going to run / iterating over arrays / ranges of numbers where we hve consistent of step value
//while loop uses when: we unsure when the loop is going to terminate / we might have values jumping alot

// More complex loop situations
// Provide control over specific loop iterations
// Continue and break statements with annotations
var posPlayer : Int = 0
var posEnd : Int = 10
var pressButton : String = "right"
var obstaclePos : Int = 5
var playerLives : Int = 3

while (posPlayer < posEnd) {
    if (pressButton == "right") {
        posPlayer += 1
    } else if (pressButton == "left") {
        posPlayer -= 1
    } else {
        print("invalid key")
    }
//    if (posPlayer == 4) {
//        posPlayer = 6
//    }
    
    if (posPlayer == obstaclePos) {
        print("player is collided with obstacle")
        if (playerLives >= 1) {
            continue
        } else {
            break
        }
    }    //any other code
}

posPlayer

for number in 1...10 {
    if (number % 2 == 0){
        continue
    }
    print(number)
}

outerLoop: for _ in 1...5 {
//outerLoop: for num in 1...5 {
//    if (num == 3){
//        break
//    }
    for number2 in 6...10 {
        if (number2 == 8) {
//            break   //break the inner loop
            break outerLoop     //break the outer loop
        }
        print(number2)
    }
}

// ********************** Functions topics list/learning objectives *****************
// Intro to functions
// Write functions to peform tasks
// Call on functions to execute the code

// name, parameters, return-type, body
//func movePlayer//name (//parameters) : String //return-type {
//    //body
//}

var posPlayer2 : Int = 0
var button2 : String = "right"

func movePlayerForwards() {
    posPlayer2 += 1
}
func movePlayerBackwards() {
    posPlayer2 -= 1
}
func movePlayer() {
    if (button2 == "right") {
        movePlayerForwards()
    } else if (button2 == "left") {
        movePlayerBackwards()
    } else {
        print("invalid command")
    }
}
func movePlayer(i : Int) {
    
}

movePlayer()
posPlayer2
//movePlayerForwards()
//posPlayer2
//movePlayerBackwards()
//posPlayer2

// ###we cannot have two variables of the same name even if they are different in type
//var fun : Int = 5
//var fun : String = "hi"
// ###but for functions we can have two functions have the same name as long as the functions are different in type (any of: name, param, return-type)

// Functions with parameters
// Why parameters are useful
// How to use parameters in function body
var position : Int = 0

func moveForwards(positionChange : Int) {
    position += positionChange
}

func moveBackwards(positionChange : Int) {
    position -= positionChange
}
moveForwards(positionChange: 5)
position
moveBackwards(positionChange: 3)
position

func move(positionChange : Int) {
    position += positionChange
}
move(positionChange: 3)
position
move(positionChange: -2)
position

// Function return statements
// What it means to return a value
// How to use functions with return types
let numberArray : [Int] = [1,6,3,9,2,5]

func findMax(numArray : [Int]) -> Int {
    var max : Int = 0
    for no in numArray {
        if (no > max) {
            max = no
        }
    }
    return max
}

let result = findMax(numArray : numberArray)

// blank return is the same like break in a loop

var characterPos : Int = 0
let obstaclePosition : Int = 5
let end : Int = 10

func runGame() {    //not write return value when we return blank
    while (characterPos < end) {
        characterPos += 1
        if (characterPos == obstaclePos) {
            print("player collided with obstacle")
//            break   //will end only the while loop but the func body will still running
            return  //will end the func body as a whole
        }
    }
    // some other code here
    print("player reached the end of the game")
}

runGame()

// Parameter variations part 1
// Argument labels
// Improve parameter readability
var pos : Int = 0

func moveParam(byAmount positionChange : Int) { //byAmount -> name used for calling the func, positionChange -> name used inside the func body
    pos += positionChange
}

//moveParam(positionChange: 3)
moveParam(byAmount: 3)
pos

func moveBy(_ positionChange : Int) { //when i call the func i don't have to provide a name for my parameter
    pos += positionChange
}

moveBy(2)

// Parameter variations part 2
// Default parameter values
// Assign values to parameters in function declaration
var healthParam : Int = 50

func heal(healAmount : Int = 10) {  //default value given in the definition of the func
    healthParam += healAmount
}

//heal(healAmount: 10)
heal()  //will use the default value
healthParam
heal(healAmount: 20)    //will ignore the default value & use the value i provided when calling the func
healthParam

// Parameter variations part 3
// Inout parameters
// Way to mutate (= alter) variable values within the function body

// ###Any variable passed to a func should be var not constant as the func will change it
var intParam1 : Int = 5
var intParam2 : Int = 60

func swapInts(variable1 : inout Int, variable2 : inout Int) {   //inout -> is used -in func definition- in order to make func parameters variable to be able to modify them inside the func not constant as default
    let temp : Int = variable1
    variable1 = variable2
    variable2 = temp
}

swapInts(variable1: &intParam1, variable2: &intParam2)  //& -> is used in the calling of func and telling the complier that we can change the values of these variables within the func
intParam1
intParam2

// Parameter variations part 4
var inventArray : [(String,Int)] = [("Food",2), ("Coat",1), ("Shoes",5)]

/*func sumItems(invent : [(String,Int)]) -> Int {
    var sum : Int = 0
//    for item in invent {
//        sum += item.1
//    }
    for (_,quantity1) in invent {
        sum += quantity1
    }
    return sum
}

let res = sumItems(invent: inventArray)*/

// Variadic parameters
// Way to enter in 0 or more parameter values without having to enter array
func sumItems(_ invent : (String,Int)...) -> Int {    //(String,Int)... -> we can 0,1,2,..etc tuple
    var sum : Int = 0
    for (_,quantity1) in invent {
        sum += quantity1
    }
    return sum
}

let res = sumItems(("Food",2), ("Coat",1), ("Shoes",5))

// Multiple returns
// Use tuples to return multiple values
var inventTuple : [(String,Int)] = [("Food",2), ("Coat",1), ("Shoes",5)]

func maxTuple(tupleArray : [(String,Int)]) -> (String,Int) {
    var maxQuantity : (String,Int) = ("",0)
    for (tupleName,tupleQuantity) in tupleArray {
        if (tupleQuantity >= maxQuantity.1) {
            maxQuantity = (tupleName,tupleQuantity)
        }
    }
    return maxQuantity
}

let tuple1 : (String,Int) = maxTuple(tupleArray: inventTuple)

func highestTuple(tupleArray : [(String,Int)]) -> (String,Int) {
    var highestQuantity : Int = 0
    var highestName : String = ""
    for (tupleName,tupleQuantity) in tupleArray {
        if (tupleQuantity >= highestQuantity) {
            highestQuantity = tupleQuantity
            highestName = tupleName
        }
    }
    return (highestName,highestQuantity)
}

let tuple2 : (String,Int) = highestTuple(tupleArray: inventTuple)

// ********************** Classes, Objects, Structs and Enums *****************
// Intro to Classes
// What classes and objects are
// How to create and instantiate a new class
class GameCharacter{
    var name : String = ""
    
    init() {    //blank constructor (initializes)
        
    }
    
    init(_name : String) {  //another constructor (initializes)
        self.name = _name
    }
}

let newCharacter : GameCharacter = GameCharacter()
let anotherCharacter : GameCharacter = GameCharacter(_name: "Nimish")

// Class properties part 1
// Basic fields/global variables
class GameCharacter2{
//    var name : String = ""
    var name : String
    var currentHP : Int = 100
//    var inventory : [(String,Int)] = []
    var inventory : [(String,Int)] //! -> this tells the compiler that inventory will have a value at some point in time it's just right now will not get set a value, so it's not gonna have a value nil because we set it a value in the initialization before using it.. if we have blank constructor we can't leave the declaration with the exclamation mark as it'll cause the app to crash, ? -> also we can initialzed it as optional as we initialized it in the constructor; but we can't use optional operator if we have blank constructor
    
    init(_name : String) {  //another constructor
        self.name = _name
        inventory = [("shirt",1),("pants",1)]
    }
}

// How to set/retrieve values
var newCharacter2 : GameCharacter2 = GameCharacter2(_name: "Nimish")
var currentHP = newCharacter2.currentHP
newCharacter2.currentHP = 50    //this changes the instance variable
currentHP = 60  //this changes the local varaiable
newCharacter2.inventory.append(("knife",1))

// Class properties part 2
// Getters and setters
class GameCharacter3 {
    var name : String
    var currentHP : Int = 100
    var maxHP : Int = 100
    var inventory : [(String,Int)]
    
    init(_name : String) {
        self.name = _name
        inventory = [("shirts",1),("pants",1)]
    }
    
    func getCurrentHP() -> Int {    //custom getter func
        if self.currentHP < 10 {
            print("Very low HP")
        } else if self.currentHP < 50 {
            print("Low HP")
        } else {
            print("High HP")
        }
        return self.currentHP
    }
    
    func setCurrentHP(newHP : Int) {    //custom setter func
        if newHP > self.maxHP {
            self.currentHP = maxHP
        } else {
            self.currentHP = newHP
        }
    }
}

// Customize retrieval and resetting process
var newCharacter3 : GameCharacter3 = GameCharacter3(_name: "Mammoth")
newCharacter3.getCurrentHP()
newCharacter3.setCurrentHP(newHP: 200)
newCharacter3.getCurrentHP()
newCharacter3.setCurrentHP(newHP: 75)
newCharacter3.getCurrentHP()


// Class properties part 3
// Calculated properties
// Read only properties
class GameCharacter4 {
    var name : String
    var inventory : [(String,Int)]
    var inventoryCount : Int {
        var count : Int = 0
        for (_,quantity) in self.inventory {
            count += quantity
        }
        return count
    }
    // observers
    var currentHP : Int = 100 {
        willSet { //our willSet is called before we set the value of currentHP, And willSet tells our code that we are going to set our currentHP
            print("we are going to reset current HP value")
        }
//        didSet(newValue){}  //newValue -> is the value we did set the currentHP to
        didSet(newCurrentHP) {  //our didSet is called after we set the value of currentHP, Any restrictions we wanna place on currentHp will be put in didSet
//            oldValue    //if we don't specify anything within our parameters, there should be value which called oldValue which represents old value the currentHP have before we reset it
            if self.currentHP > self.maxHP {
                self.currentHP = self.maxHP
            } /*else {
                self.currentHP = newCurrentHP
            }*/
        }
    }
    var baseHP : Int = 100
    var bonusHP : Int = 50
    var maxHP : Int {
        get {
            return self.baseHP + self.bonusHP
        }
        set {
            self.baseHP = newValue - self.bonusHP     // an int gonna consider as constant and a parameter that pass in the set func
        }
    }
    
    init(_name : String) {
        self.name = _name
        inventory = [("shirt",1),("pants",1)]
    }
    
    func getCurrentHP() -> Int {
        if self.currentHP < 10 {
            print("Very low HP")
        } else if self.currentHP < 50 {
            print("Low HP")
        } else {
            print("High HP")
        }
        return self.currentHP
    }
    
    func setCurrentHP(newHP : Int) {
        if newHP > self.maxHP {
            self.currentHP = maxHP
        } else {
            self.currentHP = newHP
        }
    }
}

var newCharacter4 : GameCharacter4 = GameCharacter4(_name: "Larry")
var maxHP = newCharacter4.maxHP
newCharacter4.maxHP = 200   //automatically will call our set func
var baseHP = newCharacter4.baseHP
let count = newCharacter4.inventoryCount

let currentHP4 = newCharacter4.currentHP
newCharacter4.currentHP = 150
newCharacter4.currentHP = 250
newCharacter4.currentHP

// Class properties part 4
// Variable scope
// Restrictions on where we can use variables

/*3 types of variables: Global (Field), Local, Parameter variables
 #Global variables -> * Will be used all along through out a class implementation; these are the variables declared in the top of class or outside a func or control flow block.
        * These variables exist within the scope of class itself and can be used anywhere through out the class implementation
        * For ex.: currentHP is a global variable defined outside any func and at the top of a class
        * We have access to it through the use of creating an instance of the class
        * The reason they maintain the value that we not going to reset every time they use
 #Parameters -> * For start Unless they declared to be in parameters, they are constants which means the value cannot changed
        * Exist only within the scope of the function in which they declared
 #Local variables -> * Are variables that declared within a function or control block
        * Donnot have access to variables outside the scope of declaration
        * Will use local variable instead of global variable if know that we will not us it outside the function
        * Will be deleted as soon as i ended the block uses the varible and this saves spaces in memory
*/

/* Self -> * Comes to global variable scope
*/
 
class GameClass {
    var name : String   //name -> global variable
    init(_name : String) {
        self.name = _name
    }
    var currentHP : Int = 100
    func setCurrentHP(newHP : Int) {
        if newHP > maxHP {
            self.currentHP = maxHP
        } else {
            self.currentHP = newHP
        }
    }
    func doSomething(){
        let local1 : Int = 5    //local1 -> local variable inside func block
        if (local1 > 2) {   //local2 -> local variable inside control flow block
            let local2 : String = "hello"
            print(local2)
        }
    }
}

// Class properties part 5
// Last class properties section
// Lazy variables and static variables

/*Lazy variables -> * Are no longer initialized in the instance until they actually are needed in order to take care of the memory (lazy variable exist but haven't yet assigned a value
        * Lazy variables cannot be set as an optional variable or force unwrapped with !; as it should be set at some point in the code
 */
class ClassLazy {
    var name : String
    var inventory : [(String, Int)]
    init(_name : String) {
        self.name = _name
        inventory = [("shoes",1),("axe",1)]
    }
    var currentHP : Int = 100
    func setCurrentHP(newHP : Int) {
        if newHP > maxHP {
            self.currentHP = maxHP
        }
    }
    lazy var equippedItem : String = "axe"
}

var fred : ClassLazy = ClassLazy(_name: "fred")
//fred.equippedItem = nil   //hasen't been assigned a value yet

/*Static variables -> Properties or variables attached to class itself rather than a single object; this means that static variables takes the same value to all the instances of a                    class and don't need an instance of a class to access we can simply call the class name rather than having to create an instance (object) in order to access it
        * Used in variables that needed to be accessed without creating an instance of a class
        * If we want to change the value of static variable, it will reflect to the value of the static variable in all instances of the class
        * Not used for storing states for individual instances of a class but defining a constant that can be universal cross all instances of a particular class, not attached to an instance but attached to the class
        * Used by calling the class name
        * When using inside the class, can't be used inside any instance func should only be inside static func (method)
 */
class ClassStatic {
    var name : String
    var inventory : [(String, Int)]
    init(_name : String) {
        self.name = _name
        inventory = [("shoes",1),("axe",1)]
    }
    var currentHP : Int = 100
    func setCurrentHP(newHP : Int) {
        if newHP > maxHP {
            self.currentHP = maxHP
        }
    }
    static var walkSpeed : Int = 1
}

var george : ClassStatic = ClassStatic(_name: "george")

fred.currentHP = 65
fred.currentHP
george.currentHP
//So currentHP is not a static variable as it is called by calling the different instance & not having the same value for both classes

ClassStatic.walkSpeed = 2

// Class behaviour
// Basic methods and functions
// Implement and call upon them
class ClassBehavior {
    var inventory : [(String,Int)]
    var name : String
    init(_name : String) {
        self.name = _name
        inventory = [("shirt",1),("shoes",1)]
    }
    
    func addOneInventoryItem(newItem : String) {    //Instance Method
        for itemIndex in self.inventory.indices {
            if self.inventory[itemIndex].0 == newItem {
                self.inventory[itemIndex].1 += 1
                return
            }
        }
        self.inventory.append((newItem,1))
    }
    
    func removeOneInventory(itemToRemove : String) {
        for itemIndex in self.inventory.indices {
            if self.inventory[itemIndex].0 == itemToRemove {
//                self.inventory[itemIndex].1 -= 1
//                if self.inventory[itemIndex].1 == 0 {
//                    self.inventory.remove(at: itemIndex)
//                }
                if self.inventory[itemIndex].1 == 1 {
                    self.inventory.remove(at: itemIndex)
                } else{
                    self.inventory[itemIndex].1 -= 1
                }
                return
            }
        }
    }
}

let inst : ClassBehavior = ClassBehavior(_name: "Behavior")
inst.inventory
inst.addOneInventoryItem(newItem: "shirt")
inst.inventory
inst.addOneInventoryItem(newItem: "gloves")
inst.inventory
inst.addOneInventoryItem(newItem: "shoes")
inst.inventory

inst.inventory
inst.removeOneInventory(itemToRemove: "shirt")
inst.inventory
inst.removeOneInventory(itemToRemove: "gloves")
inst.inventory

// Class behaviour part 2
// Class methods
// Combine static concept with instance methods
/* Static (Class) Methods -> * Inisde it we can't access any properties of the class
            * Can access only static variable
 */
class ClassMethods {
    var name : String
    static var walkSpeed : Int = 1
    
    init(_name : String) {
        self.name = _name
    }
    
    class func speedUpWalkingPace(speedMultiplier : Int) {
        self.walkSpeed *= speedMultiplier
    }
    
    class func speedDownWalkingPace(speedDivisor : Int) {
        self.walkSpeed /= speedDivisor
    }
}

let method : ClassMethods = ClassMethods(_name: "method")
ClassMethods.walkSpeed = 3
ClassMethods.speedUpWalkingPace(speedMultiplier: 4)
ClassMethods.walkSpeed
ClassMethods.speedDownWalkingPace(speedDivisor: 2)
ClassMethods.walkSpeed

// Instantiating classes within a class
// Every class must be instatiated within an existing class
// Classes can store instances as variables
class GameMap {
    var playerCharacter : GameCharacter4
    var nonPlayerCharacters : [GameCharacter4]
    
    init(playerCharacterName : String) {
        playerCharacter = GameCharacter4(_name: playerCharacterName)
        
        let villager : GameCharacter4 = GameCharacter4(_name: "Villager")
        nonPlayerCharacters = [villager,villager,villager]
    }
}

let game1 : GameMap = GameMap(playerCharacterName: "Nimish")
let playerInventory = game1.playerCharacter.inventory

// Inheritance part 1
// Intro to the concept of subclasses and superclasses
// Create a subclass of GameCharacter

/* SuperClass -> * Is the bigger and more abstract class like animal class
            * Doesn't always inherit the properties and behaviors of the subClass
            * GameChaacter4 is the superClass
            * Super class can have many sub classes inherit from it
 */
/* SubClass -> * Is the most specificc class like cat class
            * SubClasses basically inherit all of the superclass properties (characteristics) and behaviors (implementing more specific behavior and properties and modifing the behaviors and properties that inherited from superClass
            * As playerCharacter & nonPlayerCharacters are the subClasses
            * Sub class can inherit from one Super class
 */
/* Inheritance ->
 */
class SuperClassGameCh {
    var inventory : [(String,Int)]
    var name : String
    init(_name : String) {
        self.name = _name
        inventory = [("shirt",1),("shoes",1)]
    }
    var currentHP : Int = 100
    func setCurrentHP(newHP : Int) {
        if newHP > maxHP {
            self.currentHP = maxHP
        }
    }
    
    func addOneInventoryItem(newItem : String) {    //Instance Method
        for itemIndex in self.inventory.indices {
            if self.inventory[itemIndex].0 == newItem {
                self.inventory[itemIndex].1 += 1
                return
            }
        }
        self.inventory.append((newItem,1))
    }
    
    func removeOneInventory(itemToRemove : String) -> Bool{
        for itemIndex in self.inventory.indices {
            if self.inventory[itemIndex].0 == itemToRemove {
                self.inventory[itemIndex].1 -= 1
                if self.inventory[itemIndex].1 == 0 {
                    self.inventory.remove(at: itemIndex)
                }
                return true
            }
        }
        return false
    }
}
class SubClassPlayer : SuperClassGameCh {   //: -> specifies that "SubClassPLayer" is a sub class and inherits from super class "SuperClassGameCh"
    var money : Int = 100
    
    func buyOneItem(itemName : String, itemValue : Int) {
        if itemValue <= money {
            addOneInventoryItem(newItem: itemName)
            money -= itemValue
        } else {
            print("Not enough money")
        }
    }
    
    func sellOneItem(itemName : String, itemValue : Int) {
        if removeOneInventory(itemToRemove: itemName) == true {
            money += itemValue
        } else {
            print("Could not sell item")
        }
    }
}

class GameMap2 {
    var playerCharacter : SubClassPlayer
    var nonPlayerCharacters : [SuperClassGameCh]
    
    init(playerCharacterName : String) {
//        playerCharacter = SuperClassGameCh(_name: playerCharacterName) as! SubClassPlayer   // SuperClass as! "Cast" SubClas
        playerCharacter = SubClassPlayer(_name: playerCharacterName)
        playerCharacter.currentHP = 50
        playerCharacter.addOneInventoryItem(newItem: "knife")
        
        let villager : SuperClassGameCh = SuperClassGameCh(_name: "Villager")
        nonPlayerCharacters = [villager,villager,villager]
    }
}

let playerCh1 : SubClassPlayer = SubClassPlayer(_name: "player1")
playerCh1.inventory
playerCh1.money
playerCh1.sellOneItem(itemName: "shirt", itemValue: 75)
playerCh1.inventory
playerCh1.money
playerCh1.buyOneItem(itemName: "shirt", itemValue: 120)
playerCh1.inventory
playerCh1.money

// Inheritance part 2
// Overriding and super keyword

/* Overriding -> * Is the concept of taking the existing property or func or method or initializer and modifing within the sub class to contain a new value to change property from R/W to Read only or to provide entirely new initializer or implementation */
/* Super keyword -> used to access the super class' attribute, method, func or initializer */

// Override initializers for subclass
class SuperClass1 {
    var name : String
    init(_name : String,startingItems : [(String,Int)]) {
        self.name = _name
        inventory = startingItems
    }
    var inventory : [(String,Int)]
    var currentHP : Int = 100
    func setCurrentHP(newHP : Int) {
        if newHP > maxHP {
            self.currentHP = maxHP
        }
    }
    
    func addOneInventoryItem(newItem : String) {    //Instance Method
        for itemIndex in self.inventory.indices {
            if self.inventory[itemIndex].0 == newItem {
                self.inventory[itemIndex].1 += 1
                return
            }
        }
        self.inventory.append((newItem,1))
    }
    
    func removeOneInventory(itemToRemove : String) -> Bool{
        for itemIndex in self.inventory.indices {
            if self.inventory[itemIndex].0 == itemToRemove {
                self.inventory[itemIndex].1 -= 1
                if self.inventory[itemIndex].1 == 0 {
                    self.inventory.remove(at: itemIndex)
                }
                return true
            }
        }
        return false
    }
}

class SubClass1 : SuperClass1 {   //: -> specifies that "SubClassPLayer" is a sub class and inherits from super class "SuperClassGameCh"
    var money : Int = 100
    
    //1st Way
    override init(_name: String, startingItems: [(String, Int)]) {
        super.init(_name: _name, startingItems: startingItems)
        self.money = 200
    }
    
    //2nd Way
    init(_name : String,startingItems : [(String,Int)],startingMoney : Int) {
        super.init(_name: _name, startingItems: startingItems)
        self.money = startingMoney
    }
    
    func buyOneItem(itemName : String, itemValue : Int) {
        if itemValue <= money {
            addOneInventoryItem(newItem: itemName)
            money -= itemValue
        } else {
            print("Not enough money")
        }
    }
    
    func sellOneItem(itemName : String, itemValue : Int) {
        if removeOneInventory(itemToRemove: itemName) == true {
            money += itemValue
        } else {
            print("Could not sell item")
        }
    }
}

class GameMapOverRidding {
    var playerCharacter : SubClass1
    
    init(playerCharacterName : String) {
        //        playerCharacter = SuperClassGameCh(_name: playerCharacterName) as! SubClassPlayer   // SuperClass as! "Cast" SubClas
        playerCharacter = SubClass1(_name: playerCharacterName,startingItems : [("shirt",1),("coat",3),("shoes",2)])
        playerCharacter.currentHP = 50
        playerCharacter.addOneInventoryItem(newItem: "knife")
    }
}

var playerCharacter1 = SubClass1(_name: "new name1",startingItems : [("shirt",1),("coat",3),("shoes",2)])
playerCharacter1.name
playerCharacter1.money

var playerCharacter2 = SubClass1(_name: "new name2", startingItems: [("shirt",1),("coat",3),("shoes",2)], startingMoney: 300)
playerCharacter2.name
playerCharacter2.money

// Inheritance part 3
// Overriding superclass properties
// Change read/write properties and observers

/* Overriding superclass properties -> * This is the global variables that are implemented by super class that the sub class has access to */
/* Property observers -> * Observe and respond to changes in a property’s value whether it is calculated or not. Property observers are called every time a property’s value is set, even if the new value is the same as the property’s current value..
 * You have the option to define either or both of these observers on a property:
            willSet -> is called just before the value is stored.
            didSet -> is called immediately after the new value is stored.
 */

class SuperClass2 {
    var name : String
    init(_name : String,startingItems : [(String,Int)]) {
        self.name = _name
        inventory = startingItems
    }
    var inventory : [(String,Int)]
    var equippedTool : String? {    //now this variable is read only not available as read write
        if self.inventory.isEmpty == false {
            return self.inventory[0].0
        } else {
            return nil
        }
    }
    var baseHP : Int = 100  //read/write property without proberty observer
    var currentHP : Int = 100
    func setCurrentHP(newHP : Int) {
        if newHP > maxHP {
            self.currentHP = maxHP
        }
    }
    
    func addOneInventoryItem(newItem : String) {    //Instance Method
        for itemIndex in self.inventory.indices {
            if self.inventory[itemIndex].0 == newItem {
                self.inventory[itemIndex].1 += 1
                return
            }
        }
        self.inventory.append((newItem,1))
    }
    
    func removeOneInventory(itemToRemove : String) -> Bool{
        for itemIndex in self.inventory.indices {
            if self.inventory[itemIndex].0 == itemToRemove {
                self.inventory[itemIndex].1 -= 1
                if self.inventory[itemIndex].1 == 0 {
                    self.inventory.remove(at: itemIndex)
                }
                return true
            }
        }
        return false
    }
}

class SubClass2 : SuperClass2 {   //: -> specifies that "SubClassPLayer" is a sub class and inherits from super class "SuperClassGameCh"
    var money : Int = 100
    
    override var equippedTool: String? {    //to make it read/write we use getter & setter
        get {
            return self.inventory.first?.0
        }
        set(newTool) {
            self.inventory.insert((newTool!,1), at: 0)
        }
    }
    
    override var baseHP: Int {
        didSet(newHPValue) {
            print("Our character now has \(super.baseHP - newHPValue) more HP than other characters")
        }
    }
    
    //1st Way
    override init(_name: String, startingItems: [(String, Int)]) {
        super.init(_name: _name, startingItems: startingItems)
        self.money = 200
        super.currentHP = 120
    }
    
    //2nd Way
    init(_name : String,startingItems : [(String,Int)],startingMoney : Int) {
        super.init(_name: _name, startingItems: startingItems)
        self.money = startingMoney
        self.currentHP = 120
    }
    
    func buyOneItem(itemName : String, itemValue : Int) {
        if itemValue <= money {
            addOneInventoryItem(newItem: itemName)
            money -= itemValue
        } else {
            print("Not enough money")
        }
    }
    
    func sellOneItem(itemName : String, itemValue : Int) {
        if removeOneInventory(itemToRemove: itemName) == true {
            money += itemValue
        } else {
            print("Could not sell item")
        }
    }
}

class GameMapOverRiddingProp {
    var playerCharacter : SubClass2
    var nonPLayerCh : [SuperClass2]
    
    init(playerCharacterName : String) {
        //        playerCharacter = SuperClassGameCh(_name: playerCharacterName) as! SubClassPlayer   // SuperClass as! "Cast" SubClas
        playerCharacter = SubClass2(_name: playerCharacterName,startingItems : [("axe",2),("shirt",1),("coat",3)])
        playerCharacter.currentHP = 50
        playerCharacter.addOneInventoryItem(newItem: "knife")
        
        let villager : SuperClass2 = SuperClass2(_name: "Villager", startingItems: [("knife",1),("shirt",1),("pants",1)])
        nonPLayerCh = [villager,villager,villager]
    }
}
 
var newPlayer = SubClass2(_name: "new name", startingItems: [("axe",1),("gloves",2)])
newPlayer.equippedTool
newPlayer.equippedTool = "knife"
newPlayer.inventory
newPlayer.baseHP = 300

// Inheritance part 4
// Overriding superclass methods
// Provide new method implementation
class SuperClassMethod {
    var name : String
    init(_name : String,startingItems : [(String,Int)]) {
        self.name = _name
        inventory = startingItems
        xPos = 0
        yPos = 0
    }
    var xPos : Int
    var yPos : Int
    static var walkSpeed : Int = 1
    var inventory : [(String,Int)]
    var equippedTool : String? {    //now this variable is read only not available as read write
        if self.inventory.isEmpty == false {
            return self.inventory[0].0
        } else {
            return nil
        }
    }
    var baseHP : Int = 100  //read/write property without proberty observer
    var currentHP : Int = 100
    func setCurrentHP(newHP : Int) {
        if newHP > maxHP {
            self.currentHP = maxHP
        }
    }
    
    func moveCharacter(byXAmount xAmount : Int, byYAmount yAmount : Int) {
        self.xPos += xAmount * SuperClassMethod.walkSpeed
        self.yPos += yAmount * SuperClassMethod.walkSpeed
    }
    
    func addOneInventoryItem(newItem : String) {    //Instance Method
        for itemIndex in self.inventory.indices {
            if self.inventory[itemIndex].0 == newItem {
                self.inventory[itemIndex].1 += 1
                return
            }
        }
        self.inventory.append((newItem,1))
    }
    
    func removeOneInventory(itemToRemove : String) -> Bool{
        for itemIndex in self.inventory.indices {
            if self.inventory[itemIndex].0 == itemToRemove {
                self.inventory[itemIndex].1 -= 1
                if self.inventory[itemIndex].1 == 0 {
                    self.inventory.remove(at: itemIndex)
                }
                return true
            }
        }
        return false
    }
}

class SubClassMethod : SuperClassMethod {
    var money : Int = 100
    
    override var equippedTool: String? {    //to make it read/write we use getter & setter
        get {
            return self.inventory.first?.0
        }
        set(newTool) {
            self.inventory.insert((newTool!,1), at: 0)
        }
    }
    
    override var baseHP: Int {
        didSet(newHPValue) {
            print("Our character now has \(super.baseHP - newHPValue) more HP than other characters")
        }
    }
    
    var runSpeed : Int = 2
    var isRunning : Bool = true
    
    override func moveCharacter(byXAmount xAmount: Int, byYAmount yAmount: Int) {
        if self.isRunning == true {
            super.moveCharacter(byXAmount: xAmount * self.runSpeed, byYAmount: yAmount * self.runSpeed)
        } else {
            super.moveCharacter(byXAmount: xAmount, byYAmount: yAmount)
        }
    }
    
    //1st Way
    override init(_name: String, startingItems: [(String, Int)]) {
        super.init(_name: _name, startingItems: startingItems)
        self.money = 200
        super.currentHP = 120
    }
    
    //2nd Way
    init(_name : String,startingItems : [(String,Int)],startingMoney : Int) {
        super.init(_name: _name, startingItems: startingItems)
        self.money = startingMoney
        self.currentHP = 120
    }
    
    func buyOneItem(itemName : String, itemValue : Int) {
        if itemValue <= money {
            addOneInventoryItem(newItem: itemName)
            money -= itemValue
        } else {
            print("Not enough money")
        }
    }
    
    func sellOneItem(itemName : String, itemValue : Int) {
        if removeOneInventory(itemToRemove: itemName) == true {
            money += itemValue
        } else {
            print("Could not sell item")
        }
    }
}

class GameMapOverRiddingMethod {
    var playerCharacter : SubClassMethod
    var nonPLayerCh : [SuperClassMethod]
    
    init(playerCharacterName : String) {
        //        playerCharacter = SuperClassGameCh(_name: playerCharacterName) as! SubClassPlayer   // SuperClass as! "Cast" SubClas
        playerCharacter = SubClassMethod(_name: playerCharacterName,startingItems : [("axe",2),("shirt",1),("coat",3)])
        playerCharacter.currentHP = 50
        playerCharacter.addOneInventoryItem(newItem: "knife")
        
        let villager : SuperClassMethod = SuperClassMethod(_name: "Villager", startingItems: [("knife",1),("shirt",1),("pants",1)])
        nonPLayerCh = [villager,villager,villager]
    }
}

var subClass = SubClassMethod(_name: "Larry", startingItems: [])
var superClass = SuperClassMethod(_name: "Harry", startingItems: [])
subClass.xPos
subClass.yPos
subClass.moveCharacter(byXAmount: 3, byYAmount: 6)  //xPos = xAmount * runSpeed(2), yPos = yAmount * runSpeed(2)
subClass.xPos
subClass.yPos

superClass.xPos
superClass.yPos
superClass.moveCharacter(byXAmount: 3, byYAmount: 6)
superClass.xPos
superClass.yPos

// Structs
// Implementing structs
// Creating new structs and accessing properties
struct InventoryItem {
    var name : String
    var quantity : Int = 1
    var category : String
    var value : Int
    static var StartingQuantity : Int = 1
    
    init(_name : String, _category : String, _value : Int) {      //_ -> means self, _name = our name
        self.name = _name
        self.category = _category
        self.value = _value
    }
    
    func getValue() -> Int {    //method to retrieve the value
        return self.value
    }
    
    mutating func increaseQuantity(byAmount newAmount : Int) {
        self.quantity += newAmount
    }
    
    mutating func decreaseQuantity(byAmount newAmount : Int) {
        self.quantity -= newAmount
    }
    
    mutating func resetItems(_name : String, _category : String, _value : Int) {    //will create new instance
        self = InventoryItem(_name: _name, _category: _category, _value: _value)
    }
    
    static func changeStartingAmount(newAmount : Int) { //similar to class funcs in classes, are called by the name of struct itself not need for instance
        self.StartingQuantity = newAmount
    }
}

var knife : InventoryItem = InventoryItem(_name: "knife", _category: "equip", _value: 20)
knife.name
knife.value = 30
knife.getValue()
knife.increaseQuantity(byAmount: 2)
knife.decreaseQuantity(byAmount: 2)
InventoryItem.StartingQuantity

// Enumerations
// Define a common type for related values
// Allows us to defer from the built in Swift types
enum ItemCategoryEnumImplicit : Int {   //:Int -> implicit raw value
    case equipable  //0
    case wearable   //1
    case consumable //2
    case usable     //3
}

var itemCategoryImplicit : ItemCategoryEnumImplicit = ItemCategoryEnumImplicit.usable
itemCategoryImplicit = .wearable

itemCategoryImplicit.rawValue   //=1

switch (itemCategoryImplicit) {     // we dont have to define default case, as it has by nature 4 cases only
case ItemCategoryEnumImplicit.equipable :
    print("item can be equipped")
case ItemCategoryEnumImplicit.wearable :
    print("item can be worn")
case ItemCategoryEnumImplicit.consumable :
    print("item can be consumed")
case ItemCategoryEnumImplicit.usable :
    print("item can be used")
}

enum ItemCategoryEnumExplicit : Int {   //:Int -> explicit raw value (as we gave him value)
    case equipable = 1
    case wearable = 2
    case consumable = 3
    case usable = 4
}

var itemCategoryExplicit : ItemCategoryEnumExplicit = ItemCategoryEnumExplicit.usable
itemCategoryExplicit = .wearable

itemCategoryExplicit.rawValue   //=2

enum ItemCategoryEnum : String {   //:String -> implicit raw value
    case equipable
    case wearable
    case consumable
    case usable
}

var itemCategory : ItemCategoryEnum = ItemCategoryEnum.usable
itemCategory = .wearable
itemCategory.rawValue

var otherItemCategory : ItemCategoryEnum? = ItemCategoryEnum(rawValue : "usable")   //another way of initialize and it is Optional type
otherItemCategory = ItemCategoryEnum(rawValue : "dfhdjhf")

//Associated Values
enum ItemCat {
    case equipable(Bool,Bool)
    case wearable
    case usable
}

var itemCat = ItemCat.equipable(false, true)

// Compare classes, structs, and enums
// Similarities and differences

/* Classes -> * Reference Type; we must define an initializer for every variable in class
        * 1st Diff: class A     class B
            A = B  will point to the exact object, any changes are made to A AFFECT B and vice versa any changes are made to B AFFECT A
        * 2nd Diff: classes can inherit everything from other classes
        * Uses: for complex implementation
        * Static funcs are called "Class func" are called by the name of class not instance name
        * Check if specific instance belongs to this class or another "derefrencing"
 */
/* Structs -> * Value Type; we can define variables without an initializer in struct {A way of Store Data rather than complex behavior}
        * 1st Diff: struct C    struct D
            C = D  we just say that values are equal to each other doesn't mean they point to the same object, any changes in C WOULD NOT reflected to D
        * 2nd Diff: struct can't inherit any thing from other struct
        * If you want to use this concept of inheritance, you have to abstract class and lot of classes inherit from it
        * Uses: for simple implementation, for copy variables' value or for variables that will not change its values rather than reference them
        * Class func is slightly different
        * Variables in struct are mutable (aren't changeable) which means that funcs in struct don't generally change the values of these variables
        * Funcs to retrieve values are the same as classes
        * Changing properties about struct we called a mutating func
        * Static funcs are called "Static func" are called by the name of struct not instance name
 */
/* Enumerations -> * Are much more simpler than struct or classes, as these don't have initializes or behaviors, they only define some values that the enum might take on
        * Can implement behaviors, initializers
        * Much small scale than classes & structures
 */

class A {
    var propertyA : String = "hello"
}

struct B {
    var propertyB : String = "goodbye"
}

var a1 = A()
var a2 = A()
a1.propertyA = "hi"
a1.propertyA
a2.propertyA
a1 = a2     //both referring to the same instance
a1.propertyA = "hey"
a1.propertyA            //hey
a2.propertyA            //hey
// a1.propertyA = a2.propertyA  although i changed one instance only

var b1 = B()
var b2 = B()
b1.propertyB = "bye"
b1.propertyB
b2.propertyB
b1 = b2     //the values are equal but not the same instances; means that after equality when i change one instance not reflect to the second one
b1.propertyB            //goodbye
b1.propertyB            //goodbye
b1.propertyB = "byebye"
b1.propertyB            //byebye
b2.propertyB            //goodbye

// When and where to use each one
/* -> use CLASSES:
 #when wants inheritance
 #if we want an items to refer to the same instance
 #if we want to copy everything over
 #multiple references of the same item
 #implement lots of properties, behaviors
 -> use STRUCTURES:
 #store data only that is really won't be changed
 #multiple copies of the same item
 -> use ENUMERATIONS:
 #when implement behaviors, initializers all together
 #when we want to define a new type that has only few possible values
 */
 
 // Protocols
/* Protocols -> * Protocols provide a blueprint for Methods, properties and other requirements functionality. It is just described as a methods or properties skeleton instead of implementation. Methods and properties implementation can further be done by defining classes, functions and enumerations.
 */
protocol SomeProtocol {
    // protocol definition
}

/* Protocols are declared after the class, structure or enumeration type names. Single and Multiple protocol declarations are also possible. If multiple protocols are defined they have to be separated by commas.
 */
protocol Protocol1 {
    
}
protocol Protocol2 {
    
}
struct SomeStructure: Protocol1, Protocol2 {
    // structure definition
}

/* When a protocol has to be defined for super class, the protocol name should follow the super class name with a comma.
 */
class SuperClass {
    
}
class SubClass : SuperClass, Protocol1, Protocol2 {
    // class definition
}

/* Protocol is used to specify particular class type property or instance property. It just specifies the type or instance property alone rather than specifying whether it is a stored or computed property. Also, it is used to specify whether the property is 'gettable' or 'settable'.
    Property requirements are declared by 'var' keyword as property variables. {get set} is used to declare gettable and settable properties after their type declaration. Gettable is mentioned by {get} property after their type declaration.
 */
protocol ClassA {
    var marks : Int { get set }
    var result : Bool { get }
    
    func attendance() -> String
    func markssecured() -> String
}
protocol ClassB : ClassA {
    var present : Bool { get set }
    var subject : String { get set }
    var stname : String { get set }
}
class ClassC : ClassB {
    var marks = 96
    let result = true
    var present = false
    var subject = "Swift 4 Protocols"
    var stname = "Protocols"
    
    func attendance() -> String {
        return "The \(stname) has secured 99% attendance"
    }
    func markssecured() -> String {
        return "\(stname) has scored \(marks)"
    }
}

let studdet = ClassC()
studdet.stname = "Swift 4"
studdet.marks = 98
studdet.markssecured()
print(studdet.marks)
print(studdet.result)
print(studdet.present)
print(studdet.subject)
print(studdet.stname)

enum Device {
    case iPad, iPhone, AppleTV, AppleWatch
    func introduced() -> String {
        switch self {
        case .AppleTV: return "\(self) was introduced 2006"
        case .iPhone: return "\(self) was introduced 2007"
        case .iPad: return "\(self) was introduced 2010"
        case .AppleWatch: return "\(self) was introduced 2014"
        }
    }
}
print (Device.iPhone.introduced())

// Mutating Method Requirements
protocol DaysOfWeek {
    mutating func printDays()
}

enum Days : DaysOfWeek {
    case sun, mon, tue, wed, thurs, fri, sat
    mutating func printDays() {
        switch self {
            case .sun:
                self = .sun
                print("Sunday")
            case .mon:
                self = .mon
                print("Monday")
            case .tue:
                self = .tue
                print("Tuesday")
            case .wed:
                self = .wed
                print("Wednesday")
            case .thurs:
                self = .thurs
                print("Thursday")
            case .fri:
                self = .fri
                print("Friday")
            case .sat:
                self = .sat
                print("Saturday")
            default:
                print("NO Such Day")
        }
    }
}

var resDays = Days.wed
resDays.printDays()

protocol daysofaweek {
    mutating func print2()
}


var myAge : Int = 30
let myAgeinYears : Int = myAge + 10
myAge = 33
myAgeinYears    //stay constant

func getMilk(howManyMilkCartons : Int, hoMuchMoneyRobotWasGiven : Int) -> Int {
    print("go to the shops")
    print("buy \(howManyMilkCartons) cartons of milk")
    
    let priceToPay : Int = 2 * howManyMilkCartons
    print("pay L\(priceToPay)")
    print("come home")
    
    return (hoMuchMoneyRobotWasGiven - priceToPay)
}

getMilk(howManyMilkCartons: 4, hoMuchMoneyRobotWasGiven: 10)
getMilk(howManyMilkCartons: 12, hoMuchMoneyRobotWasGiven: 50)

func loveCalculator(yourName : String, theirName : String) -> String {
    let loveScore = Int(arc4random_uniform(101))
    if loveScore > 80 {
        return "Your love score is \(loveScore). You love each other like Kanye loves Kanye"
    } else if loveScore > 40 && loveScore <= 80 {
        return "Your love score is \(loveScore). You go together like coke and mentos"
    } else {
        return "Your love score is \(loveScore). No love possible"
    }
}

print(loveCalculator(yourName: "Angela Yu", theirName: "Jack Bauer"))

func calcBMI(weight : Double, height : Double) -> String {
    let bodyMassIndex = weight / pow(height, 2)
    let shortenedBMI = String(format: "%.2f", bodyMassIndex)
    
    if bodyMassIndex > 25 {
        return "Your BMI is \(shortenedBMI). You are overweight"
    } else if bodyMassIndex > 18.5 && bodyMassIndex < 25 {
        return "Your BMI is \(shortenedBMI). You are of normal weight"
    } else {
        return "Your BMI is \(shortenedBMI). You are underweight"
    }
}

print(calcBMI(weight: 63, height: 1.8))

func bmiCalcImperialUnits(weightInPounds : Double, heightInFeet : Double, remainderInches : Double) {
    let weightInKg = weightInPounds * 0.45359237
    let totalInches = heightInFeet * 12 + remainderInches
    let heightInM = totalInches * 0.0254
    
    let bmi = weightInKg / pow(heightInM, 2)
}

bmiCalcImperialUnits(weightInPounds: 140, heightInFeet: 5, remainderInches: 11)


// Dictionaries
var param : [String : String] = ["lat" : "123455", "lon" : "543231", "appid" : "98875"]
let latitude = param["lat"]



