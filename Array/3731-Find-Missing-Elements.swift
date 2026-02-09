import Foundation

class Solution {
    func checkPrimeFrequency(_ nums: [Int]) -> Bool {
        var freq = [Int: Int]()
        
        for i in nums {
            if let count = freq[i]{
                freq[i] = count + 1
            } else {
                freq[i] = 1
            }
        }
        
        for i in 0...nums.count - 1 {
            if let count = freq[nums[i]]{
                if isPrime(count){
                    return true
                }
            }
        }
        return false
    }
    
    func isPrime(_ n: Int) -> Bool {
        if n < 2 { return false }
        for i in 2..<n {
            if n % i == 0 {
                return false
            }
        }
        return true
    }
}
