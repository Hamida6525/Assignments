/*1. Notes App – Organize Your Notes
You are building a simple notes app where users can write and manage their notes.
- Each note should have a title, some content, and the date it was created.
- The app should allow creating new notes.
- The app should allow listing all notes.
- The app should allow searching for a note by its title.*/



import 'noteApp.dart';

void main() {
  NotesApp app = NotesApp();

  app.createNote("Shopping List", "Buy milk and bread");
  app.createNote("Meeting", "Project meeting at 5 PM");

  print("All Notes:");
  app.listAllNotes();

  var result = app.searchByTitle("shopping list");
  if (result != null) {
    result.display();
  } else {
    print("Note not found.");
  }
}




