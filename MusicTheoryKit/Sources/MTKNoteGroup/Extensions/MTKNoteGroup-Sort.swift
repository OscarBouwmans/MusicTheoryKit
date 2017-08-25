import Foundation

public extension MTKNoteGroup {
    public enum SortingMethod {
        case noteName, pitch
    }
    
    public func sort(by method: SortingMethod) {
        switch method {
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
        return a < b
    }
}
