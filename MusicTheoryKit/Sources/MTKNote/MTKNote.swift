import Foundation

public struct MTKNote {
    public static let order: [NaturalName] = [ .c, .d, .e, .f, .g, .a, .b ]
    
    public var number: MTKNoteNumber
    public var octave: MTKOctave
    
    public init(number: MTKNoteNumber, octave: MTKOctave) {
        self.number = number
        self.octave = octave
    }
    
    public func name(style: NamingStyle = .accidentalSymbol) -> String {
        switch style {
        case .accidentalSymbol:
            return naturalName.stringValue + (accidental?.symbol ?? " \(accidentalDescription)")
        case .accidentalName:
            return naturalName.stringValue + " " + (accidental?.stringValue ?? accidentalDescription)
        }
    }
}

public extension MTKNote {
    public func positionOnStaff(middleLine ref: MTKNote) -> Double {
        let selfNumber = MTKNote.order.index(of: self.natural().naturalName)! + 7 * self.octave
        let refNumber = MTKNote.order.index(of: ref.natural().naturalName)! + 7 * ref.octave
        
        return Double(refNumber - selfNumber) / 2.0
    }
}

public extension MTKNote {
    public var midiNoteNumber: Int {
        return 60 + naturalName.semitonePosition + 12 * (octave - 4) + accidentalNumber
    }
}

public extension MTKNote {
    public func frequency(tuning: Double = 440.0) -> Double {
        return tuning * pow(2.0, Double(self.midiNoteNumber - 69) / 12.0)
    }
}
