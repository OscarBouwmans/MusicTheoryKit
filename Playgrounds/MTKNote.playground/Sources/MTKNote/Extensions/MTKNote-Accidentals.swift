import Foundation

public extension MTKNote {
    public var naturalName: NaturalName {
        return NaturalName(from: self.number)
    }
    
    public var accidentalNumber: MTKAccidentalNumber {
        return MTKAccidentalNumber(floor(Double(self.number + 1) / 7.0))
    }
    public var accidental: Accidental? {
        return Accidental(from: self.accidentalNumber)
    }
    public var accidentalDescription: String {
        let num = self.accidentalNumber
        if num > 0 {
            return (num == 1 ? "1 sharp" : "\(num) sharps")
        }
        if num < 0 {
            return (num == -1 ? "1 flat" : "\(abs(num)) flats")
        }
        return "natural"
    }
}

public extension MTKNote {
    public mutating func stripAccidentals() {
        self.number -= (self.accidentalNumber * 7)
    }
    public func natural() -> MTKNote {
        var natural = MTKNote(copying: self)
        natural.stripAccidentals()
        return natural
    }
}
