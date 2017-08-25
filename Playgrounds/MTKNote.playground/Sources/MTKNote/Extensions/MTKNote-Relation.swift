import Foundation

public extension MTKNote {
    public func intervalTo(_ other: MTKNote) -> MTKInterval? {
        return MTKInterval(rawValue: other.number - self.number)
    }
}
