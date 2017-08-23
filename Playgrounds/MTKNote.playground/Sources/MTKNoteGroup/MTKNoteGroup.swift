//
//  MTKNoteGroup.swift
//  
//
//  Created by Oscar Bouwmans on 21-08-17.
//
//

import Foundation

public class MTKNoteGroup {
    public var notes: [MTKNote]
    public var sortingMethod: SortingMethod = .noteName {
        didSet {
            self.sort()
        }
    }
    
    init() {
        self.notes = []
    }
}
