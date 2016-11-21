/*:
 ![Make School Banner](./swiftGirls.png)
 # Design Patterns 前菜沙拉 :  An Introduction
 
 - callout(我們來用Swift coding 韓劇吧 😀):
 
 Implementation:
 
      let 宋仲基 = TitleRoleSoldier()
      宋仲基.face = " " //臉部辨識系統還沒建立
      宋仲基.type = " " //python網頁爬蟲在數據海迷路
      宋仲基.workoutAction()
 
 */

import UIKit
import Foundation

//TODO: 先用變數資料餵給 Machine Learning 吧 😝
var str = "Hello, 宋仲基"
var face = "請填寫"
var type = "請填寫"

/*:
 
 ### Object Oriented Programming In 太陽的後裔
 
 */

var str1 = "Hello, 太陽的後裔"


class Soldier {

    //敬禮口號
    func salute() {
        print("團結 (단결)")
    }

    func backpacking() {
        print("背大杯包, 裡面一堆裝備")
    }

    func display() {
    }
}

class TitleRoleSoldier: Soldier {
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

/*:

 - callout(Try it out!): 現在有新的劇本, coding SuperClass 和 SubClasses 角色原型吧 🙂

 */


























//: [Previous](@previous) | [Next](@next)


