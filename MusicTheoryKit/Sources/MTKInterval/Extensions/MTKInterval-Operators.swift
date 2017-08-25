import Foundation

extension MTKInterval {
    public static prefix func - (interval: MTKInterval) -> MTKInterval {
        return interval.inverted()
    }
}
