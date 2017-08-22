//
//  MTKChord.swift
//  
//
//  Created by Oscar Bouwmans on 21-08-17.
//
//

import Foundation

public class MTKChord: MTKNoteGroup {
    var patterns = MTKPatternList()
    //  PATTERNS
    //  triads
    private static let patternMajorTriad        =   [  0,  4,  1 ]
    private static let patternMinorTriad        =   [  0, -3,  1 ]
    private static let patternDiminishedTriad   =   [  0, -3, -6 ]
    private static let patternAugmentedTriad    =   [  0,  4,  8 ]
    //  sevenths
    private static let dominantSeventh          =   [  0,  4,  1, -2 ]
    private static let majorSeventh             =   [  0,  4,  1,  5 ]
    private static let minorSeventh             =   [  0, -3,  1, -2 ]
    private static let halfDiminished           =   [  0, -3, -6, -2 ]
    private static let diminishedSeventh        =   [  0, -1, -6, -9 ]
    //  misc
    private static let sus4                     =   [  0, -1,  1 ]
    private static let sus2                     =   [  0,  2,  1 ]
}

public extension MTKChord {
    
}
