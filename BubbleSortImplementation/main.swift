//
//  main.swift
//  BubbleSortImplementation
//
//  Created by Jacobo de Juan Millon on 2022-10-20.
//  Used by Nathan Smith on 2022-10-20.
//

import Foundation

func waitForUserInput() {
    print("")
    print("Press return to continue")
    _ = readLine()
}

// Create an empty list (array)
var dataSet: [Int] = []

//Populate the list
for _ in 1...10 {
    dataSet.append(Int.random(in: 1...100))
}

// Print the list
print(dump(dataSet))
