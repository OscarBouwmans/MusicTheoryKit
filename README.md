# MusicTheoryKit
This document is a short introduction to this little project I’ve been working on. It’s not very detailed, but should give a good impression of wether this code is interesting for your needs. Please contact me if you have any questions at contact@oscarbouwmans.nl. 

## Quick About
MusicTheoryKit lets you deal with music theory programmatically. Currently, that means things like: transposing notes, determine intervals, calculating frequencies and MIDI notes. Mostly pitch related functionality in the westerm music system (12 tones). Rhythm funcionalities may be added later, but no plans for that at the moment.

## Circle of Fifths
The [circle of fifths](https://en.wikipedia.org/wiki/Circle_of_fifths) is the basis of MusicTheoryKit. A note is defined as a number along the circle of fifths, relative to C, counting clockwise. For example, `D` = `2`, `Ab` = `-4`. An interval is defined as a number representing how many clockwise steps should be taken on the circle of fifths. For example, from the `D` to the `Ab` would be a `-6` interval, also known as a *diminished fifth*.

In MusicTheoryKit this circle is not exactly a cicle, however, as it does not loop around into enharmonic equivalents, but rather continues into double sharps, triple sharps, etc., and similarly into the flats the other way.

## Types

### MTKNote
    struct MTKNote

### MTKInterval
    enum MTKInterval: Int

### MTKNoteGroup
    class MTKNoteGroup
    class MTKChord: MTKNoteGroup
    class MTKScale: MTKNoteGroup 

## Transposition
`MTKNote`s can be transposed in place using the mutating `.transpose` method:
    var note = MTKNote(.c, .natural, octave: 4)
    note.name() // C♮
    
    note.transpose(.up, by: .perfectFifth) // => G
    note.name() // G♮
    
    note.transpose(.down, by: .majorThird)
    note.name() // E♭

Alternatively, plus and minus operators can be used:
    var note = MTKNote(.f, .sharp, octave: 4)
    note.name() // F♯
    
    note += .majorThird
    note.name() // A♯
    
    note -= .augmentedFourth
    note.name() // E♮

Transposing a note an octave up or down is done via `.octavate`:
    var note = MTKNote(.g, .natural, octave: 4)
    note.octavate(.up)
    note.octave // 5
    note.octavate(.down, octaves: 3)
    note.octave // 2

Both `.transpose` and `.octavate` have their non-mutating siblings `.transposed` and `.octavated` respectively, returning a new `MTKNote` that has been transposed or octavated relative to the note the methods were called from.
