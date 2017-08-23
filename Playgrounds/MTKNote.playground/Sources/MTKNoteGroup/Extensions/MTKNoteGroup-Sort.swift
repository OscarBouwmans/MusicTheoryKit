import Foundation

public extension MTKNoteGroup {
    public enum SortingMethod {
        case noteName, pitch
    }
    
    public func sort() {
        switch sortingMethod {
        case .noteName:
            notes.sort(by: isSortedByNoteName)
        case .pitch:
            notes.sort(by: isSortedByPitch)
        }
    }
    
    private func isSortedByPitch(_ a: MTKNote, _ b: MTKNote) -> Bool {
        let aMidiNum = a.midiNoteNumber, bMidiNum = b.midiNoteNumber
        if aMidiNum == bMidiNum {
            return isSortedByNoteName(a, b)
        }
        return aMidiNum < bMidiNum
    }
    private func isSortedByNoteName(_ a: MTKNote, _ b: MTKNote) -> Bool {
        if a.octave == b.octave {
            let aNatName = a.naturalName, bNatName = b.naturalName
            if aNatName == bNatName {
                return a.accidentalNumber < b.accidentalNumber
            }
            return MTKNote.order.index(of: aNatName)! < MTKNote.order.index(of: bNatName)!
        }
        return a.octave < b.octave
    }
}
