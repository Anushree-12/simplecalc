//
//  main.swift
//  SimpleCalc
//
//  Created by Ted Neward on 10/3/17.
//  Copyright © 2017 Neward & Associates. All rights reserved.
//

// How do I initalize the array? And add the elements from the substring (from other method) to that array?
// What is the method below doing? With the map...
// Should I be returning values in the array method? Or creating a new variable and saving the final answer into that? I think return
//For count, avg, fact, can I remove the last element so I can iterate through the entire array, or can I iterate size-1 times?
// To iterate through the whole array for actual calculator code, how do I increment array index?

import Foundation

public class Calculator {
    public func calculate(_ args: [String]) -> Int {
        // not sure how to initialize the array
        // args += calculate? add each susbtring character into the args array or ars.append(calculate)
        // for each substring in calculate
        let array = args
        
        if array.last == "count" {
            var count = 0
            // How do I cast the strings to integers?
            for (index, element) in array.enumerate() {
                if element != "count" {
                    count = count + 1
                }
            return count
            }
        }
            else if array.last == "avg" {
            var avg = 0
            var avgValue = 0
            for (index, element) in array.enumerate() {
                avg = avg.reduce(0, +)
                avgValue = avg / array.count
            }
            return avgValue
        } else if array.last == "fact" {
            var factorial = 1
            for (index, element) in array.enumerate() {
                while element > 1 {
                    factorial = factorial * element
                    element = element - 1
                }
            }
            return factorial
            
        }
        
        var arrayNum = 0
        var operation = ""
        var result = 0
        
        for (index, element) in array.enumerate() {
            if index % 2 == 0 {
                arrayNum = element
            } else {
                operation = element
            }

            if index != 0 || index != 1 && index % 2 == 0 {
                if operation == "+" {
                    result = result + arrayNum
                } else if operation == "-" {
                    result = result - arrayNum
                } else if operation == "*" {
                    result = result * arrayNum
                    } else if operation == "/" {
                    result = result / arrayNum
                } else if operation == "%" {
                    result = result % arrayNum
                }
            }
        }
        return result
    }
    
    public func calculate(_ arg: String) -> Int {
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
