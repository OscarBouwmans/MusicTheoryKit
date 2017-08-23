//
//  MTKInterval.swift
//  
//
//  Created by Oscar Bouwmans on 22-08-17.
//
//

import Foundation

public enum MTKInterval: Int {
    //  UNISON
    case perfectUnison = 0
    case augmentedUnison = 7
    
    //  SECOND
    case diminishedSecond = -12
    case minorSecond = -5
    case majorSecond = 2
    case augmentedSecond = 9
    
    //  THIRD
    case diminishedThird = -10
    case minorThird = -3
    case majorThird = 4
    case augmentedThird = 11
    
    //  FOURTH
    case diminishedFourth = -8
    case perfectFourth = -1
    case augmentedFourth = 6
    
    //  FIFTH
    case diminishedFifth = -6
    case perfectFifth = 1
    case augmentedFifth = 8
    
    //  SIXTH
    case diminishedSixth = -11
    case minorSixth = -4
    case majorSixth = 3
    case augmentedSixth = 10
    
    //  SEVENTH
    case diminishedSeventh = -9
    case minorSeventh = -2
    case majorSeventh = 5
    case augmentedSeventh = 12
    
    //  OCTAVE
    case diminishedOctave = -7
}

extension MTKInterval {
    var staffPositionOffset: Int {
        switch self {
        case .perfectUnison, .augmentedUnison:
            return 0
        case .diminishedSecond, .minorSecond, .majorSecond, .augmentedSecond:
            return 1
        case .diminishedThird, .minorThird, .majorThird, .augmentedThird:
            return 2
        case .diminishedFourth, .perfectFourth, .augmentedFourth:
            return 3
        case .diminishedFifth, .perfectFifth, .augmentedFifth:
            return 4
        case .diminishedSixth, .minorSixth, .majorSixth, .augmentedSixth:
            return 5
        case .diminishedSeventh, .minorSeventh, .majorSeventh, .augmentedSeventh:
            return 6
        case .diminishedOctave:
            return 7
        }
    }
}

public extension MTKInterval {
    mutating func invert() {
        self = MTKInterval(rawValue: -self.rawValue)!
    }
    func inverted() -> MTKInterval {
        return MTKInterval(rawValue: -self.rawValue)!
    }
}

public enum MTKTranspositionDirection {
    case up, down
}
