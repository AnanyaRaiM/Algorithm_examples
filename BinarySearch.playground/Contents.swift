import UIKit

var numberArray = [2,4,6,7,8]

func binarySearch(searchNumber: Int, searchingArray: [Int]) -> Bool{
    
    var leftindex = 0
    var rightindex = searchingArray.count - 1
    
    while leftindex <= rightindex {
        
        let middleIndex = (leftindex + rightindex) / 2
        let middleValue = searchingArray[middleIndex]
        
        if middleValue == searchNumber{
            return true
        }
        if searchNumber < middleValue{
            rightindex = middleIndex - 1
        }else if searchNumber > middleValue {
            leftindex = middleIndex + 1
        }
    }
    return false
}

var searchresult = binarySearch(searchNumber: 3, searchingArray: numberArray)
print(searchresult)
