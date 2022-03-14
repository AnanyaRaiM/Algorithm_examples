import UIKit

//MARK: - snake case to camel case
let str: String = "this-is-my-id"

//let result = str.split(separator: "-").reduce("") {(acc, name) in "\(acc)\(acc.count > 0 ? String(name.capitalized) : String(name))" }

//or

//let result = str
//    .split(separator: "-")  // split to components
//    .map { String($0) }   // convert subsequences to String
//    .enumerated()  // get indices
//    .map { $0.offset > 0 ? $0.element.capitalized : $0.element.lowercased() } // added lowercasing
//    .joined() // join to one string

//print(result)

