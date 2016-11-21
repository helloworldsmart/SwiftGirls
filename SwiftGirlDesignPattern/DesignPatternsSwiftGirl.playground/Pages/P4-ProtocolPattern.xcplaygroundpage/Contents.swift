/*:
 ![Make School Banner](./swiftGirls.png)
 
 - callout(故事概要 😀): 現在導演要為劉時鎮加幫女主角綁鞋帶的劇情, 這時要怎麼寫代碼呢？
 issue: 劉時鎮,徐大英,尹明珠搶著幫女主角綁鞋帶 ?
 其他角色都不需執行幫女主角綁鞋帶的Behavior !!
 1. 在基類(soldier類)中添加 TieShoelaces(), 其他演員重新改寫TieShoelaces code,
 這樣的話會被其他演員抱怨, 背這麼多台詞卻沒有用到, 一直mark(註解)掉方法
 2. 使用protocol接口, 需要實現TieShoelaces()的演員，實現接口即可，頂多產生重複的code。
 
 */

/*:
 
 ### Protocol Extensions Pattern In 太陽的後裔
 
 */

import Foundation

var str = "Hello, playground"
/*:
 
 - callout(Hint): 使用Swift Protocol Extensions Pattern
 - 使用protocol接口, 需要實現TieShoelaces()的演員，實現接口即可，頂多產生重複的code。
 - WWDC2015 介紹新的技術, Protocol-Oriented Programming in Swift
 - STARTING OVER WITH PROTOCOLS
 - Swift語言特性，我們第一個想到的不是去創造一個class，而是一個protocol。
 
 */


protocol SweetBehavioral {
    func shoesAction()
}
//為Protocol添加, 默認實現
extension SweetBehavioral {
    func shoesAction() {
        print("幫女主角綁鞋帶~👢")
    }
}

class Soldier {

    //敬禮口號
    func salute() {
        print("團結 (단결)")
    }

    func backpacking() {
        print("背大背包, 裡面一堆裝備")
    }

    func display() {
    }
}

class TitleRoleSoldier: Soldier, SweetBehavioral {
    override func display() {
        print("劉時鎮報到😎")
    }
}

class SupportingRoleSoldier: Soldier {
    override func display() {
        print("徐大英報到😎")
    }
}

class FemaleSupportingRoleSoldier: Soldier {
    override func display() {
        print("尹明珠報到😏")
    }
}

let titleRoleSoldier: TitleRoleSoldier = TitleRoleSoldier()
titleRoleSoldier.shoesAction()

/*:
 
 - callout(Try it out!): coding 導演: Action 演戲 🙂 🙂
 
 */












//: [Previous](@previous) | [Next](@next)
