class Solution {
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        
        var index = 0
        while (index < nums.count){
             if nums[index] == val{
                nums.remove(at:index)
            }else {
                 index = index + 1
             }
        }
        
        return nums.count
    }
}
