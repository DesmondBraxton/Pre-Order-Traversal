import UIKit

//Goal is to build and traverse this tree
// Use Post- Order travesal to return 7 30 11 9 6 4 8
// Visits all the children before visiting the parent node itself
// The root always comes last
// Starts with the left most node

/*
        8
      /   \
     11    4
    /  \  /  \
   7   30 9    6
 */

class BinaryTreeNode<T> {
  var value: T
  var leftChild: BinaryTreeNode?
  var rightChild: BinaryTreeNode?
  init(_ value: T) {
    self.value = value
  }
}



var binaryTree: BinaryTreeNode<Int> = {
let rootNode = BinaryTreeNode(8)
let elevenNode = BinaryTreeNode(11)
let fourNode = BinaryTreeNode(4)
let sevenNode = BinaryTreeNode(7)
let thirtyNode = BinaryTreeNode(30)
let sixNode = BinaryTreeNode(6)
let nineNode = BinaryTreeNode(9)

rootNode.leftChild = elevenNode
rootNode.rightChild = fourNode
elevenNode.leftChild = sevenNode
elevenNode.rightChild = thirtyNode
fourNode.leftChild = nineNode
fourNode.rightChild = sixNode
    
return rootNode
}()
extension BinaryTreeNode {
    public func traversePostOrder(visit:(T) -> Void){
    
    leftChild?.traversePostOrder(visit: visit)
    rightChild?.traversePostOrder(visit: visit)
    visit(value)
    }
}
binaryTree.traversePostOrder { print($0) }
