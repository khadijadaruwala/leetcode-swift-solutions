class Solution {
    func addedInteger(_ nums1: [Int], _ nums2: [Int]) -> Int {
        guard let min2 = nums2.min() else {
            return 0
        }
        
        guard let min1 = nums1.min() else {
            return 0
        }
        
        return min2 - min1
    }
}
