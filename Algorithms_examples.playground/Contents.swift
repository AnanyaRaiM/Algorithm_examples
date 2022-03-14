import Foundation
// finding highest number with least frequency in an array 
//Input:
//2 2 5 50 1
//Output:
//50
//Input:
//3 3 2 1 2 1 3
//Output:
//2


func LargButMinFreq(_ input: [Int]) -> Int{
    var dict = [Int: Int]()
    
    let count = 1
    for number in input {
        if dict[number] != nil, let elementCount = dict[number] {
            dict[number] = elementCount + 1
        }else {
            dict[number] = count
        }
    }
    
    let sortedKeys = dict.keys.sorted(by: >)
    let minimumFrequency = dict.values.sorted(by: >).min()

    for number in sortedKeys {
        if dict[number] == minimumFrequency {
            return number
        }
    }
    let a = dict.sorted(by: {$1.0 < $0.0})
    print(a)
    return 0
}


let inputArray = [3, 3, 2, 1, 2, 1, 3, 4]
print(LargButMinFreq(inputArray))
