import Foundation

struct Day13 {
    static let shortInput = """
    939
    7,13,x,x,59,x,31,19
    """
    
    static let input = """
    1002576
    13,x,x,x,x,x,x,37,x,x,x,x,x,449,x,29,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,19,x,x,x,23,x,x,x,x,x,x,x,773,x,x,x,x,x,x,x,x,x,41,x,x,x,x,x,x,17
    """
    
    static var timestamp: Int {
        Int(shortInput.components(separatedBy: .newlines).first!)!
    }
    
    static func solve() -> Int {
        var time = timestamp
        let busIDs = input
            .components(separatedBy: .newlines)[1]
            .components(separatedBy: .punctuationCharacters)
            .filter({ $0 != "x" })
            .compactMap({ Int($0) })
        
        while time < Int.max {
            time += 1
            for bus in busIDs {
                if time % bus == 0 {
                    return bus * (time - timestamp)
                }
            }
        }
        
        fatalError()
    }
}
