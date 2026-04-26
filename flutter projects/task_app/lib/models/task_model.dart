class Task {
  final String title;
  bool completed;
  bool selected;

  Task({required this.title, this.completed = false, this.selected = false});

  Map<String, dynamic> toMap() {
    return {'title': title, 'completed': completed, 'selected': selected};
  }
}
