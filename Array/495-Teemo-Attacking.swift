class Solution {
    func findPoisonedDuration(_ timeSeries: [Int], _ duration: Int) -> Int {
        guard !timeSeries.isEmpty else { return 0 }
        
        var total = 0
        
        for i in 1..<timeSeries.count {
            let gap = timeSeries[i] - timeSeries[i - 1]
            total += min(gap, duration)
        }
        
        // add last attack duration
        return total + duration
    }
}
