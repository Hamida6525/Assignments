import 'package:flutter/material.dart';
import 'package:task_app/widgets/empty_page.dart';
import 'package:task_app/widgets/task_card.dart';
import 'package:task_app/widgets/task_input_field.dart';

class TaskAppHome extends StatefulWidget {
  const TaskAppHome({super.key});

  @override
  State<TaskAppHome> createState() => _TaskAppHomeState();
}

class _TaskAppHomeState extends State<TaskAppHome> {
  final TextEditingController _taskController = TextEditingController();
  final List<Map<String, dynamic>> _tasks = [];
  final bool _isEditMode = false;

  @override
  void dispose() {
    _taskController.dispose();
    super.dispose();
  }

  void _addTask() {
    if (_taskController.text.trim().isNotEmpty) {
      setState(() {
        _tasks.add({
          'title': _taskController.text.trim(),
          'completed': false,
          'selected': false,
        });
        _taskController.clear();
      });
    }
  }

  void _deleteTask(int index) {
    setState(() {
      _tasks.removeAt(index);
    });
  }

  void _toggleTaskComplete(int index) {
    setState(() {
      _tasks[index]['completed'] = !_tasks[index]['completed'];
    });
  }

  void _toggleTaskSelected(int index) {
    setState(() {
      _tasks[index]['selected'] = !_tasks[index]['selected'];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.tealAccent,
        title: const Text(
          'My Tasks',
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: _tasks.isEmpty
          ? const EmptyPage()
          : ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: _tasks.length,
              itemBuilder: (context, index) {
                return TaskCard(
                  task: _tasks[index],
                  isEditMode: _isEditMode,
                  onComplete: () => _toggleTaskComplete(index),
                  onSelected: () => _toggleTaskSelected(index),
                  onDelete: () => _deleteTask(index),
                );
              },
            ),
      bottomNavigationBar: TaskInputField(
        controller: _taskController,
        onAddTask: _addTask,
      ),
    );
  }
}
