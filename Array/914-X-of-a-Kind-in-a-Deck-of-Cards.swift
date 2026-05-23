class Solution {
    func hasGroupsSizeX(_ deck: [Int]) -> Bool {
        var freq = [Int: Int]()
        
        // Step 1: Count frequencies
        for card in deck {
            freq[card, default: 0] += 1
        }
        
        // Step 2: Compute GCD of all counts
        var resultGCD = 0
        
        for count in freq.values {
            resultGCD = gcd(resultGCD, count)
        }
        
        // Step 3: Valid if gcd >= 2
        return resultGCD >= 2
    }
    
    // Helper function to compute GCD
    private func gcd(_ a: Int, _ b: Int) -> Int {
        if b == 0 { return a }
        return gcd(b, a % b)
    }
}
