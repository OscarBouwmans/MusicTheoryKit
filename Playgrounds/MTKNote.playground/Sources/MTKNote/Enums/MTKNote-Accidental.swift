import Foundation

public extension MTKNote {
    public enum Accidental {
        case natural
        case sharp, doubleSharp, tripleSharp
        case flat, doubleFlat, tripleFlat
        
        var stringValue: String {
            switch self {
            case .natural:
                return "natural"
                
            case .sharp:
                return "sharp"
            case .doubleSharp:
                return "double sharp"
            case .tripleSharp:
                return "triple sharp"
                
            case .flat:
                return "flat"
            case .doubleFlat:
                return "double flat"
            case .tripleFlat:
                return "triple flat"
            }
        }
        
        var symbol: String? {
            switch self {
            case .natural:
                return "♮"
                
            case .sharp:
                return "♯"
            case .doubleSharp:
                return "𝄪"
                
            case .flat:
                return "♭"
            case .doubleFlat:
                return "𝄫"
                
            case .tripleSharp, .tripleFlat:
                return self.stringValue
            }
        }
        
        var number: Int {
            switch self {
            case .natural:
                return 0
                
            case .sharp:
                return 1
            case .doubleSharp:
                return 2
            case .tripleSharp:
                return 3
                
            case .flat:
                return -1
            case .doubleFlat:
                return -2
            case .tripleFlat:
                return -3
            }
        }
        
        init?(from accidentalNumber: MTKAccidentalNumber) {
            switch accidentalNumber {
            case  0:
                self = .natural
                return
                
            case -1:
                self = .flat
                return
            case -2:
                self = .doubleFlat
                return
            case -3:
                self = .tripleFlat
                return
                
            case  1:
                self = .sharp
                return
            case  2:
                self = .doubleSharp
                return
            case  3:
                self = .tripleSharp
                return
                
            default:
                return nil
            }
        }
    }
}
