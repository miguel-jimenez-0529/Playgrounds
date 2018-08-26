//: A MapKit based Playground
import Foundation

func reverseParentheses(s: String) -> String {
    var currentIndex = s.startIndex
    var char = s[currentIndex]
    var openBraquetIndex = [String.Index]()
    var mutableStr = s
    while currentIndex != mutableStr.endIndex {
        switch char {
        case "(":
            openBraquetIndex.append(currentIndex)
        case ")":
            let range = openBraquetIndex.last!..<currentIndex
            let stringToReverse = s[range]
            mutableStr.replaceSubrange(range, with: String(stringToReverse.reversed()))
        default:
            break
        }
//        let next = getNextChar(index: currentIndex,s:mutableStr)
//        currentIndex = next.index
//        char = next.char
    }
    return mutableStr
    
}

func getNextChar(index : String.Index, s : String) ->(char:Character,index : String.Index) {
    let newIndex = s.index(index, offsetBy: 1)
    return (s[newIndex],newIndex)
}


var s = reverseParentheses(s:"aaaa(abc)asd")
