import 'package:todolist/models/task.dart';
import 'dart:math';

import 'package:faker/faker.dart';

//Task(1, 'Task 1', false, DateTime(2022, 02, 01))

var tasks = List<Task>.generate(
    30,
    (index) =>
        Task(index, faker.person.name(), Random().nextBool(), DateTime.now()));
