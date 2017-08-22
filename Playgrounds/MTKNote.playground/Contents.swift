//: Playground - noun: a place where people can play

import Foundation

var note = MTKNote(number: 0, octave: 4)
"\(note.name()) \(note.octave) \(note.midiNoteNumber) \(note.frequency())"

note.enharmonicShiftToSharps()
"\(note.name()) \(note.octave) \(note.midiNoteNumber) \(note.frequency())"

note.enharmonicShiftToSharps()
"\(note.name()) \(note.octave) \(note.midiNoteNumber) \(note.frequency())"
