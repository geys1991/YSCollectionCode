
/*:
 [Previous](@previous)

 ```
 import UIKit
 
 // 1. 打印变量的地址
 func printAddress(values:AnyObject...){
    for value in values {
        print(Unmanaged.passUnretained(value).toOpaque())
    }
    line()
 }
 func line(){
    print("----------------")
 }
 // example
 let temp = "123"
 printAddress(values: temp as AnyObject)
 
 ```
 
[Next](@next)
*/

