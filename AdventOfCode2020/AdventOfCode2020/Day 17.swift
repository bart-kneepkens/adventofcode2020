import Foundation

struct Day17 {
    
    static let input = """
    .......#
    ....#...
    ...###.#
    #...###.
    ....##..
    ##.#..#.
    ###.#.#.
    ....#...
    """
    
    static let shortInput = """
    .#.
    ..#
    ###
    """
    
    struct Coordinate: Hashable, Equatable {
        let z, y, x: Int
        
        var neighbors: Set<Coordinate> {
            var set: Set<Coordinate> = Set()
            
            for zDelta in -1...1 {
                for yDelta in -1...1 {
                    for xDelta in -1...1 {
                        set.insert(Coordinate(z: z + zDelta, y: y + yDelta, x: x + xDelta))
                    }
                }
            }
            
            set.remove(self)
            
            return set
        }
    }
    
    struct Coordinate4D: Hashable, Equatable {
        let w, z, y, x: Int
        
        var neighbors: Set<Coordinate4D> {
            var set: Set<Coordinate4D> = Set()
            
            for wDelta in -1...1 {
                for zDelta in -1...1 {
                    for yDelta in -1...1 {
                        for xDelta in -1...1 {
                            set.insert(Coordinate4D(w: w + wDelta, z: z + zDelta, y: y + yDelta, x: x + xDelta))
                        }
                    }
                }
            }
            
            set.remove(self)
            
            return set
        }
    }
    
    static func solve() -> Int {
        var activeCubes: Set<Coordinate> = Set()
        
        input.components(separatedBy: .newlines).enumerated().forEach { (rowIndex, row) in
            row.enumerated().forEach { (charIndex, character) in
                if character == "#" {
                    activeCubes.insert(Coordinate(z: 0, y: rowIndex, x: charIndex))
                }
            }
        }
        
        var gridSize = input.components(separatedBy: .newlines)[0].count
        
        func cycle() {
            let active = activeCubes  // keep separate copy - the changes are happening simultaneous
            
            for z in -gridSize..<gridSize {
                for y in -gridSize..<gridSize {
                    for x in -gridSize..<gridSize {
                        let coordinate = Coordinate(z: z, y: y, x: x)
                        let neighbors = coordinate.neighbors
                        let activeNeighbors = neighbors.filter({ active.contains($0) })
                        
                        if active.contains(coordinate) {
                            if ![2,3].contains(activeNeighbors.count) {
                                activeCubes.remove(coordinate)
                            }
                        } else { // it's an empty space
                            if activeNeighbors.count == 3 {
                                activeCubes.insert(coordinate)
                            }
                        }
                    }
                }
            }
            
            gridSize += 1
        }
        
        for _ in 1...6 {
            cycle()
        }
        
        
        return activeCubes.count
    }
    
    static func solve2() -> Int {
        var activeCubes: Set<Coordinate4D> = Set()
        
        input.components(separatedBy: .newlines).enumerated().forEach { (rowIndex, row) in
            row.enumerated().forEach { (charIndex, character) in
                if character == "#" {
                    activeCubes.insert(Coordinate4D(w: 0, z: 0, y: rowIndex, x: charIndex))
                }
            }
        }
        
        var gridSize = input.components(separatedBy: .newlines)[0].count
        
        func cycle() {
            let active = activeCubes // keep separate copy - the changes are happening simultaneous
            
            for w in -gridSize..<gridSize {
                for z in -gridSize..<gridSize {
                    for y in -gridSize..<gridSize {
                        for x in -gridSize..<gridSize {
                            let coordinate = Coordinate4D(w: w, z: z, y: y, x: x)
                            let neighbors = coordinate.neighbors
                            let activeNeighbors = neighbors.filter({ active.contains($0) })
                            
                            if active.contains(coordinate) {
                                if ![2,3].contains(activeNeighbors.count) {
                                    activeCubes.remove(coordinate)
                                }
                            } else { // it's an empty space
                                if activeNeighbors.count == 3 {
                                    activeCubes.insert(coordinate)
                                }
                            }
                        }
                    }
                }
            }
            
            gridSize += 1
        }
        
        for _ in 1...6 {
            cycle()
        }
        
        return activeCubes.count
    }
}
