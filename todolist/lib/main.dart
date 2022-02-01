import 'package:flutter/material.dart';
import 'package:todolist/data/tasks.dart';

void main() {
  print(TaskList.list);
  print("je viens du main");
  runApp(const ToDoList());
}

class ToDoList extends StatelessWidget {
  const ToDoList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todo List',
      theme: ThemeData(
        fontFamily: 'SedgwickAve',
        primarySwatch: Colors.yellow,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Todo List'),
        ),
        body: ListView.builder(
          // Let the ListView know how many items it needs to build.
          itemCount: TaskList.list.length,
          // Provide a builder function. This is where the magic happens.
          // Convert each item into a widget based on the type of item it is.
          itemBuilder: (context, index) {
            final item = TaskList.list[index];

            return ListTile(title: Text(item.content));
          },
        ),
      ),
    );
  }
}
