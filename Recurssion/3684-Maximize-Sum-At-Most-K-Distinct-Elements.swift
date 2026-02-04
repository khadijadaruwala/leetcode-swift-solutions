/* Solution 1 - Time complexity: O(2ⁿ * n) */

class Solution {
    func maxDistinctSumBruteForce(_ nums: [Int], _ k: Int) -> [Int] {
        let uniqueNums = Array(Set(nums))   // distinct values
        let n = uniqueNums.count
        var bestSum = 0
        var bestSubset: [Int] = []
        
        func backtrack(_ index: Int, _ current: [Int]) {
            if current.count > k { return }
            
            let sum = current.reduce(0, +)
            if sum > bestSum {
                bestSum = sum
                bestSubset = current
            }
            
            for i in index..<n {
                backtrack(i + 1, current + [uniqueNums[i]])
            }
        }
        backtrack(0, [])
        return bestSubset.sorted(by: >)
    }
}
