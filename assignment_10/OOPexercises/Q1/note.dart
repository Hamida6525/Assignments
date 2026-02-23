class Note {
  String title;
  String content;
  DateTime createdAt;

  Note(this.title, this.content) 
      : createdAt = DateTime.now();

  void display() {
    print("Title: $title");
    print("Content: $content");
    print("Created At: $createdAt");
  }
}