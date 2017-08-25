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
    case doublyAugmentedUnison = 14
    case triplyAugmentedUnison = 21
    case quadruplyAugmentedUnison = 28
    
    //  SECOND
    case quadruplyDiminishedSecond = -33
    case triplyDiminishedSecond = -26
    case doublyDiminishedSecond = -19
    case diminishedSecond = -12
    case minorSecond = -5
    case majorSecond = 2
    case augmentedSecond = 9
    case doublyAugmentedSecond = 16
    case triplyAugmentedSecond = 23
    case quadruplyAugmentedSecond = 30
    
    //  THIRD
    case quadruplyDiminishedThird = -31
    case triplyDiminishedThird = -24
    case doublyDiminishedThird = -17
    case diminishedThird = -10
    case minorThird = -3
    case majorThird = 4
    case augmentedThird = 11
    case doublyAugmentedThird = 18
    case triplyAugmentedThird = 25
    case quadruplyAugmentedThird = 32
    
    //  FOURTH
    case quadruplyDiminishedFourth = -29
    case triplyDiminishedFourth = -22
    case doublyDiminishedFourth = -15
    case diminishedFourth = -8
    case perfectFourth = -1
    case augmentedFourth = 6
    case doublyAugmentedFourth = 13
    case triplyAugmentedFourth = 20
    case quadruplyAugmentedFourth = 27
    
    //  FIFTH
    case quadruplyDiminishedFifth = -27
    case triplyDiminishedFifth = -20
    case doublyDiminishedFifth = -13
    case diminishedFifth = -6
    case perfectFifth = 1
    case augmentedFifth = 8
    case doublyAugmentedFifth = 15
    case triplyAugmentedFifth = 22
    case quadruplyAugmentedFifth = 29
    
    //  SIXTH
    case quadruplyDiminishedSixth = -32
    case triplyDiminishedSixth = -25
    case doublyDiminishedSixth = -18
    case diminishedSixth = -11
    case minorSixth = -4
    case majorSixth = 3
    case augmentedSixth = 10
    case doublyAugmentedSixth = 17
    case triplyAugmentedSixth = 24
    case quadruplyAugmentedSixth = 31
    
    //  SEVENTH
    case quadruplyDiminishedSeventh = -30
    case triplyDiminishedSeventh = -23
    case doublyDiminishedSeventh = -16
    case diminishedSeventh = -9
    case minorSeventh = -2
    case majorSeventh = 5
    case augmentedSeventh = 12
    case doublyAugmentedSeventh = 19
    case triplyAugmentedSeventh = 26
    case quadruplyAugmentedSeventh = 33
    
    //  OCTAVE
    case quadruplyDiminishedOctave = -28
    case triplyDiminishedOctave = -21
    case doublyDiminishedOctave = -14
    case diminishedOctave = -7
}

extension MTKInterval {
    var staffPositionOffset: Int {
        switch self {
        case .perfectUnison, .augmentedUnison, .doublyAugmentedUnison, .triplyAugmentedUnison, .quadruplyAugmentedUnison:
            return 0
        case .quadruplyDiminishedSecond, .triplyDiminishedSecond, .doublyDiminishedSecond, .diminishedSecond, .minorSecond, .majorSecond, .augmentedSecond, .doublyAugmentedSecond, .triplyAugmentedSecond, .quadruplyAugmentedSecond:
            return 1
        case .quadruplyDiminishedThird, .triplyDiminishedThird, .doublyDiminishedThird, .diminishedThird, .minorThird, .majorThird, .augmentedThird, .doublyAugmentedThird, .triplyAugmentedThird, .quadruplyAugmentedThird:
            return 2
        case .quadruplyDiminishedFourth, .triplyDiminishedFourth, .doublyDiminishedFourth, .diminishedFourth, .perfectFourth, .augmentedFourth, .doublyAugmentedFourth, .triplyAugmentedFourth, .quadruplyAugmentedFourth:
            return 3
        case .quadruplyDiminishedFifth, .triplyDiminishedFifth, .doublyDiminishedFifth, .diminishedFifth, .perfectFifth, .augmentedFifth, .doublyAugmentedFifth, .triplyAugmentedFifth, .quadruplyAugmentedFifth:
            return 4
        case .quadruplyDiminishedSixth, .triplyDiminishedSixth, .doublyDiminishedSixth, .diminishedSixth, .minorSixth, .majorSixth, .augmentedSixth, .doublyAugmentedSixth, .triplyAugmentedSixth, .quadruplyAugmentedSixth:
            return 5
        case .quadruplyDiminishedSeventh, .triplyDiminishedSeventh, .doublyDiminishedSeventh, .diminishedSeventh, .minorSeventh, .majorSeventh, .augmentedSeventh, .doublyAugmentedSeventh, .triplyAugmentedSeventh, .quadruplyAugmentedSeventh:
            return 6
        case .quadruplyDiminishedOctave, .triplyDiminishedOctave, .doublyDiminishedOctave, .diminishedOctave:
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
