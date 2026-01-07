/* Solution 1 -> Brute Force (Time Complexity= O(n^2)) */
class Solution1 {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var index1 = 0
        var index2 = 1
        
        while index1 != index2 {
            while index2 < nums.count {
                if nums[index1] + nums [index2] == target {
                    return [index1, index2]
                } else {
                    index2 += 1
                }
            }
            index1 += 1
            index2 = index1 + 1
        }
        return [index1, index2]
    }
}

/* Solution 2 (Time Complexity= O(n^2)) */
class Solution2 {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var result = [Int]()
        var dict = [Int : Int]()
        for i in 0...nums.count - 1{
            if dict.keys.contains(nums[i]){
                result = [dict[nums[i]]!,i]
            } else {
                let diff = target - nums[i]
                dict[diff] = i
            }
        }
        return result
    }
}

/* Solution 3 (Time Complexity= O(n))*/
class Solution3 {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dict = [Int: Int]()
        
        for i in 0..<nums.count {
            if let index = dict[nums[i]] {
                return [index, i]
            }
            dict[target - nums[i]] = i
        }
        return []
    }
}
