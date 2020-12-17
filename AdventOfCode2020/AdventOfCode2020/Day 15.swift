import Foundation

struct Day15 {
    static let shortInput = """
    0,3,6
    """
    
    static let input = """
    7,12,1,0,16,2
    """
    
    static func solve(times: Int) -> Int {
        let startingNumbers = input.components(separatedBy: ",").compactMap({ Int($0) })
        
        var map: [Int: Int] = [:] // holds the numbers that were already said as keys, values are the most recent turn

        var turn = 0
        
        var lastValue: Int = -1
        var lastValueTurn: Int = -1
    
        // Set up starting numbers in map
        startingNumbers.enumerated().forEach { (index, number) in
            map[number] = index
        }
        lastValue = startingNumbers.last!
        
        turn = startingNumbers.count
        
        while turn < times {
            var value = 0
            if lastValueTurn > -1 {
                // has been said before
                value = (turn - 1) - lastValueTurn
            }
            
            lastValue = value
            lastValueTurn = map[value] ?? -1
            
            map[value] = turn
           
            turn += 1
        }
        
        return lastValue
    }
}
