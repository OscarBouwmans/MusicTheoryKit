//
//  MTKScale.swift
//  
//
//  Created by Oscar Bouwmans on 21-08-17.
//
//

import Foundation

public class MTKScale: MTKNoteGroup {
    //  PATTERNS
    //  major and minor
    public static let major: MTKPattern = [
        .perfectUnison,
        .majorSecond,
        .majorThird,
        .perfectFourth,
        .perfectFifth,
        .majorSixth,
        .majorSeventh
    ]
    public static let naturalMinor: MTKPattern = [
        .perfectUnison,
        .majorSecond,
        .minorThird,
        .perfectFourth,
        .perfectFifth,
        .minorSixth,
        .minorSeventh
    ]
    public static let melodicMinor: MTKPattern = [
        .perfectUnison,
        .majorSecond,
        .minorThird,
        .perfectFourth,
        .perfectFifth,
        .majorSixth,
        .majorSeventh
    ]
    public static let harmonicMinor: MTKPattern = [
        .perfectUnison,
        .majorSecond,
        .minorThird,
        .perfectFourth,
        .perfectFifth,
        .minorSixth,
        .majorSeventh
    ]
    //  church
    public static var ionian: MTKPattern {
        return self.major
    }
    public static let dorian: MTKPattern = [
        .perfectUnison,
        .majorSecond,
        .minorThird,
        .perfectFourth,
        .perfectFifth,
        .majorSixth,
        .minorSeventh
    ]
    public static let phrygian: MTKPattern = [
        .perfectUnison,
        .minorSecond,
        .minorThird,
        .perfectFourth,
        .perfectFifth,
        .minorSixth,
        .minorSeventh
    ]
    public static let lydian: MTKPattern = [
        .perfectUnison,
        .majorSecond,
        .majorThird,
        .augmentedFourth,
        .perfectFifth,
        .majorSixth,
        .majorSeventh
    ]
    public static let mixolydian: MTKPattern = [
        .perfectUnison,
        .majorSecond,
        .majorThird,
        .perfectFourth,
        .perfectFifth,
        .majorSixth,
        .minorSeventh
    ]
    public static var aeolian: MTKPattern {
        return self.melodicMinor
    }
    public static let locrian: MTKPattern = [
        .perfectUnison,
        .diminishedSecond,
        .minorThird,
        .perfectFourth,
        .diminishedFifth,
        .minorSixth,
        .minorSeventh
    ]
    
    //  pentatonic
    public static let pentatonicMajor: MTKPattern = [
        .perfectUnison,
        .majorSecond,
        .majorThird,
        .perfectFifth,
        .majorSixth
    ]
    public static let pentatonicMinor: MTKPattern = [
        .perfectUnison,
        .minorThird,
        .perfectFourth,
        .perfectFifth,
        .minorSeventh
    ]
}

public extension MTKScale {
    
}
