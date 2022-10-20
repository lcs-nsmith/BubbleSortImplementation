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

//Loop for the array "x" times
// (however many times there are elements in the array)
for i in 0..<dataSet.count {
    
    
    // One pass through the array to float the highest number to the end
    for j in 0..<dataSet.count - 1 {
        
        
        if dataSet[j] > dataSet[j + 1] {
            //swap value
            let virtualRandomAccessMemory = dataSet[j]
            dataSet[j] = dataSet[j + 1]
            dataSet[j + 1] = virtualRandomAccessMemory
        }
    }
    
    //print the array after pass
    print("Array after pass")
    print(dataSet)
    waitForUserInput()
    
}
