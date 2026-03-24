import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgethub/features/tasks/task_model.dart';
import 'package:widgethub/features/tasks/task_provider.dart';

// ConsumerWidget handles rebuilding when Riverpod providers update
class TaskScreen extends ConsumerStatefulWidget {
  const TaskScreen({super.key});

  @override
  ConsumerState<TaskScreen> createState() => _TaskScreenState();
}

class _TaskScreenState extends ConsumerState<TaskScreen> {
  final TextEditingController _taskController = TextEditingController();
  final TextEditingController _searchController = TextEditingController();
  
  String _searchQuery = '';

  void _addTask() {
    final title = _taskController.text.trim();
    if (title.isEmpty) return;

    // Use our very simple Notifier to add the task
    ref.read(tasksProvider.notifier).addTask(title);

    _taskController.clear();
  }

  @override
  Widget build(BuildContext context) {
    // Watch automatically rebuilds this entire screen when state updates
    final tasks = ref.watch(tasksProvider);
    
    // Simple filter logic right here in the UI
    List<Task> displayTasks = tasks;
    if (_searchQuery.isNotEmpty) {
      displayTasks = displayTasks
          .where((t) => t.title.toLowerCase().contains(_searchQuery))
          .toList();
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Tasks'),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(60),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _searchController,
              decoration: InputDecoration(
                hintText: 'Search tasks...',
                prefixIcon: const Icon(Icons.search),
                filled: true,
                fillColor: Theme.of(context).cardColor,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),
              ),
              onChanged: (val) {
                setState(() {
                  _searchQuery = val.toLowerCase();
                });
              },
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          // Input field for new tasks
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _taskController,
                    decoration: const InputDecoration(
                      hintText: 'New task...',
                    ),
                    onSubmitted: (_) => _addTask(),
                  ),
                ),
                const SizedBox(width: 16),
                FloatingActionButton(
                  onPressed: _addTask,
                  child: const Icon(Icons.add),
                ),
              ],
            ),
          ),
          
          // Absolute simplest Task List View! (No AnimatedList complexity)
          Expanded(
            child: ListView.builder(
              itemCount: displayTasks.length,
              itemBuilder: (context, index) {
                final task = displayTasks[index];
                
                // Very basic Dismissible with left & right swipe actions
                return Dismissible(
                  key: ValueKey(task.id),
                  background: Container(
                    color: Colors.green, // Swipe Right = Complete
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: const Icon(Icons.check, color: Colors.white),
                  ),
                  secondaryBackground: Container(
                    color: Colors.red, // Swipe Left = Delete
                    alignment: Alignment.centerRight,
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: const Icon(Icons.delete, color: Colors.white),
                  ),
                  confirmDismiss: (direction) async {
                    if (direction == DismissDirection.startToEnd) {
                      // Mark complete, don't delete from screen
                      ref.read(tasksProvider.notifier).toggleTaskCompletion(task);
                      return false; 
                    }
                    // Delete unconditionally
                    return true; 
                  },
                  onDismissed: (direction) {
                    if (direction == DismissDirection.endToStart) {
                      ref.read(tasksProvider.notifier).removeTask(task);
                    }
                  },
                  child: Card(
                    margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: ListTile(
                      leading: Checkbox(
                        value: task.isCompleted,
                        onChanged: (_) => ref.read(tasksProvider.notifier).toggleTaskCompletion(task),
                      ),
                      title: Text(
                        task.title,
                        style: TextStyle(
                          decoration: task.isCompleted ? TextDecoration.lineThrough : null,
                          color: task.isCompleted ? Theme.of(context).disabledColor : null,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
