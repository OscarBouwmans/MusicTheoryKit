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
}
