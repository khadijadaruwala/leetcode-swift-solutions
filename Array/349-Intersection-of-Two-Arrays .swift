
import Foundation
class Solution {
    func intersection(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        var resultNums: [Int] = [Int]()
        var count = [Int:Int]()
        for i in nums1 {
            for j in nums2 {
                if j == i {
                    if count[j] != 1 {
                        resultNums.append(j)
                        count[j] = 1
                    }
                }
            }
        }
        return resultNums
    }
    
}
