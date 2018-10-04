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
        let array = args
        
        if array.last == "count" {
            var count = 0
            // How do I cast the strings to integers?
            for (_, element) in array.enumerated() {
                if element != "count" {
                    count = count + 1
                }
                return count
            }
        }
        else if array.last == "avg" {
            var avg = 0
            var avgValue = 0
            for (_, element) in array.enumerated() {
                while element != "avg" {
                    let num = Int(element)!
                    avg = avg + num
                    avgValue = avg / array.count
                }
            }
            return avgValue
        } else if array.last == "fact" {
            var factorial = 1
            if array.count > 1 {
                let _ : Int = Int(array.first!)!
            }
            for (_, element) in array.enumerated() {
                var intElement = Int(element)
                while intElement! > 1 {
                    factorial = factorial * intElement!
                    intElement = intElement! - 1
                }
            }
            return factorial
            
        }
        
        let arrayNum = 0
        var operation = ""
        var result = 0
        
        for (index, element) in array.enumerated() {
            if index % 2 == 0 {
                let _ = Int(element)
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
                } /*else if operation == "/" {
                        if arrayNum != 0 {
                            result = result / arrayNum
                        } else {
                            break
                    }
                } else if arrayNum != 0 && operation == "%" {
                    result = result % arrayNum
                }*/
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
