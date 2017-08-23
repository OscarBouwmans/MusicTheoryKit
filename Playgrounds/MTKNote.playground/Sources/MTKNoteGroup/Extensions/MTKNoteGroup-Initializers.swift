import Foundation

public extension MTKNoteGroup {
    public convenience init(with pattern: MTKPattern, root: MTKNote) {
        self.init()
        
        for interval in pattern {
            notes.append(root.transposed(.up, by: interval))
        }
        
        self.sort()
    }
}
