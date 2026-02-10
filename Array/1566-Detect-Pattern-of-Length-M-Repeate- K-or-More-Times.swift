/* Time complexity - O(n) and Space complexity O(1)*/
class Solution {
    func containsPattern(_ arr: [Int], _ m: Int, _ k: Int) -> Bool {
        let n = arr.count
        if m * k > n { return false }
        
        var count = 0
        for i in 0..<(n - m) {
            if arr[i] == arr[i + m] {
                count += 1
                if count == m * (k - 1) { return true }
            } else {
                count = 0
            }
        }
        return false
    }
}
