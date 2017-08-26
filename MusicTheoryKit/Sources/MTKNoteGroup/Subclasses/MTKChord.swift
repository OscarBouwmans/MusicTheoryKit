//
//  MTKChord.swift
//  
//
//  Created by Oscar Bouwmans on 21-08-17.
//
//

import Foundation

public class MTKChord: MTKNoteGroup {
    //  PATTERNS
    //  triads
    public static let majorTriad: MTKPattern = [
        .perfectUnison,
        .majorThird,
        .perfectFifth
    ]
    public static let minorTriad: MTKPattern = [
        .perfectUnison,
        .minorThird,
        .perfectFifth
    ]
    public static let diminishedTriad: MTKPattern = [
        .perfectUnison,
        .minorThird,
        .diminishedFifth
    ]
    public static let augmentedTriad: MTKPattern = [
        .perfectUnison,
        .majorThird,
        .augmentedFifth
    ]
    //  sevenths
    public static let dominantSeventh: MTKPattern = [
        .perfectUnison,
        .majorThird,
        .perfectFifth,
        .minorSeventh
    ]
    public static let majorSeventh: MTKPattern = [
        .perfectUnison,
        .majorThird,
        .perfectFifth,
        .majorSeventh
    ]
    public static let minorSeventh: MTKPattern = [
        .perfectUnison,
        .minorThird,
        .perfectFifth,
        .minorSeventh
    ]
    public static let halfDiminished: MTKPattern = [
        .perfectUnison,
        .minorThird,
        .diminishedFifth,
        .minorSeventh
    ]
    public static let diminishedSeventh: MTKPattern = [
        .perfectUnison,
        .minorThird,
        .diminishedFifth,
        .diminishedSeventh
    ]
    //  misc
    public static let sus4: MTKPattern = [
        .perfectUnison,
        .perfectFourth,
        .perfectFifth
    ]
    public static let sus2: MTKPattern = [
        .perfectUnison,
        .majorSecond,
        .perfectFifth
    ]
}

public extension MTKChord {
    
}
