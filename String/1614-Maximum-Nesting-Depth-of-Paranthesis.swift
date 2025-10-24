
import Foundation
class Solution {
    func maxDepth(_ s: String) -> Int {
        var maxDepth = 0
        var pointer = 0
        var char = Array(s)
        
        for i in char {
            if i == "("{
                pointer += 1
            } else if i == ")"{
                pointer -= 1
            }
            
            if pointer > maxDepth{
                maxDepth = pointer
            }
        }
        return maxDepth
    }
}
