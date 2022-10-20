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
print("Unsorted:")
print(dump(dataSet))
waitForUserInput()

// One pass through the array to float the highest number to the end
for v in 0..<dataSet.count - 1 {

    
    if dataSet[v] > dataSet[v + 1] {
        //swap value
        let virtualRandomAccessMemory = dataSet[v]
        dataSet[v] = dataSet[v + 1]
        dataSet[v + 1] = virtualRandomAccessMemory
    }
}

//print the array after pass
print("Array after one pass")
print(dataSet)
waitForUserInput()


