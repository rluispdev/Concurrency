import Foundation
import PlaygroundSupport
import Combine

PlaygroundPage.current.needsIndefiniteExecution = true

class CustomThread {
    func createThread() {
        let thread: Thread = Thread(target: self, selector: #selector(threadSelector), object: nil)
        thread.start()
    }
    @objc func threadSelector() {
        print("Custom thread in action")
    }
}

let customThread = CustomThread()
customThread.createThread()

// Esse código usa o GCD para executar uma tarefa em um trhead separado
func main() {
    // Cria uma fila
    let queue = DispatchQueue(label: "com.example.myqueue")

    // Cria uma tarefa
    let task = {
        print("Executando a tarefa em um thread separado.")
    }

    // Envia a tarefa para a fila
    queue.async(execute: task)
}

main()

 // cria uma fila de tarefas
let queue = DispatchQueue(label: "myQueue")

//Envia uma tarefa para a fila.
queue.async {
    //Execute um trablho de longa duração
    for  i in 0..<10000{
        
    }
}

// Cria uma fila concorrente
let queue1 = DispatchQueue(label: "myConcurrentQueue", attributes: .concurrent)

// Envia uma tarefa para a fila
queue.async {
  // Executa uma tarefa de longa duração
  for i in 0..<1000000 {
    // ...
  }
}

// Envia outra tarefa para a fila
queue.async {
  // Executa outra tarefa de longa duração
  for i in 0..<1000000 {
    // ...
  }
}
