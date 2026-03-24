import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgethub/features/tasks/task_model.dart';

// Provides our tasks using standard in-memory modern Riverpod Notifier
final tasksProvider = NotifierProvider<TasksNotifier, List<Task>>(() {
  return TasksNotifier();
});

class TasksNotifier extends Notifier<List<Task>> {

  @override
  List<Task> build() {
    // Default tasks in memory
    return [
      Task(id: '1', title: 'Explore WidgetHub'),
      Task(id: '2', title: 'Learn Riverpod Providers'),
      Task(id: '3', title: 'Build a beautiful UI without SharedPreferences'),
    ];
  }

  String _generateId() => DateTime.now().microsecondsSinceEpoch.toString();

  // Simply creates a new list with the new task added at the top
  void addTask(String title) {
    final newTask = Task(id: _generateId(), title: title);
    state = [newTask, ...state]; 
  }

  // Simply filters out the removed task
  void removeTask(Task task) {
    state = state.where((t) => t.id != task.id).toList();
  }

  // Toggles true/false completion
  void toggleTaskCompletion(Task task) {
    state = state.map((t) {
      if (t.id == task.id) {
        return t.copyWith(isCompleted: !t.isCompleted);
      }
      return t;
    }).toList();
  }
}
