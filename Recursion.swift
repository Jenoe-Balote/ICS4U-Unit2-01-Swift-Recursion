//
//  Recursion.swift
//
//  Created by Jenoe Balote
//  Created on 2021-11-30
//  Version 1.0
//  Copyright (c) 2021 Jenoe Balote. All rights reserved.
//
//  This program reverses a string through recursion.
//

import Foundation

// Reverses string
func reverse(strInput: String) -> String {

    if strInput.count == 0 {
        return strInput
    } else {
        let range = strInput
            .index(after: strInput.startIndex)..<strInput.endIndex
        return reverse(strInput: String(strInput[range]))
            + strInput.prefix(1)
    }
}

// Input
print("This program reverses a string through recursion.")
print("\nEnter a string: ", terminator: "")
let strInput = readLine()

// Output
let reversedString = reverse(strInput: strInput!)
print("The reversed string is: \(reversedString)")

print("\nDone.")
