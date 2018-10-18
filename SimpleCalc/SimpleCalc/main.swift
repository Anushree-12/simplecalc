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
        
        let prevNumber = Int(args[0])

        
        if args.last == "count" {
            return args.count
        } else if args.last == "avg" {
            var avgNum: Int = 0
            for i in args {
                while args.last != "avg" {
                    avgNum = avgNum + Int(i)!
                }
            }
            return avgNum / args.count
        } else if args.last == "fact" {
            if prevNumber == 0 || args.count == 1 {
                return 1
            } else {
                var num = 1
                for i in 1...Int(prevNumber!) {
                    num = num * i
                }
                return num
            }
        }
        
        let operation = args[1]
        let currentNumber = Int(args[2])
        
        if operation == "+" {
            return prevNumber! + currentNumber!
        } else if operation == "-" {
            return prevNumber! - currentNumber!
        } else if operation == "*" {
            return prevNumber! * currentNumber!
        } else if operation == "/" {
            return prevNumber! / currentNumber!
        } else if operation == "%" {
            return prevNumber! % currentNumber!
        }
        
        return -1
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
