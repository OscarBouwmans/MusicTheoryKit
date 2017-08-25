import Foundation

extension MTKNote {
    public static func == (a: MTKNote, b: MTKNote) -> Bool {
        return a.number == b.number && a.octave == b.octave
    }
    public static func != (a: MTKNote, b: MTKNote) -> Bool {
        return !(a == b)
    }
    
    public static func === (a: MTKNote, b: MTKNote) -> Bool {
        return a.midiNoteNumber == b.midiNoteNumber
    }
    public static func !== (a: MTKNote, b: MTKNote) -> Bool {
        return !(a === b)
    }
    
    public static func > (a: MTKNote, b: MTKNote) -> Bool {
        if a.octave == b.octave {
            let aNatName = a.naturalName, bNatName = b.naturalName
            if aNatName == bNatName {
                return a.accidentalNumber > b.accidentalNumber
            }
            return MTKNote.order.index(of: aNatName)! > MTKNote.order.index(of: bNatName)!
        }
        return a.octave > b.octave
    }
    public static func < (a: MTKNote, b: MTKNote) -> Bool {
        if a.octave == b.octave {
            let aNatName = a.naturalName, bNatName = b.naturalName
            if aNatName == bNatName {
                return a.accidentalNumber < b.accidentalNumber
            }
            return MTKNote.order.index(of: aNatName)! < MTKNote.order.index(of: bNatName)!
        }
        return a.octave < b.octave
    }
    public static func >= (a: MTKNote, b: MTKNote) -> Bool {
        return !(a < b)
    }
    public static func <= (a: MTKNote, b: MTKNote) -> Bool {
        return !(a > b)
    }
    
    public static func += (note: inout MTKNote, interval: MTKInterval) {
        note.transpose(.up, by: interval)
    }
    public static func -= (note: inout MTKNote, interval: MTKInterval) {
        note.transpose(.down, by: interval)
    }
    
    public static func + (note: MTKNote, interval: MTKInterval) -> MTKNote {
        return note.transposed(.up, by: interval)
    }
    public static func - (note: MTKNote, interval: MTKInterval) -> MTKNote {
        return note.transposed(.down, by: interval)
    }
}
