import 'package:belajar_admin/utils/ColorResources.dart';
import 'package:flutter/material.dart';
class Task extends StatefulWidget {
  const Task({Key? key}) : super(key: key);

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorResources.COLOR_WHITE,
    );
  }
}
