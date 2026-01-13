/* Solution 1 - Time complexity: O(n * k) */
class Solution {
    func rotate(_ nums: inout [Int], _ k: Int) {
        var count = k
        
        while (count > 0){
            let lastNo = nums.removeLast()
            nums.insert(lastNo, at: 0)
            count = count - 1
        }
    }
}

/* Solution 2 - Time complexity: O(n)*/
class Solution {
    func rotate(_ nums: inout [Int], _ k: Int) {
        let n = nums.count
        guard n > 1 else { return }
        
        // Handle cases where k > n
        let rotations = k % n
        print("Rotations:", rotations)
        guard rotations != 0 else { return }
        
        // Reverse the whole array
        reverse(&nums, 0, n - 1)
        // Reverse first k elements
        reverse(&nums, 0, rotations - 1)
        // Reverse remaining elements
        reverse(&nums, rotations, n - 1)
    }
    
    private func reverse(_ nums: inout [Int], _ start: Int, _ end: Int) {
        var left = start, right = end
        while left < right {
            nums.swapAt(left, right)
            left += 1
            right -= 1
        }
    }
}

