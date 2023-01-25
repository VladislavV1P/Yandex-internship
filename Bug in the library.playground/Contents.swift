import Foundation

var endOfDataTransmission = false
var stringData = [Int:String]()

func findNumber(string: String) {
    var stringInArray = ""
    var index = ""
    for char in string {
        switch char {
        case "0","1","2","3","4","5","6","7","8","9":
            index += String(char)
        default:
            stringInArray += String(char)
        }
    }
    if let index = Int(index) {
        stringData[index] = stringInArray
    }
}

while !endOfDataTransmission {
    if let input = readLine() {
        findNumber(string: input)
    } else {
        endOfDataTransmission = true
    }
}

//test data
let inputTest1 = "ccc3"
let inputTest2 = "2bbb"
let inputTest3 = "a1aa"
findNumber(string: inputTest1)
findNumber(string: inputTest2)
findNumber(string: inputTest3)
//end test

if !stringData.isEmpty {
    for index in 1...stringData.count {
        if let output = stringData[index] {
            print(output)
        }
    }
} else {
    print()
}


