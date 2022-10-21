//
//  main.swift
//  BubbleSortImplementation
//
//  Created by Jacobo de Juan Millon on 2022-10-20.
//  Used by Nathan Smith on 2022-10-20.
//

import Foundation

// this function can be used to slow down the algorithm to see it slowly
// it is commented out in the code, if you want to slow it down then just comment them back in
func waitForUserInput() {
    print("")
    print("Press return to continue")
    _ = readLine()
}

// Create an empty list (array)
var dataSet: [Int] = []

//Populate the list
for _ in 1...3000 {
    dataSet.append(Int.random(in: 1...200000))
}

// the following was for testing purposes
//dataSet.append(10)
//dataSet.append(9)
//dataSet.append(8)
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
// waitForUserInput()

// Keep track of the start time                                              //
// When this runs, startime conatins the number of second since Jan, 1 1970 //
let startTime = Date().timeIntervalSince1970                               //

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
    
//                                    { inside this bracket, these statements result to the same output
    if(shouldBreak) {
        break
    }
//        if shouldBreak == true {
//            exit(1)
//        }
//                                     }
    
    //print the array after pass x
    print("Array after \(i + 1) passes")
    print(dataSet)
//    waitForUserInput()
    
}

// Get end time
let endTime = Date().timeIntervalSince1970

// get elapsed time
let elapsedTime = endTime - startTime
print("Sort time \(elapsedTime)")
