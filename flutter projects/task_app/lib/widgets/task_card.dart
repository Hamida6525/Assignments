import 'package:flutter/material.dart';

class TaskCard extends StatelessWidget {
  final Map<String, dynamic> task;
  final bool isEditMode;
  final VoidCallback onComplete;
  final VoidCallback onSelected;
  final VoidCallback onDelete;

  const TaskCard({
    super.key,
    required this.task,
    required this.isEditMode,
    required this.onComplete,
    required this.onSelected,
    required this.onDelete,
  }) ;

  @override
  Widget build(BuildContext context) {
    final isSelected = task['selected'] ?? false;

    return GestureDetector(
      child: Card(
        elevation: 2,
        margin: const EdgeInsets.only(bottom: 12),
        color: isSelected ? Colors.red.shade50 : Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: BorderSide(
            color: isSelected ? Colors.red.shade200 : Colors.transparent,
            width: 1.5,
          ),
        ),
        child: ListTile(
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 12,
          ),
          leading: _buildLeadingCheckbox(),
          title: Text(
            task['title'],
            style: TextStyle(
              fontSize: 16,
              decoration: task['completed'] ? TextDecoration.lineThrough : null,
              color: task['completed'] ? Colors.grey[400] : Colors.black87,
            ),
          ),
          trailing: IconButton(
            icon: Icon(
              Icons.delete,
              color: isSelected ? Colors.red : Colors.grey[400],
            ),
            onPressed: onDelete,
          ),
        ),
      ),
    );
  }

  Widget _buildLeadingCheckbox() {
    if (!isEditMode) {
      return Checkbox(
        value: task['completed'],
        onChanged: (_) => onComplete(),
        activeColor: const Color(0xFFA8D8D8),
      );
    } else {
      return Checkbox(
        value: task['selected'],
        onChanged: (_) => onSelected(),
        activeColor: Colors.red,
        side: const BorderSide(color: Colors.red),
      );
    }
  }
}
