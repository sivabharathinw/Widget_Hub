import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgethub/features/tasks/task_model.dart';


final tasksProvider = NotifierProvider<TasksNotifier, List<Task>>(() {
  return TasksNotifier();
});

class TasksNotifier extends Notifier<List<Task>> {

  @override
  List<Task> build() {

    return [
      Task(id: '1', title: 'Explore WidgetHub'),
      Task(id: '2', title: 'Learn Riverpod Providers'),
      Task(id: '3', title: 'Build a beautiful UI without SharedPreferences'),
    ];
  }

  String _generateId() => DateTime.now().microsecondsSinceEpoch.toString();


  void addTask(String title) {
    final newTask = Task(id: _generateId(), title: title);
    state = [newTask, ...state]; 
  }


  void removeTask(Task task) {
    state = state.where((t) => t.id != task.id).toList();
  }

  void toggleTaskCompletion(Task task) {
    state = state.map((t) {
      if (t.id == task.id) {
        return t.copyWith(isCompleted: !t.isCompleted);
      }
      return t;
    }).toList();
  }
}
