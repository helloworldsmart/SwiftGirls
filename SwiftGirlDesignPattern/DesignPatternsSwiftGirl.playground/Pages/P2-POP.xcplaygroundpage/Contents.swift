/*:
 ![Make School Banner](./swiftGirls.png)
 
 - callout(我們來用Swift coding 韓劇吧 😀):
  
 */

/*:
 
 ### Protocol Oriented Programming In 太陽的後裔
 
 */

import Foundation

var str = "Hello, Protocol Delegate"

/*:
 
 - callout(Try it out!): 接續上一頁, coding delegate 演戲 🙂
 
 */

protocol DirectorDelegate {
    func perfrctShot()//完美鏡頭
}

class Actor:DirectorDelegate {
    func perfrctShot() {
        print("Fight")
    }
}

class Director {
    var delegate:DirectorDelegate?
    func action() {
        delegate?.perfrctShot()
    }
}

let aDirector = Director()
let aActor = Actor()
aDirector.delegate = aActor
aDirector.action()

/*:
 
 - callout(Try it out!): 用Protocol Delegate, coding 你喜歡的場景吧 🙂
 
 */








//: [Previous](@previous) | [Next](@next)
