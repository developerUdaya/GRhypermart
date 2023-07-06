import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StudentListPage extends StatelessWidget {
  final List<Student> students = [
    Student('John Doe', 'Computer Science'),
    Student('Jane Smith', 'Mathematics'),
    Student('Alex Johnson', 'Physics'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: students.length,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Text(students[index].name),
          subtitle: Text(students[index].major),
        );
      },
    );
  }
}

class Student {
  final String name;
  final String major;

  Student(this.name, this.major);
}
