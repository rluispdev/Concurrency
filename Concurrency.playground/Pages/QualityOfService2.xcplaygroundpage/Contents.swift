//: [Previous](@previous)

import Foundation
import PlaygroundSupport
 
PlaygroundPage.current.needsIndefiniteExecution = true

let customQueue: DispatchQueue = DispatchQueue(
    label: String,
    qos: DispatchQoS,
    attributes: DispatchQueue.Attributes,
    autoreleaseFrequency: DispatchQueue.AutoreleaseFrequency,
    target: DispatchQueue?)
    
)

 
