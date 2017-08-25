import Foundation

public extension MTKNoteGroup {
    public func transpose(_ direction: MTKTranspositionDirection, by interval: MTKInterval) {
        for (i, _) in notes.enumerated() {
            notes[i].transpose(direction, by: interval)
        }
    }
    
    public func octavate(_ direction: MTKTranspositionDirection, octaves: Int = 1) {
        for (i, _) in notes.enumerated() {
            notes[i].octavate(direction, octaves: octaves)
        }
    }
    
    public func invert(_ direction: MTKTranspositionDirection, times: Int = 1) {
        guard notes.count > 0 else {
            return
        }
        
        guard times > 0 else {
            return
        }
        
        for _ in 0..<times {
            switch direction {
            case .up:
                var note = notes.removeFirst()
                note.octavate(.up)
                notes.append(note)
            case .down:
                var note = notes.removeLast()
                note.octavate(.down)
                notes.insert(note, at: 0)
            }
        }
    }
}
