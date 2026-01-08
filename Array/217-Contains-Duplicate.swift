/* Time complexity - O(n)  Space complexity - O(n) */
class Solution {
    func containsDuplicate(_ nums: [Int]) -> Bool {
        
        var dict = [Int: Bool]()
        for i in nums {
            if let item = dict[i] {
                return true
            } else {
                dict[i] = true
            }
        }
        return false
    }
}
