//: Playground - noun: a place where people can play

import Foundation

var note = MTKNote(number: 0, octave: 4)
"\(note.name()) \(note.octave) \(note.midiNoteNumber) \(note.frequency())"

var chord = MTKChord(with: MTKChord.majorSeventh, root: note)

chord.invert(.up, times: 2)

chord.notes[0].name()
chord.notes[1].name()
chord.notes[2].name()
chord.notes[3].name()

var scale = MTKScale(with: MTKScale.harmonicMinor, root: note)

scale.notes[0].name()
scale.notes[1].name()
scale.notes[2].name()
scale.notes[3].name()
scale.notes[4].name()
scale.notes[5].name()
scale.notes[6].name()
