import Foundation

public extension MTKNote {
    public enum NaturalName {
        case c, d, e, f, g, a, b
        
        var stringValue: String {
            switch self {
            case .c:
                return "c"
            case .d:
                return "d"
            case .e:
                return "e"
            case .f:
                return "f"
            case .g:
                return "g"
            case .a:
                return "a"
            case .b:
                return "b"
            }
        }
        
        var noteNumber: MTKNoteNumber {
            switch self {
            case .c: return 0
            case .d: return 2
            case .e: return 4
            case .f: return -1
            case .g: return 1
            case .a: return 3
            case .b: return 5
            }
        }
        
        var semitonePosition: Int {
            switch self {
            case .c: return 0
            case .d: return 2
            case .e: return 4
            case .f: return 5
            case .g: return 7
            case .a: return 9
            case .b: return 11
            }
        }
        
        init(from noteNumber: MTKNoteNumber) {
            let trucatedNum = ((noteNumber % 7) + 7) % 7
            switch trucatedNum {
            case  0: self = .c; break
            case  1: self = .g; break
            case  2: self = .d; break
            case  3: self = .a; break
            case  4: self = .e; break
            case  5: self = .b; break
            case  6: self = .f; break
            default: self = .c; break
            }
        }
    }
}
