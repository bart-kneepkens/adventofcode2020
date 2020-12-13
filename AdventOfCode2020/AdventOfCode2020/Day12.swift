import Foundation

struct Day12 {
    static let input = """
    W2
    F23
    S1
    W3
    L180
    W3
    R90
    N4
    F17
    S4
    W4
    R90
    W4
    E1
    N4
    F5
    N2
    R90
    F43
    N5
    L90
    F12
    S4
    W1
    S3
    W2
    N4
    F76
    S1
    W4
    W2
    F20
    N4
    F81
    W4
    N3
    R180
    W2
    N4
    W3
    F16
    N4
    L180
    F1
    W3
    F34
    W3
    S3
    F92
    L90
    S2
    L90
    E5
    N2
    F85
    W3
    R90
    W2
    F88
    N2
    L90
    W1
    N4
    L90
    E5
    N3
    L90
    F8
    E1
    L90
    N3
    F3
    F61
    S5
    R90
    W2
    F84
    W1
    L90
    E1
    S3
    W5
    F89
    E3
    F67
    E2
    E5
    F29
    N5
    W4
    F53
    N2
    E5
    F73
    W4
    L90
    S2
    R180
    N3
    R90
    F27
    N2
    F41
    L270
    W5
    F3
    N5
    F81
    R90
    N2
    W5
    N2
    R90
    S1
    R180
    S3
    L90
    E2
    F38
    S1
    E3
    S5
    F44
    N1
    F26
    E1
    S2
    F25
    E1
    S2
    F33
    S4
    R90
    N2
    W2
    F9
    R90
    F64
    W1
    S3
    E5
    R180
    N2
    L90
    S4
    E4
    L90
    S2
    F50
    S3
    R90
    F8
    E2
    N1
    R90
    S5
    S1
    F100
    N3
    F97
    R180
    S3
    L180
    F45
    W5
    S1
    E5
    E3
    F26
    N4
    R90
    N4
    F50
    W5
    R90
    F58
    S4
    W3
    E1
    N3
    R90
    S4
    E2
    F26
    N4
    L90
    F60
    W4
    N1
    F10
    E5
    L180
    N4
    E1
    F15
    E3
    L270
    F23
    R90
    F61
    R90
    F25
    L90
    W2
    S3
    R180
    F44
    W5
    E1
    R90
    S2
    R270
    W2
    S1
    F13
    E5
    N2
    R270
    F68
    F99
    W1
    F31
    N5
    F89
    E5
    N4
    W5
    N2
    F59
    E3
    L180
    E3
    L90
    L180
    S5
    F27
    E1
    S3
    R180
    N5
    E4
    L180
    N2
    E3
    W1
    L180
    F23
    N4
    E1
    F87
    N1
    E3
    F45
    W5
    F17
    L90
    N1
    L90
    W3
    S2
    F62
    R180
    F8
    R90
    F19
    W1
    S2
    S5
    W4
    F40
    F52
    S3
    F6
    R90
    S5
    W3
    S5
    E3
    W3
    S1
    F11
    S2
    E4
    F3
    R90
    L270
    E1
    S1
    W4
    L180
    W2
    S4
    E2
    N3
    W3
    S2
    W4
    L90
    F24
    W3
    F58
    E5
    R90
    F73
    E4
    F92
    R90
    F62
    W4
    R90
    W2
    S3
    W2
    F75
    N4
    R180
    W5
    S5
    W1
    S2
    L90
    S1
    E5
    L180
    N3
    W3
    F77
    E2
    S5
    L90
    E5
    S4
    L90
    S4
    F32
    L90
    W3
    F92
    W3
    S4
    W1
    R90
    F6
    R180
    E4
    W2
    R90
    W4
    S2
    W5
    S2
    F79
    R90
    S4
    F50
    S4
    W3
    F87
    W5
    R90
    S2
    F23
    E1
    N1
    R90
    F24
    L90
    F29
    N1
    R90
    E5
    N5
    F79
    W3
    L90
    S4
    E5
    S1
    F36
    W2
    R90
    F36
    R270
    F82
    E4
    F82
    S3
    F94
    N2
    L180
    S2
    E1
    N3
    F54
    S3
    F11
    E2
    R90
    W2
    F39
    R90
    S2
    W2
    R90
    E4
    N2
    E5
    F59
    W3
    R90
    W3
    F78
    N4
    F97
    S4
    W1
    F48
    N2
    E2
    R180
    F6
    R90
    W4
    R90
    E5
    F19
    N2
    R180
    F50
    W3
    N5
    R90
    N1
    W4
    F68
    R90
    N2
    L90
    F83
    E3
    N4
    W2
    F48
    W3
    E3
    L180
    F73
    R90
    F81
    W1
    R90
    F25
    S3
    F23
    L270
    S4
    F76
    W3
    F73
    N2
    E5
    L90
    N3
    W3
    R270
    F37
    S5
    R90
    F46
    S4
    E4
    F92
    L90
    N1
    L180
    W3
    S5
    F27
    N1
    L180
    F91
    W4
    N3
    F11
    L180
    N1
    E3
    L90
    S2
    R90
    S2
    E3
    F55
    S4
    E2
    S2
    F3
    E3
    F58
    W4
    N4
    E5
    F2
    N1
    W3
    F86
    E5
    F60
    W3
    F9
    S4
    R180
    F44
    E4
    N1
    F74
    L270
    E4
    L270
    F52
    R180
    F70
    L180
    E1
    F68
    R90
    E5
    W4
    R90
    E4
    F27
    S2
    L90
    W5
    N5
    R90
    E2
    N5
    F15
    R180
    F72
    S5
    L90
    F31
    R90
    E4
    R270
    S3
    W3
    R270
    N1
    S3
    R90
    F80
    R90
    E2
    N5
    W2
    L90
    F40
    N1
    F14
    L90
    W2
    F9
    W4
    R90
    F88
    R180
    N1
    E5
    F96
    N1
    F4
    R90
    F56
    F14
    L90
    F8
    R180
    S2
    F75
    L90
    E5
    R90
    F81
    N1
    W3
    F46
    R270
    S2
    F15
    W3
    R180
    F27
    W3
    F53
    R90
    E5
    L90
    S3
    W1
    F62
    S5
    W2
    S5
    R90
    F82
    W2
    N4
    L270
    E1
    N5
    E2
    F52
    N1
    E2
    S2
    R180
    N1
    L90
    W2
    L90
    F78
    L90
    W1
    N4
    F81
    E1
    N4
    W2
    F86
    W1
    F30
    W5
    N4
    E3
    F42
    N2
    F5
    R90
    F60
    L90
    E5
    S4
    E5
    S3
    F70
    S3
    R90
    W5
    R90
    W2
    N3
    L180
    E3
    S2
    E3
    F82
    E2
    F5
    E4
    E1
    S1
    R180
    W4
    F1
    R180
    N4
    E1
    S3
    E3
    F59
    W3
    F73
    L90
    F74
    R90
    E1
    F54
    W3
    F54
    L90
    S4
    F100
    F56
    L90
    F26
    L180
    F50
    W3
    S2
    E3
    F87
    N2
    W5
    F50
    S2
    W5
    S1
    F46
    R90
    F89
    L90
    N4
    F53
    W1
    F56
    E4
    S5
    F68
    L90
    F22
    R90
    F73
    S5
    S5
    L90
    E4
    S2
    R270
    E3
    L90
    F20
    L90
    F84
    S1
    F29
    W2
    S4
    L90
    W4
    N1
    F65
    E5
    L90
    S3
    F38
    L90
    L90
    N5
    F50
    S1
    F16
    R90
    F12
    E2
    N3
    F49
    R90
    F4
    N1
    R90
    F80
    R180
    W2
    L90
    S5
    E1
    F93
    R90
    F32
    L180
    F44
    L90
    S4
    F42
    N2
    R90
    S1
    F56
    L180
    E2
    F90
    N1
    F3
    L90
    E1
    F91
    L90
    W4
    L90
    F10
    S3
    W5
    S3
    F87
    """
    
    static let shortInput = """
    F10
    N3
    F7
    R90
    F11
    """
    
    struct Action {
        let name: String
        let value: Int
        
        init(_ string: String) {
            self.name = String(string.first!)
            self.value = Int(string.replacingOccurrences(of: self.name, with: ""))!
        }
    }
    
    enum Heading {
        case north, south, east, west
        
        var turnedRight: Heading {
            switch self {
            case .north: return .east
            case .south: return .west
            case .east: return .south
            case .west: return .north
            }
        }
    }
    
    struct Ship {
        var x: Int = 0
        var y: Int = 0
    }
    
    struct Waypoint {
        var x: Int = 10
        var y: Int = 1
    }
    
    static func solve() -> Int {
        let actions = input.components(separatedBy: .newlines).map({ Action($0) })
        
        var ship = Ship()
        var heading = Heading.east
        
        for action in actions {
            switch action.name {
            case "N":
                ship.y += action.value
            case "S":
                ship.y -= action.value
            case "E":
                ship.x += action.value
            case "W":
                ship.x -= action.value
            case "L": fallthrough
            case "R":
                let clockwise = action.name == "R"
                let multiplier = clockwise ? 1 : 3
                let turns = multiplier * (action.value / 90)
                
                for _ in 0..<turns {
                    heading = heading.turnedRight
                }
            case "F":
                switch heading {
                case .north:
                    ship.y += action.value
                case .south:
                    ship.y -= action.value
                case .east:
                    ship.x += action.value
                case.west:
                    ship.x -= action.value
                }
            default: fatalError()
            }
        }
        
        return abs(ship.x) + abs(ship.y)
    }
    
    static func solve2() -> Int {
        let actions = input.components(separatedBy: .newlines).map({ Action($0) })
        
        var ship = Ship()
        var waypoint = Waypoint()
        
        func rotateWaypointClockWise() {
            let deltaX = waypoint.x
            let deltaY = waypoint.y
            
            if deltaX >= 0 && deltaY >= 0 {
                // NE -> SE
                waypoint.x = abs(deltaY)
                waypoint.y = -abs(deltaX)
            } else if deltaX >= 0 && deltaY < 0 {
                // SE -> SW
                waypoint.x = -abs(deltaY)
                waypoint.y = -abs(deltaX)
            } else if deltaX < 0 && deltaY < 0 {
                // SW -> NW
                waypoint.x = -abs(deltaY)
                waypoint.y = abs(deltaX)
            } else if deltaX < 0 && deltaY >= 0 {
                // NW -> NE
                waypoint.x = abs(deltaY)
                waypoint.y = abs(deltaX)
            }
        }
        
        for action in actions {
            switch action.name {
            case "N":
                waypoint.y += action.value
            case "S":
                waypoint.y -= action.value
            case "E":
                waypoint.x += action.value
            case "W":
                waypoint.x -= action.value
            case "L": fallthrough
            case "R":
                let clockwise = action.name == "R"
                
                let multiplier = clockwise ? 1 : 3
                let turns = (action.value / 90) * multiplier
                
                for _ in 0..<turns {
                    rotateWaypointClockWise()
                }
            case "F":
                let deltaX = waypoint.x
                let deltaY = waypoint.y
                
                let traveledX = deltaX * action.value
                let traveleldY = deltaY * action.value
                
                ship.x += traveledX
                ship.y += traveleldY
            default: fatalError()
            }
        }
        
        return abs(ship.x) + abs(ship.y)
    }
}
