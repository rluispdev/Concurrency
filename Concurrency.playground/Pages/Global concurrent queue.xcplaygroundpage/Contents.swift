//: [Previous](@previous)

import Foundation
import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true
 
DispatchQueue.main.async{
    print(Thread.isMainThread ? "Execution on Main Thread" : " Execution on some other thread")
}

DispatchQueue.global(qos: .userInteractive).async {
    print(Thread.isMainThread ? "Execution on Main Thread" : " Execution on Global concurent queue ")
}
