import Foundation

extension MTKNoteGroup {
    public static func += (group: inout MTKNoteGroup, interval: MTKInterval) {
        group.transpose(.up, by: interval)
    }
    public static func -= (group: inout MTKNoteGroup, interval: MTKInterval) {
        group.transpose(.down, by: interval)
    }
    
    public static func == (a: MTKNoteGroup, b: MTKNoteGroup) -> Bool {
        guard a.notes.count == b.notes.count else {
            return false
        }
        
        for i in 0..<a.notes.count {
            guard a.notes[i] == b.notes[i] else {
                return false
            }
        }
        
        return true
    }
    public static func != (a: MTKNoteGroup, b: MTKNoteGroup) -> Bool {
        return !(a == b)
    }
    
    public static func === (a: MTKNoteGroup, b: MTKNoteGroup) -> Bool {
        guard a.notes.count == b.notes.count else {
            return false
        }
        
        for i in 0..<a.notes.count {
            guard a.notes[i] === b.notes[i] else {
                return false
            }
        }
        
        return true
    }
    public static func !== (a: MTKNoteGroup, b: MTKNoteGroup) -> Bool {
        return !(a === b)
    }
}
