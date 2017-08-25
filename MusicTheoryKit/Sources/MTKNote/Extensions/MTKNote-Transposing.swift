import Foundation

public extension MTKNote {
    public mutating func transpose(_ direction: MTKTranspositionDirection, by interval: MTKInterval) {
        let oldIndex = MTKNote.order.index(of: self.naturalName)!
        let staffPosOffset = interval.staffPositionOffset
        
        switch direction {
        case .up:
            if oldIndex + staffPosOffset >= MTKNote.order.count {
                self.octave += 1
            }
            
            self.number += interval.rawValue
            break
        case .down:
            if oldIndex - staffPosOffset < 0 {
                self.octave -= 1
            }
            
            self.number -= interval.rawValue
            break
        }
    }
    public mutating func octavate(_ direction: MTKTranspositionDirection, octaves: Int = 1) {
        switch direction {
        case .up:
            self.octave += octaves
        case .down:
            self.octave -= octaves
        }
    }
    
    public func transposed(_ direction: MTKTranspositionDirection, by interval: MTKInterval) -> MTKNote {
        var newNote = MTKNote(copying: self)
        newNote.transpose(direction, by: interval)
        return newNote
    }
    public func octavated(_ direction: MTKTranspositionDirection, octaves: Int = 1) -> MTKNote {
        var newNote = MTKNote(copying: self)
        newNote.octavate(direction, octaves: octaves)
        return newNote
    }
}
