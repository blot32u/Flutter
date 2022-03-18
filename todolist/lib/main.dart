import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todolist/data/tasks_collection.dart';
import 'package:todolist/screens/all_tasks.dart';
import 'package:todolist/screens/one_task.dart';
import 'package:todolist/screens/create_task.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => TasksCollection(),
    child: const TodoList(),
  ));
}

class TodoList extends StatelessWidget {
  const TodoList({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todo List',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        fontFamily: 'Outfit',
      ),
      initialRoute: '/all_tasks',
      routes: {
        '/all_tasks': (context) => const AllTasks(title: 'Liste des tâches'),
        '/one_task': (context) => const OneTask(title: 'Modifier une tâche'),
        '/create_task': (context) => const CreateTask(title: 'Créer une tâche'),
      },
    );
  }
}
