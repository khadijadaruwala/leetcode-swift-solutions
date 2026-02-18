/* Time complexity: O(n)*/
class Solution {
    func differenceOfSum(_ nums: [Int]) -> Int {
        if nums.count <= 0 {return 0}
        var eSum = 0
        var dSum = 0
        for i in nums {
            eSum = eSum + i
            var digit = i
            while digit > 0 {
                dSum = dSum + (digit % 10)
                digit = digit / 10
            }
        }
        return abs(eSum - dSum)
    }
}
