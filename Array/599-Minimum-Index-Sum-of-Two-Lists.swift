import Foundation

class Solution {
    func findRestaurant(_ list1: [String], _ list2: [String]) -> [String] {
        // map each restaurant in list1 to its index
        var indexMap = [String: Int]()
        for (i, name) in list1.enumerated() {
            indexMap[name] = i
        }
        
        var minSum = Int.max
        var result: [String] = []
        
        // scan list2, compute index sum when a match is found
        for (j, name) in list2.enumerated() {
            if let i = indexMap[name] {
                let sum = i + j
                if sum < minSum {
                    minSum = sum
                    result = [name]
                } else if sum == minSum {
                    result.append(name)
                }
            }
        }
        
        return result
    }
}

// example
let solution = Solution()
print(solution.findRestaurant(["happy","sad","good"], ["sad","happy","good"]))
// Output: ["sad","happy"] or order depending on which ties are found first
