import Foundation

/*Solution 1: Time complexity: O(n log n) & Space complexity: O(n)*/
class Solution1 {
    func maximumProduct(_ nums: [Int]) -> Int {
        let a = nums.sorted()
        let n = a.count
        let cand1 = a[n - 1] * a[n - 2] * a[n - 3]
        let cand2 = a[0] * a[1] * a[n - 1]
        return max(cand1, cand2)
    }
}

/*Solution 1: Time complexity: O(n) & Space complexity: O(1)*/
class Solution2 {
    func maximumProduct(_ nums: [Int]) -> Int {
        var max1 = Int.min, max2 = Int.min, max3 = Int.min
        var min1 = Int.max, min2 = Int.max
        
        for x in nums {
            // update maxes
            if x > max1 {
                max3 = max2; max2 = max1; max1 = x
            } else if x > max2 {
                max3 = max2; max2 = x
            } else if x > max3 {
                max3 = x
            }
            
            // update mins
            if x < min1 {
                min2 = min1; min1 = x
            } else if x < min2 {
                min2 = x
            }
        }
        
        let cand1 = max1 * max2 * max3
        let cand2 = max1 * min1 * min2
        return max(cand1, cand2)
    }
}
