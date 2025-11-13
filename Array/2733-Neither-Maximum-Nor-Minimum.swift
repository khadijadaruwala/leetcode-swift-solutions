class Solution {
    func findNonMinOrMax(_ nums: [Int]) -> Int {
        guard nums.count > 2 else { return -1 }
        
        // find min and max correctly
        var minVal = Int.max
        var maxVal = Int.min
        for n in nums {
            if n < minVal { minVal = n }
            if n > maxVal { maxVal = n }
        }
        
        // return first element that's neither min nor max
        for n in nums {
            if n != minVal && n != maxVal {
                return n
            }
        }
        
        return -1
    }
}
