//: [Previous](@previous)

import Foundation
import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true
print("_______________")
let a = DispatchQueue(label: "A")

let b = DispatchQueue(label: "B", attributes:
                        [.concurrent, .initiallyInactive])
 
b.setTarget(queue: a)
b.async {
    print("Testing activation/ desactivation")
}
b.activate()
