//: [Previous](@previous)

import Foundation
import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true

var value: Int = 20
let serialQueue = DispatchQueue(label: "com.queue.serial")

func doAsyncTaskInSerialQueue() {
    for i in 1...3 {
        serialQueue.async {
            if Thread.isMainThread {
                print("task running in main thread")
            } else {
                print("task running in other thread")
            }
            let imageURL = URL(string: "https://en.wikipedia.org/wiki/File:Neymar_(cropped).jpg")!
            let _ = try! Data(contentsOf: imageURL)
            print("\(i) fineshed dowloading")
        }
    }
}

doAsyncTaskInSerialQueue()

serialQueue.async {
    for i in 0...3 {
        value = i
        print("\( value) *️⃣")
        
    }
}
print("Last line in playgraund! ")
