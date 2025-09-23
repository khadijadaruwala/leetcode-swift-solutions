class Solution {
    func commonFactors(_ a: Int, _ b: Int) -> Int {
        
        var factorCount = 0
        var largerNumber = a >= b ? a : b
        for i in 1...largerNumber {
            if a%i == 0 && b%i == 0{
                factorCount += 1
            }
        }
        return factorCount
    }
}
