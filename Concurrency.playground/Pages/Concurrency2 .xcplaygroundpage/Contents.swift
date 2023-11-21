//: [Previous](@previous)

import Foundation
import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true

var counter = 1
DispatchQueue.main.async{
    for i in 0...3{
        counter = 1
        print("\(counter)")
    }
}


for i in 4...6 {
    counter = i
    print("\(counter)")
}

DispatchQueue.main.async{
    counter = 9
    print(counter)
}
