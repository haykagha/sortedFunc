import UIKit

var numbers: [Double] = [1,2.9,7.3,4,16,25,78,2,34]

extension Array {
    
    func sortik(logic:(Element, Element) -> Bool ) -> [Element]{
        var copyArray = self
        var empty: Element
        for _ in 0..<copyArray.count - 1{
            for j in 0..<copyArray.count - 1{
                if logic(copyArray[j],copyArray[j + 1]){
                    empty = copyArray[j]
                    copyArray[j] = copyArray[j + 1]
                    copyArray[j + 1] = empty
                }
            }
        }
        return copyArray
    }
    
}


print(numbers.sortik { $0 > $1})
