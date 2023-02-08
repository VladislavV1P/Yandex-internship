import Foundation

var endOfDataTransmission = false
var stringData = [Int:String]()
let digit: Set<Character> = ["0","1","2","3","4","5","6","7","8","9"]

func findNumber(string: String) {
    var stringInArray = ""
    var index = ""
    var total = string.count
    var stopFind = false
    for char in string {
        if digit.contains(char) {
             index += String(char)
            stopFind = true
        } else if stopFind{
            break
        } else {
            stringInArray += String(char)
        }
        total -= 1
    }
        if let index = Int(index) {
            stringData[index] = stringInArray + String(string.suffix(total))
    }
}

while !endOfDataTransmission {
    if let input = readLine() {
        findNumber(string: input)
    } else {
        endOfDataTransmission = true
    }
}

if !stringData.isEmpty {
    for index in 1...stringData.count {
        if let output = stringData[index] {
            print(output)
        }
    }
} else {
    print()
}
