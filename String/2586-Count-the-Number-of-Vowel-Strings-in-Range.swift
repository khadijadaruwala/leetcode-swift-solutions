/* Solution 1: Time: O((right-left+1) × k) & Space: O(k) */

class Solution1 {
    func vowelStrings(_ words: [String], _ left: Int, _ right: Int) -> Int {
        var index =  left
        var count = 0
        
        while index <= right {
            var word = Array(words[index])
            var first =  word[0]
            var last = word[word.count - 1]
            if first == "a" || first == "e" || first == "i" || first == "o" || first == "u" {
                if last == "a" || last == "e" || last == "i" || last == "o" || last == "u" {
                    count += 1
                }
            }
            index += 1
        }
        
        return count
    }
}

/* Solution 2: Time: O(n) & Space: O(1) */

class Solution2 {
    func vowelStrings(_ words: [String], _ left: Int, _ right: Int) -> Int {
        var count = 0
        let vowels: Set<Character> = ["a","e","i","o","u"]
        
        for i in left...right {
            let word = words[i]
            if let first = word.first,
               let last = word.last,
               vowels.contains(first),
               vowels.contains(last) {
                count += 1
            }
        }
        
        return count
    }
}
