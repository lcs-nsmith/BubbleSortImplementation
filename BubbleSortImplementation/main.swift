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
//dataSet.append(1)
//dataSet.append(2)
//dataSet.append(3)
//dataSet.append(4)
//dataSet.append(5)
//dataSet.append(6)
//dataSet.append(7)
//dataSet.append(8)
//dataSet.append(9)
//dataSet.append(10)

// Print the list
print("Unsorted:")
print(dump(dataSet))
waitForUserInput()

//Loop for the array "x" times
// (however many times there are elements in the array)
for i in 0..<dataSet.count {
    
    var shouldBreak: Bool = true
    
    // One pass through the array to float the highest number to the end
    for j in 0..<dataSet.count - 1 - i {
        
        // Compare left to right value
        print("Comparison \(j+1)...", terminator: "")
        if dataSet[j] > dataSet[j + 1] {
        
            
            //swap value
            let virtualRandomAccessMemory = dataSet[j]
            dataSet[j] = dataSet[j + 1]
            dataSet[j + 1] = virtualRandomAccessMemory
            print("values were swapped", terminator: "")
            shouldBreak = false
        }
        print("")
    }
    
//    if(shouldBreak) {
//        break
//    }
        if shouldBreak == true {
            exit(1)
        }
    
    //print the array after passx   x
    print("Array after \(i + 1) passes")
    print(dataSet)
    waitForUserInput()
    


}

/// Somehow I have to make the algorithm stop after a pass makes zero
