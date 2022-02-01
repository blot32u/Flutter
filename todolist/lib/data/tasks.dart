import 'package:flutter/material.dart';
import 'package:faker/faker.dart';
import 'package:todolist/models/Task.dart';

main() {
  var faker = Faker();
}

class TaskList {
  static List list = List<Task>.generate(
      15, (int index) => Task(5, faker.person.name(), true, DateTime.now()));
}
