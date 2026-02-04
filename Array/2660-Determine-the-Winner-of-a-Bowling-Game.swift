import Foundation
/* Solution 1; Brute force */
class Solution {
    func isWinner(_ player1: [Int], _ player2: [Int]) -> Int {
        
        var sum1 = calSum(arr: player1)
        var sum2 = calSum(arr: player2)
        
        if sum1 > sum2 {
            return 1
        } else if sum2 > sum1
        {
            return 2
        }
        
        return 0
    }
    
    func calSum(arr: [Int]) -> Int {
        var count = 0
        var sum = 0
        for i in arr {
            if count > 0 {
                sum = sum + (i*2)
                count -= 1
                if i == 10 {
                    count = 2
                }
                continue
            }
            if i == 10 {
                count = 2
                
            }
            sum = sum + i
            
        }
        return sum
    }
}



/*Solution 2: Cleaner code  Time complexity - O(n+m) or O(n)*/
class Solution {
    func isWinner(_ player1: [Int], _ player2: [Int]) -> Int {
        let sum1 = calSum(player1)
        let sum2 = calSum(player2)
        return sum1 == sum2 ? 0 : (sum1 > sum2 ? 1 : 2)
    }
    
    private func calSum(_ arr: [Int]) -> Int {
        var bonus = 0
        var sum = 0
        
        for pins in arr {
            sum += (bonus > 0) ? pins * 2 : pins
            if bonus > 0 { bonus -= 1 }
            if pins == 10 { bonus = 2 }
        }
        return sum
    }
}
