import Foundation

struct Day10 {
    
    static let input = """
    151
    94
    14
    118
    25
    143
    33
    23
    80
    95
    87
    44
    150
    39
    148
    51
    138
    121
    70
    69
    90
    155
    144
    40
    77
    8
    97
    45
    152
    58
    65
    63
    128
    101
    31
    112
    140
    86
    30
    55
    104
    135
    115
    16
    26
    60
    96
    85
    84
    48
    4
    131
    54
    52
    139
    76
    91
    46
    15
    17
    37
    156
    134
    98
    83
    111
    72
    34
    7
    108
    149
    116
    32
    110
    47
    157
    75
    13
    10
    145
    1
    127
    41
    53
    2
    3
    117
    71
    109
    105
    64
    27
    38
    59
    24
    20
    124
    9
    66
    """.components(separatedBy: .newlines).compactMap({ Int($0) })
    
    static let shortInput = """
    16
    10
    15
    5
    1
    11
    7
    19
    6
    12
    4
    """.components(separatedBy: .newlines).compactMap({ Int($0) })  // 11
    
    static let aLongerInput = """
    28
    33
    18
    42
    31
    14
    46
    20
    48
    47
    24
    23
    49
    45
    19
    38
    39
    11
    1
    32
    25
    35
    8
    17
    7
    9
    4
    2
    34
    10
    3
    """.components(separatedBy: .newlines).compactMap({ Int($0) })
    
    static func solve() -> Int {
        var numberOfOneJoltDifferences = 0
        var numberOfThreeJoltDifferences = 0
        
        var numbers = Set(input)
        let target = numbers.max()!
        
        func nextValue(_ n: Int) -> Int {
            numbers.remove(n)
            
            if numbers.contains(n + 1) {
                numberOfOneJoltDifferences += 1
                return n + 1
            } else if numbers.contains(n + 2) {
                return n + 2
            } else if numbers.contains(n + 3) {
                numberOfThreeJoltDifferences += 1
                return n + 3
            }
            fatalError()
        }
        
        let startValue = numbers.min()!
        if startValue == 1 {
            numberOfOneJoltDifferences += 1
        } else if startValue == 3 {
            numberOfThreeJoltDifferences += 1
        }
        
        numbers.remove(startValue)
        
        var value = startValue
        
        while value != target {
            value = nextValue(value)
        }
        
        // Device adapter is always highest value + 3
        numberOfThreeJoltDifferences += 1
        
        return numberOfOneJoltDifferences * numberOfThreeJoltDifferences
    }
    
    
    static func solve2() -> Int {
        var adapters = input.sorted()
        adapters.append(contentsOf: [adapters.max()! + 3])
        
        var dict: [Int: Int] = [:] // Use a dictionary for safe subscripting
        
        func dictValue(_ i: Int) -> Int {
            dict[i, default: 0]
        }
        
        if adapters.contains(1) {
            dict[1] = 1
        }
        if adapters.contains(2) {
            dict[2] = 1
        }
        if adapters.contains(3) {
            dict[3] = 1
        }
        
        for a in adapters {
            let sum = dictValue(a-3) + dictValue(a-2) + dictValue(a-1) + dictValue(a)
            dict[a] = sum
        }
        
        return dict[adapters.last!]!
    }
}
