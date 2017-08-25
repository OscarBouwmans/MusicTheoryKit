//: Playground - noun: a place where people can play

import Foundation

var note = MTKNote(number: 0, octave: 4)
"\(note.name()) \(note.octave) \(note.midiNoteNumber) \(note.frequency())"

//  NOTE OPERATORS

let fifth = note + .perfectFifth
"\(fifth.name()) \(fifth.octave) \(fifth.midiNoteNumber) \(fifth.frequency())"

fifth > note
fifth == fifth
fifth == note

//  ENHARMONIC OPERATORS
let dSharp = MTKNote(.d, .sharp, octave: 4)
let eFlat = MTKNote(.e, .flat, octave: 4)

dSharp == eFlat  // false; not the same note
dSharp === eFlat // true;  enharmonically the same note

//  CHORDS

var chord = MTKChord(with: MTKChord.majorSeventh, root: note)

chord.invert(.up, times: 2)

chord.notes[0].name()
chord.notes[1].name()
chord.notes[2].name()
chord.notes[3].name()

//  SCALE

var scale = MTKScale(with: MTKScale.harmonicMinor, root: note)

scale.notes[0].name()
scale.notes[1].name()
scale.notes[2].name()
scale.notes[3].name()
scale.notes[4].name()
scale.notes[5].name()
scale.notes[6].name()

//  

let note1 = MTKNote(.c, .doubleFlat, octave: 4)
let note2 = MTKNote(.e, .doubleSharp, octave: 4)
note1.intervalTo(note2)
