import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_midi/flutter_midi.dart';
import 'package:piano/piano.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    load('assets/piano.sf2');
    super.initState();
  }

  void load(String asset) async {
    FlutterMidi().unmute();
    ByteData _byte = await rootBundle.load(asset);
    FlutterMidi().prepare(sf2: _byte);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Piano'),
        centerTitle: true,
      ),
      body: InteractivePiano(
        keyWidth: 60,
        noteRange: NoteRange.forClefs([
          Clef.Treble,
        ]),
        onNotePositionTapped: (position) {
          if (position == NotePosition(note: Note.C, octave: 4)) {
            FlutterMidi().playMidiNote(midi: 60);
          } else if (position ==
              NotePosition(
                  note: Note.C, octave: 4, accidental: Accidental.Sharp)) {
            FlutterMidi().playMidiNote(midi: 61);
          } else if (position == NotePosition(note: Note.D, octave: 4)) {
            FlutterMidi().playMidiNote(midi: 62);
          } else if (position ==
              NotePosition(
                  note: Note.D, octave: 4, accidental: Accidental.Sharp)) {
            FlutterMidi().playMidiNote(midi: 63);
          } else if (position == NotePosition(note: Note.E, octave: 4)) {
            FlutterMidi().playMidiNote(midi: 64);
          } else if (position == NotePosition(note: Note.F, octave: 4)) {
            FlutterMidi().playMidiNote(midi: 65);
          } else if (position ==
              NotePosition(
                  note: Note.F, octave: 4, accidental: Accidental.Sharp)) {
            FlutterMidi().playMidiNote(midi: 66);
          } else if (position == NotePosition(note: Note.G, octave: 4)) {
            FlutterMidi().playMidiNote(midi: 67);
          } else if (position ==
              NotePosition(
                  note: Note.G, octave: 4, accidental: Accidental.Sharp)) {
            FlutterMidi().playMidiNote(midi: 68);
          } else if (position == NotePosition(note: Note.A, octave: 4)) {
            FlutterMidi().playMidiNote(midi: 69);
          } else if (position ==
              NotePosition(
                  note: Note.A, octave: 4, accidental: Accidental.Sharp)) {
            FlutterMidi().playMidiNote(midi: 70);
          } else if (position == NotePosition(note: Note.B, octave: 4)) {
            FlutterMidi().playMidiNote(midi: 71);
          } else if (position == NotePosition(note: Note.C, octave: 5)) {
            FlutterMidi().playMidiNote(midi: 72);
          } else if (position ==
              NotePosition(
                  note: Note.C, octave: 5, accidental: Accidental.Sharp)) {
            FlutterMidi().playMidiNote(midi: 73);
          } else if (position == NotePosition(note: Note.D, octave: 5)) {
            FlutterMidi().playMidiNote(midi: 74);
          } else if (position ==
              NotePosition(
                  note: Note.D, octave: 5, accidental: Accidental.Sharp)) {
            FlutterMidi().playMidiNote(midi: 75);
          } else if (position == NotePosition(note: Note.E, octave: 5)) {
            FlutterMidi().playMidiNote(midi: 76);
          } else if (position == NotePosition(note: Note.F, octave: 5)) {
            FlutterMidi().playMidiNote(midi: 77);
          } else if (position ==
              NotePosition(
                  note: Note.F, octave: 5, accidental: Accidental.Sharp)) {
            FlutterMidi().playMidiNote(midi: 78);
          } else if (position == NotePosition(note: Note.G, octave: 5)) {
            FlutterMidi().playMidiNote(midi: 79);
          } else if (position ==
              NotePosition(
                  note: Note.G, octave: 5, accidental: Accidental.Sharp)) {
            FlutterMidi().playMidiNote(midi: 80);
          } else if (position == NotePosition(note: Note.A, octave: 5)) {
            FlutterMidi().playMidiNote(midi: 81);
          } else if (position ==
              NotePosition(
                  note: Note.A, octave: 5, accidental: Accidental.Sharp)) {
            FlutterMidi().playMidiNote(midi: 82);
          } else if (position == NotePosition(note: Note.B, octave: 5)) {
            FlutterMidi().playMidiNote(midi: 83);
          } else if (position == NotePosition(note: Note.C, octave: 6)) {
            FlutterMidi().playMidiNote(midi: 84);
          }
        },
      ),
    );
  }
}
