import 'note.dart';

class NotesApp {
  List<Note> _notes = [];


  void createNote(String title, String content) {
    _notes.add(Note(title, content));
  }

 
  void listAllNotes() {
    if (_notes.isEmpty) {
      print("No notes available.");
      return;
    }

    for (var note in _notes) {
      note.display();
    }
  }


  Note? searchByTitle(String title) {
    for (var note in _notes) {
      if (note.title.toLowerCase() == title.toLowerCase()) {
        return note;
      }
    }
    return null;
  }
}
