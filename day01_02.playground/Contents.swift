import UIKit

var day = 11

if day == 13 {
    print("오늘은 11일")
}
else {
    print("no issues")
}
//var tmp = readLine()
//print(tmp)
print("👀")

//var cnt = 0
//for let i in 1...10 {
//    cnt+=1
//}

//print(cnt)


for i in 1...9 {
    print("(2*" + String(i) + ") = " + String(2*i))
}
print(i)
var i = 1
var cnt = 0
while (i < 10) {
    cnt += i
    i += 1
}
print(cnt)
print(i)

var todoArray: Array<String> = ["운동하기", "책보기", "영화보기"]
print(todoArray.endIndex)
print(todoArray[1])
print(todoArray.startIndex)
todoArray.popLast()
for i in 0...todoArray.count-1 {
    print(todoArray[i])
}


func hello(name: String) {
    print("hello \(name)")
}

hello(name: "nyoungy")



