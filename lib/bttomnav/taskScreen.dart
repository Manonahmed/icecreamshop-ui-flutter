import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TaskScreen extends StatelessWidget {
  const TaskScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "New task",
        style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
      ),
    );
  }
}
