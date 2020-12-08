fileprivate let input = """
jmp +301
acc +27
nop +299
jmp +168
acc +0
acc +48
acc -5
jmp +420
jmp +155
acc -16
acc -15
nop +582
acc -5
jmp +490
acc +10
nop +300
acc -2
acc -1
jmp +252
jmp +2
jmp +234
acc +36
acc +50
jmp +564
jmp +102
jmp +473
acc +37
acc +1
acc +20
jmp +355
acc +28
acc -14
acc +22
jmp +329
acc +44
jmp +1
jmp +23
nop +312
jmp +251
acc +12
acc +39
acc +33
jmp -21
acc +28
acc +14
acc +42
acc +33
jmp +502
jmp +123
acc +24
jmp +11
acc -8
nop +218
nop +516
jmp +244
jmp -36
nop +192
acc -11
jmp +100
jmp +299
jmp +400
acc +29
acc +13
jmp +1
acc +45
jmp +458
acc +6
acc +15
jmp +542
acc +38
acc -15
acc -15
acc -11
jmp +474
acc +0
acc +1
jmp +55
acc +14
acc +13
acc +37
acc -18
jmp +95
jmp -73
acc +25
jmp -54
jmp +413
acc -17
acc +25
acc +22
jmp +405
jmp +151
jmp +1
acc -14
acc +33
acc +30
jmp -86
acc +32
acc -3
acc +26
acc +7
jmp +493
acc +44
jmp +1
nop +357
acc +47
jmp +412
jmp +321
acc -5
jmp +12
acc +18
acc -1
acc +29
jmp +430
acc +35
acc +34
jmp +1
acc -6
jmp +184
acc -12
jmp -36
acc +22
acc -5
acc +14
acc +0
jmp +198
jmp +293
nop +76
acc +8
acc +13
jmp +464
jmp +309
acc -19
acc +27
acc -10
jmp +29
acc -17
jmp -77
acc +49
nop +224
acc +0
jmp +77
acc +35
acc +3
jmp +317
nop +27
acc +6
jmp +164
acc +10
acc +41
acc -2
acc -8
jmp +347
acc +14
nop +148
jmp +302
acc +21
acc +8
jmp +282
acc +3
acc +12
jmp +138
acc -10
jmp +311
acc -6
acc -10
acc +13
jmp +116
acc +31
acc +39
acc +28
jmp +244
nop +59
acc +16
jmp +1
jmp +436
jmp -31
acc -12
acc +43
jmp -135
acc -1
acc +35
acc +50
acc +0
jmp +398
jmp -83
acc +40
acc +26
acc -8
jmp +393
acc +28
acc -7
acc +43
jmp +231
jmp -22
acc -1
acc -18
acc +19
jmp -111
acc +38
acc +21
acc +7
jmp +134
acc +8
acc +18
acc -9
acc -7
jmp +24
acc +5
acc +0
jmp -46
acc +2
acc -12
acc -17
acc +36
jmp -88
nop -71
jmp +181
jmp -15
jmp +52
acc +15
acc +0
jmp -32
acc -6
nop +166
acc +10
acc +38
jmp +123
acc +9
jmp -151
jmp +231
jmp +1
acc +34
jmp +186
jmp +96
acc +48
acc +9
jmp +198
acc +7
acc +35
acc +22
jmp +82
nop +1
nop -156
nop -49
jmp +91
acc +8
acc -17
jmp -53
acc +29
nop +283
acc -2
nop +50
jmp +290
jmp +296
jmp +219
jmp +268
jmp -119
nop +353
jmp -157
acc +21
acc +30
jmp +345
acc -9
jmp -119
acc +0
jmp -196
acc +33
acc +0
acc +1
jmp -248
acc +15
jmp -44
acc +9
acc +46
acc +50
jmp +257
acc -6
acc -16
jmp +320
acc +35
nop -4
jmp -5
acc +30
acc +27
jmp +1
jmp +296
acc +8
acc +40
jmp +210
acc -14
acc +34
acc +42
jmp +173
acc +16
acc +47
acc +11
acc +32
jmp -206
jmp -39
acc +45
jmp +247
acc -17
nop +261
nop -254
acc +48
jmp +62
acc +50
acc +26
acc +1
jmp +130
acc -14
nop +47
acc -9
jmp -276
jmp -104
jmp +135
acc +40
jmp -296
jmp +11
acc +2
acc -17
jmp -238
acc +34
acc +37
jmp -166
nop -205
acc -4
acc +22
jmp +56
acc +1
nop -210
nop -30
acc -18
jmp -250
jmp -107
acc +45
acc +50
acc +3
acc +3
jmp -63
acc +35
jmp +1
acc -5
nop +255
jmp +254
jmp +210
acc +10
acc +7
jmp +207
acc +17
acc +25
nop -22
jmp +62
acc +35
acc +18
acc +22
acc +10
jmp -186
acc +24
acc +32
jmp -31
jmp -131
jmp -337
acc +41
acc -10
acc +42
jmp +207
acc -16
acc -14
nop -225
acc -15
jmp +70
nop -303
acc -10
acc +11
acc +17
jmp +234
acc -8
acc +33
jmp -131
acc -9
acc -12
acc +31
jmp -25
nop -277
acc +22
jmp -273
acc +19
jmp -244
acc -8
nop +220
acc +48
jmp -261
acc +23
acc +11
acc -16
jmp -47
acc +50
acc -9
acc +23
jmp -38
jmp +146
nop -168
jmp -88
acc +37
acc +36
acc +43
acc -7
jmp +147
jmp +1
acc +42
jmp -352
acc +39
jmp +76
acc +47
jmp +88
acc -2
jmp -102
acc +20
jmp +144
acc +47
acc +25
jmp -55
nop -65
jmp -375
acc +8
jmp +161
acc +46
acc +5
acc +16
jmp +53
acc +27
acc +1
jmp -6
jmp -207
acc -6
acc +27
nop +126
jmp -197
jmp -110
jmp +123
acc +13
acc +31
nop +22
acc +41
jmp -127
acc -7
nop -386
acc +0
jmp -65
jmp -306
acc +44
acc +19
acc +42
acc +29
jmp +92
acc +42
nop -156
jmp -56
jmp -346
nop +95
acc -6
acc -19
jmp -292
jmp -443
acc -12
acc -18
jmp +102
nop +35
acc +44
acc +27
nop -122
jmp +97
jmp -382
jmp -85
acc -9
nop -324
jmp -422
acc -9
acc +25
acc +38
acc -3
jmp -298
acc -2
acc +26
acc +14
jmp -252
acc +4
jmp +75
acc +17
nop -208
jmp -235
acc +19
jmp -322
acc +14
acc -3
jmp +124
jmp -221
jmp -9
acc +0
acc +45
acc -3
jmp -376
acc +20
acc -3
acc +17
acc +19
jmp -400
acc -16
acc +25
jmp -37
jmp -317
acc +31
acc +19
acc +24
acc +9
jmp -181
acc +35
jmp -488
acc -13
acc +26
acc -2
jmp -338
acc -1
acc +17
acc +44
nop -262
jmp -86
acc +17
acc -1
acc +23
jmp +79
acc -5
acc +18
jmp +1
acc +12
jmp -127
acc +1
acc +35
acc -10
acc +14
jmp -352
acc +39
nop +67
jmp -290
acc -13
jmp +41
jmp -150
jmp -121
acc +7
jmp -331
acc +42
nop -389
acc +4
jmp -7
acc -17
acc -8
acc -4
jmp -209
acc +42
acc +39
acc +43
jmp -306
acc -18
acc -16
acc +13
jmp -414
acc +3
jmp -442
nop +41
acc -12
jmp -194
jmp -503
acc -18
acc +35
acc -4
acc +18
jmp -393
nop -348
acc -7
jmp -521
acc +48
acc -19
acc -3
acc +44
jmp +2
jmp -126
nop -474
acc -9
acc -2
acc +35
jmp -587
jmp -328
acc -14
nop -468
acc +39
jmp -157
jmp -538
acc +0
nop -264
acc +19
nop -266
jmp -91
acc +20
acc +14
jmp -329
acc -11
acc +8
jmp -219
jmp -320
acc +10
acc +49
nop -603
acc +49
jmp -344
nop -356
nop -93
acc +27
acc +24
jmp -482
nop -126
nop -345
acc +6
acc +3
jmp +1
""".components(separatedBy: .newlines)

let shortInput = """
nop +0
acc +1
jmp +4
acc +3
jmp -3
acc -99
acc +1
jmp -4
acc +6
""".components(separatedBy: .newlines)

struct Day8 {
    typealias Instruction = (operation: String, argument: Int)
    
    static var inputInstructions: [Instruction] {
        input.map { inputString -> Instruction in
            let components = inputString.components(separatedBy: " ")
            let operation = components[0]
            let argument = Int(components[1])!
            return (operation, argument)
        }
    }
    
    enum Finish {
        case infiniteLoop(Int)
        case terminated(Int)
    }
    
    fileprivate class GameConsole {
        private var accumulator: Int = 0
        private var instructionPointer: Int
        private var visited: Set<Int> = Set()
        private var isRoot: Bool
        
        init(instructionPointer: Int = 0, isRoot: Bool = true) {
            self.instructionPointer = instructionPointer
            self.isRoot = isRoot
        }
        
        private func terminatesGracefullyFrom(instructionPointer pointer: Int, in instructions: [Instruction]) -> Int? {
            let child = GameConsole(instructionPointer: pointer, isRoot: false)
            
            switch child.run(instructions) {
            case .infiniteLoop(_):
                return nil
            case .terminated(let acc):
                return self.accumulator + acc
            }
        }
        
        func run(_ instructions: [Instruction]) -> Finish {
            while !self.visited.contains(instructionPointer) {
                guard instructions.count > instructionPointer else { return .terminated(accumulator) }
                
                let instruction = instructions[instructionPointer]
                
                self.visited.insert(instructionPointer)
                
                if instruction.operation == "acc" {
                    self.accumulator += instruction.argument
                    self.instructionPointer += 1
                } else if instruction.operation == "jmp" {
                    if isRoot {
                        // Attempt to do nop
                        let nextInstructionPointer = instructionPointer + 1
                        if let totalAccumulatorValue = self.terminatesGracefullyFrom(instructionPointer: nextInstructionPointer, in: instructions) {
                            return .terminated(totalAccumulatorValue)
                        }
                    }
                    
                    self.instructionPointer += instruction.argument
                } else if instruction.operation == "nop" {
                    if isRoot {
                        // Attempt to do jmp
                        let nextInstructionPointer = instructionPointer + instruction.argument
                        
                        if let totalAccumulatorValue = self.terminatesGracefullyFrom(instructionPointer: nextInstructionPointer, in: instructions) {
                            return .terminated(totalAccumulatorValue)
                        }
                    }
                    
                    self.instructionPointer += 1
                } else {
                    fatalError("unknown operation \(instruction.operation)")
                }
            }
            return .infiniteLoop(accumulator)
        }
        
    }
    
    static func solve() -> Int {
        let console = GameConsole(isRoot: false)
        let result = console.run(inputInstructions)
        switch result {
        case .infiniteLoop(let acc): return acc
        case .terminated(_): return -1
        }
    }
    
    static func solve2() -> Int {
        let console = GameConsole()
        let result = console.run(inputInstructions)
        switch result {
        case .infiniteLoop(_): return -1
        case .terminated(let acc): return acc
        }
    }
}
