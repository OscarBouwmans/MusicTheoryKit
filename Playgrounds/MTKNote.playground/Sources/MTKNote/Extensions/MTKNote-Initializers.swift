import Foundation

public extension MTKNote {
    public init(note: NaturalName, accidental: Accidental, octave: MTKOctave) {
        self.number = note.noteNumber + 7 * accidental.number
        self.octave = octave
    }
    
    public init(copying other: MTKNote) {
        self.number = other.number
        self.octave = other.octave
    }
}
