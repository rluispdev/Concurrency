//: [Previous](@previous)

import Foundation
import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true
 
DispatchQueue.main.async{
    print(Thread.isMainThread ? "Execution on Main Thread" : " Execution on some other thread")
}

DispatchQueue.global().async {
    print(Thread.isMainThread ? "Execution on Main Thread" : " Execution on some Global concurent queue ")
}
