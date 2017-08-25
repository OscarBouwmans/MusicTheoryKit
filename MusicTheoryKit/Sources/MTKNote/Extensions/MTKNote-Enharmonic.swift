import Foundation

public extension MTKNote {
    public mutating func enharmonicShiftToSharps() {
        let oldIndex = MTKNote.order.index(of: self.naturalName)!
        let staffPosOffset = -1
        if oldIndex + staffPosOffset < 0 {
            self.octave -= 1
        }
        
        self.number += 12
    }
    public mutating func enharmonicShiftToFlats() {
        let oldIndex = MTKNote.order.index(of: self.naturalName)!
        let staffPosOffset = 1
        if oldIndex + staffPosOffset >= MTKNote.order.count {
            self.octave += 1
        }
        
        self.number -= 12
    }
    
    public func isEnharmonicEquivalent(of other: MTKNote) -> Bool {
        return self.midiNoteNumber == other.midiNoteNumber
    }
}
