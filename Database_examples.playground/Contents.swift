import Foundation

//MARK: - 1. to find index of 2 numbers which gives given sum
let myArray = [2,3,11,15,5,3]
let mySum = 6
var resultArray = [Int]()

func twoSum(numberArray: [Int], sum : Int) -> [Int]{
    var dic = [Int:Int]()
    for (index, number) in numberArray.enumerated(){
        dic[number] = index
    }

    for (index, num) in numberArray.enumerated(){
        let secondNumber = sum - num
        if let secondIndex = dic[secondNumber], secondIndex != index {
            return [index, secondIndex]
        }
        //dic[number] = index
    }
    return [0,0]
}

print(twoSum(numberArray: myArray, sum: mySum))

// or

//for i in myArray{
//    let secondNumber = 20 - i
//    if myArray.contains(secondNumber){
//        let firstindex = myArray.firstIndex(of: i)
//        resultArray.append(firstindex ?? 0)
//        let secondIndex = myArray.firstIndex(of: secondNumber)
//        if secondIndex != firstindex{
//            resultArray.append(secondIndex ?? 0)
//        }
//    }
//}
//print(resultArray)


//MARK: - 2. to find 2nd heighest number
var numbers = [2, 4, 7 ,8]

var firstHeighest = 0
var secondheighest = 0

func findSecondheighest(num: [Int]) -> Int{
    for item in num {
        if item > firstHeighest {
            secondheighest = firstHeighest
            firstHeighest = item
        }
    }
    return secondheighest
}

let second = findSecondheighest(num: numbers)
print(second)


//MARK: - 3. sorting
var numberForSorting = [2, 4, 7, 3 ,1]

for _ in 0..<numberForSorting.count {
    for j in 0...numberForSorting.count - 2 {
        if numberForSorting[j] > numberForSorting [j + 1]{
            let temp = numberForSorting[j]
            numberForSorting[j] = numberForSorting[j + 1]
            numberForSorting[j + 1] = temp
        }
    }
}
print(numberForSorting)


//MARK: - 4. 2nd heighest in string
var numberString = "asdadadw373525679"
var intArray = [Int]()
for char in numberString where char.isNumber  {
    let a = String(char)
    intArray.append(Int(a)!)
}
print(intArray)



//MARK: - 5. quick sort
var actualArray = [4,5,7,1]

func findSortedArray(inputArray: [Int]) -> [Int]{
    var lessArray = [Int]()
    var moreArray = [Int]()
    var midleArray = [Int]()

    if inputArray.count > 1{
    let pivot = inputArray[inputArray.count / 2]
    for item in inputArray {
        if item < pivot {
            lessArray.append(item)
        }
        else if item > pivot {
            moreArray.append(item)
        }else{
            midleArray.append(item)
        }
    }
    return findSortedArray(inputArray: lessArray) + midleArray + findSortedArray(inputArray: moreArray)
    }
    return inputArray
}

print(findSortedArray(inputArray: actualArray))


//MARK: - 6. palindrome
func findPalindrome(num: Int) -> Bool {
    var reversedNumber = 0
    var number = num
    while number > 0 {
        let remainder = number % 10
        reversedNumber = reversedNumber * 10 + remainder
        number = number / 10
    }
    return num == reversedNumber
}
var number = 23432
let isPalindrome = findPalindrome(num: number)
print(isPalindrome)


//MARK: - 7. searching in matrix(sorted matix)
var matrix = [[1,2,3,4], [6,8,9] , [11,12,14]]
var target = 8
var targetArray = [Int]()
for array in matrix {
    if ((target >= array[0]) && (target <= array[array.count - 1])){
        targetArray = array
    }
    //do binary search
}

//MARK: - 8. searching for parathesis
func isValid(_ S: String) -> Bool{
    let stack = StackArray()
    let validDic = ["{":"}", "[":"]", "(":")"]

    if S.count <= 1 {
        return false
    }

    for char in S{
        if ((char == "{") || (char == "[") || (char == "(")){
            stack.push(value: String(char))
        }else if ((char == "}") || (char == "]") || (char == ")")){
            if let peekValue = stack.peek(){
                if (validDic[peekValue] == String(char)) {
                    stack.pop()
                }else{
                    return false
                }
            }else{
                stack.push(value: String(char))
            }
        }
    }
    if stack.isEmpty() {
        return true
    }
    return false
}

class StackArray{
    var stackArray = [String]()

     func push(value: String){
        stackArray.append(value)
    }

    func pop() {
        stackArray.removeLast()
    }

    func peek() -> String? {
        return stackArray.last
    }
    func isEmpty() -> Bool {
        return (stackArray.count == 0)
    }
}

let isValid1 = isValid("{  }")
print(isValid1)

//MARK: - 9. recursion factorial
func findFactorial(_ num: Int) -> Int{

    if num == 0{
        return 1
    }else{
        return num * findFactorial(num - 1)
    }
}
print(findFactorial(4))

//MARK: - 10. most common name
func mostcommonName(_ names: [String]){

    var dic = [String: Int]()

    for name in names {
        if let count = dic[name] {
            dic[name] = count + 1
        }else{
            dic[name] = 1
        }
    }
    print(dic)

    var mostUsedName = ""

    for key in dic.keys{
        if mostUsedName == "" {
            mostUsedName = key
        }else{
            let count = dic[key]
            if count! > dic[mostUsedName]! {
                mostUsedName = key
            }
        }
    }
    print(mostUsedName)
}

mostcommonName(["a","b","c","a","a"])
