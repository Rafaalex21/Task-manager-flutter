import 'package:first_flutter_project/data/task_inherited.dart';
import 'package:first_flutter_project/screens/form_screen.dart';
import 'package:flutter/material.dart';

import '../components/Task.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({Key? key}) : super(key: key);

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        title: Text('Tarefas'),
      ),
      body: ListView(
        children: TaskInherited.of(context).tasklist,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => FormScreen()));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
