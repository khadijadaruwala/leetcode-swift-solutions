import Foundation

/*Solution 1: Time complexity: O(n log n) & Space complexity: O(n)*/
class Solution1 {
    func findMissingElements(_ nums: [Int]) -> [Int] {
        var a = nums.sorted()
        var missing: [Int] = []
        guard a.count >= 2 else { return missing }
        
        for i in 0..<(a.count - 1) {
            if a[i] == a[i + 1] { continue }
            
            var x = a[i] + 1
            while x < a[i + 1] {
                missing.append(x)
                x += 1
            }
        }
        return missing
    }
}

/*Solution 2: Time complexity: O(n + R) & Space complexity: O(n)*/
class Solution2 {
    func findMissingElements(_ nums: [Int]) -> [Int] {
        guard !nums.isEmpty else { return [] }
        
        let s = Set(nums)
        let minVal = nums.min()!
        let maxVal = nums.max()!
        
        var missing: [Int] = []
        if minVal == maxVal { return missing }
        
        var x = minVal + 1
        while x < maxVal {
            if !s.contains(x) { missing.append(x) }
            x += 1
        }
        return missing
    }
}
