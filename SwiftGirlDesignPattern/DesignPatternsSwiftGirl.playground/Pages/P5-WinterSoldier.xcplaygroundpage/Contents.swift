/*:
 ![Make School Banner](./swiftGirls.png)
 
 - callout(故事概要 😀): 現在好萊塢編劇新增需求,要創建 Winter Soldier版的劉時鎮,就算左手是iron hand當然還會幫女主角綁鞋帶,在前幾頁的基礎上進行擴充是非常easy
 
 */

/*:
 
 ### Winter Soldier In 太陽的後裔
 
 */

import Foundation

//劉時鎮的行為協議
protocol SweetBehavioral {
    func shoesAction()
}

//使用雙手綁鞋帶的類
class TieWithHands: SweetBehavioral {
    func shoesAction() {
        print("幫女主角綁鞋帶~👢")
    }
}

class TieMySelfWithHands: SweetBehavioral {
    func shoesAction() {
        print("綁自己鞋帶~👞")
    }
}

//使用雙手脫鞋子的類
class TakeOffShoesWithHands: SweetBehavioral {
    func shoesAction() {
        print("幫女主角脫鞋~👢")
    }
}

class Soldier {

    //添加行為委托代理者
    var handleShoesActionBehavior: SweetBehavioral! = nil

    func setShoesActionBehavior(handleShoesActionBehavior: SweetBehavioral) {
        self.handleShoesActionBehavior = handleShoesActionBehavior
    }

    //敬禮口號
    func salute() {
        print("團結 (단결)")
    }

    func backpacking() {
        print("背大背包, 裡面一堆裝備")
    }

    func display() {
    }

    func performShoesAction() {
        guard (self.handleShoesActionBehavior != nil) else {
            return
        }
        self.handleShoesActionBehavior.shoesAction()
    }
}

//編劇: 劉時鎮角色藍圖
class TitleRoleSoldier: Soldier {

    override init() {
        super.init()
        self.setShoesActionBehavior(handleShoesActionBehavior: TieWithHands())
    }

    override func display() {
        print("劉時鎮報到😎")
    }
}

//導演: 仲基哥這場景該你出場
var 宋仲基:Soldier = TitleRoleSoldier()
宋仲基.performShoesAction()

class WinterSoldier: Soldier {

    override init() {
        super.init()
        self.setShoesActionBehavior(handleShoesActionBehavior: TieWithHands())
    }

    override func display() {
        print("The thing is, you don't have to. I'm with you till the end of the line")
    }
}



宋仲基 = WinterSoldier()
宋仲基.performShoesAction()

/*:
 
 - callout(Try it out!): 接續上一頁, coding 現在給妳當編劇機會自訂SweetBehavioral需求 🙂 🙂
 
 */

class SomeSweetAction: SweetBehavioral {
    func shoesAction() {
        print("函式名稱設不好, 反正sweetAction, 自訂SweetBehavioral需求po在issue區, Thank you :D")
    }
}

宋仲基.setShoesActionBehavior(handleShoesActionBehavior: SomeSweetAction())
宋仲基.performShoesAction()

//: [Previous](@previous)
