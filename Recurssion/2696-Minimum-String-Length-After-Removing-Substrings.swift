/* Solution 1: Time complexity O(n^2) Space complexity 0(n) */
class Solution1 {
    func minLength(_ s: String) -> Int {
        var subString = getSubstring(subString: s)
        return subString.count
    }
    
    func getSubstring(subString: String) -> String{
        var chars = Array(subString)
        var i = 0
        
        while i < chars.count - 1 {
            let a = chars[i]
            let b = chars[i + 1]
            
            if (a == "A" && b == "B") || (a == "C" && b == "D") {
                chars.remove(at: i + 1)
                chars.remove(at: i)
                return getSubstring(subString: String(chars))
            } else {
                i += 1
            }
        }
        
        return String(chars)
    }
}

/* Solution 2: Time complexity O(n) Space complexity 0(n) */
class Solution2 {
    func minLength(_ s: String) -> Int {
        var stack: [Character] = []
        
        for ch in s {
            if let last = stack.last {
                if (last == "A" && ch == "B") || (last == "C" && ch == "D") {
                    stack.removeLast()   // remove the pair
                    continue
                }
            }
            stack.append(ch)
        }
        
        return stack.count
    }
}
