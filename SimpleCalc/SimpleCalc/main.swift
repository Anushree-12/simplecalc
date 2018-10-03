//
//  main.swift
//  SimpleCalc
//
//  Created by Ted Neward on 10/3/17.
//  Copyright © 2017 Neward & Associates. All rights reserved.
//

import Foundation

public class Calculator {
    public func calculate(_ args: [String]) -> Int {
        // not sure how to initialize the array
        // args += calculate? add each susbtring character into the args array or ars.append(calculate)
        // for each substring in calculate
        var array = [String]()
        let size = array.count
        
        if array[size - 1] == "count" {
            if size != 1 {
                for _ in array {
                    return size - 1
                }
            } else {
                return 0 // am i supposed to be returning values? or creating a new var?
            }
        } else if array[size - 1] == "avg" {
            if size != 1 {
                for _ in array {
                // go through all elements except the last one (can i remove the last element, which is the word and then just iterate through all the elements?) and then average them. UPDATE SIZE IF REMOVING LAST ELEMENT
                    let avgArray = avgArray.reduce(0, +)
                    let avgValue = avgArray / size
                }
            } else {
                return 0
            }
        } else if array[size - 1] == "fact" {
            if size != 1 {
                for _ in array {
                    let factNum = array[0]
                    if factNum == 0 || 1 {
                        return 1
                    }
                    let factorial =
                }
            } else {
                return 0
            }
        }
        
        for _ in size { // for (index, element) in array.enumerate() {
            var first = array[0]
            var operation = [1]
            var second = [2]
            var new = 0
            if operation == "+" {
                new = first + second
                } else if operation == "-" {
                new = first - second
            } else if operation == "*" {
                new = first * second
                } else if operation == "/" {
                new = first / second
            } else if operation == "%" {
                new = first % second
            }
            first = new
            second = array[index + 2] // increment index
            operation = array[index + 2] // how do I increment the index?
            
        }
        
    }
    
    public func calculate(_ arg: String) -> Int {
        // how do i read each substring and then turn it into an int?
        // do i turn the numbers into an int in the other function if that is possible? or should i cast the first, and second var into Int?
        return calculate( arg.split(separator: " ").map({ substr in String(substr) }) )
    }
}

print("UW Calculator v1")
print("Enter an expression separated by returns:")
let first = readLine()!
let operation = readLine()!
let second = readLine()!
print(Calculator().calculate([first, operation, second]))

// call the function for the string that is broken up into each character in first calculate function
// use it in a for loop while it adds each character from susbtring to each index in the array
