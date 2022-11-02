import Foundation



var unsortedStrings = [String]()

while let line = readLine() {
    if(line.count == 0) {break;}
    unsortedStrings.append(line)
}
// Add your code below:
func swap(integers: inout [String], firstIndex: Int, secondIndex: Int) {
       integers.swapAt(firstIndex, secondIndex)
}
func compare(Left:String, Right:String) -> Bool {
    let L = Left.lowercased().filter({("abcdefghijklmnopqrstuvwxyz").contains($0)})
    let R =  Right.lowercased().filter({("abcdefghijklmnopqrstuvwxyz").contains($0)})
    if L < R {
        return true
    } else if L > R {
        
        return false
    }
    return true
}




func swap(integers: inout [Int], firstIndex: Int, secondIndex: Int) {
    integers.swapAt(firstIndex, secondIndex)
}

var UnsortedIntegers = unsortedStrings

//just going to put ina variable becuase im not going to deal with the "not mutable" bs
func insertSort() {
    for n in 0 ..< UnsortedIntegers.count {
        let m = n
        while m > 0 && compare(Left:UnsortedIntegers[m], Right:UnsortedIntegers[m-1]) {
            swap(integers: &UnsortedIntegers, firstIndex: m, secondIndex: m - 1)
        }
    }
}
insertSort()        



