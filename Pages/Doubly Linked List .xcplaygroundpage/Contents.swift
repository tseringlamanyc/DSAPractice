import UIKit

// helper method to help while testing different methods below
func example(_ str: String, action: () -> ()) { // "testing append"
    print(str)
    action()
    print()
}

// singly linked node
class SLNode {
    var next: DLNode?
    var value: Int
    init(_ value: Int) {
        self.value = value
    }
}

class SinglyLinkedList {
    private var head: SLNode?
    private var tail: SLNode?
    func append() {
    }
}

// implement (Doubly Linked Node) class
class DLNode {
    var next: DLNode?
    weak var previous: DLNode?
    var value: Int
    init(_ value: Int) {
        self.value = value
    }
}

// implement (Doubly Linked List) class
class DoublyLinkedList {
    
    private (set) var head: DLNode?
    private (set) var tail: DLNode?
    
    func append(_ value: Int) {
        // 1
        // create a new node
        let newNode = DLNode(value)
        // 2
        // guard against tail being nil i.e (list being empty)
        guard let lastNode = tail else {
            // 3
            // append to empty list
            head = newNode
            tail = newNode
            return
        }
        // list has values
        // 4
        lastNode.next = newNode
        // 5
        newNode.previous = lastNode
        // 6
        tail = newNode
        
    }
    
    func printForward() { // 5 -> 1 -> 10 -> nil
        var currentNode = head
        while let node = currentNode {
            print(node.value, terminator: " -> ")
            currentNode = node.next
        }
        print("nil")
    }
    
    func printReverse() {
        var currentNode = tail
        while let node = currentNode {
            print(node.value, terminator: " -> ")
            currentNode = node.previous
        }
        print("nil")
    }
    
    // TODO: prepend (add a node to the front)
    func prepend(_ value: Int) {
        let newNode = DLNode(value)
        
        guard let firstNode = head else {
            head = newNode
            tail = newNode
            return
        }
        
        head?.previous = newNode
        newNode.next = firstNode
        head = newNode
    }
    
    // TODO: delete head
    func deleteHead() {
        guard let currentHead = head else {
            return
        }
        
        head = currentHead.next
        currentHead.previous = nil
    }
    
    // TODO: delete tail
    func deleteTail() {
        guard let lastNode = tail else {
            return
        }
        tail = lastNode.previous
        tail?.next = nil 
    }
    
    // TODO: insert value after node (list.head.next)
    func insertNode(_ node: DLNode, _ value: Int) {
        
    }
    
    // TODO: delete value at index
    
}

let list = DoublyLinkedList()

example("testing append") {
    list.append(10)
    list.append(7)
    list.append(5)
    list.prepend(1)
    list.deleteHead()
    list.deleteTail()
    list.printForward() // 10 -> 7 -> 5 -> nil
}

example("reverse print") {
    list.printReverse()
}
