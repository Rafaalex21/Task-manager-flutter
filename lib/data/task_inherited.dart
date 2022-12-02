
import 'package:first_flutter_project/components/Task.dart';
import 'package:flutter/material.dart';

class TaskInherited extends InheritedWidget {
  TaskInherited({
    Key? key,
    required Widget child,
  }) : super(key: key, child: child);
  final List<Task> tasklist = [Task('Aprender Flutter', 'assets/images/Eu7m692XIAEvxxP.png', 2),
    Task(
        'Aprender Italiano',
        'assets/images/vetor-de-bandeira-italiano-nacional-do-país-itália-wallpaper-italiana-pano-fundo-da-196750105.jpg',
        3),
    Task('Adquirir o shape inexplicavel',
        'assets/images/gettyimages-3238896-612x612.jpg', 4),
    Task('Reconquistar Jerusalem', 'assets/images/1-1.jpg', 5),
    Task(
        'Lamentar pela Queda de Constantinopla',
        'assets/images/tomada-constantinopla-por-mehmed-ii-56bcbc2c8d88b.webp',
        1),
    Task('Reconstruir Constantinopla',
        'assets/images/constantinopla.webp', 5),];
  void newTask(String name,String photo, int difficulty){
    tasklist.add(Task(name, photo, difficulty));
  }

  static TaskInherited of(BuildContext context) {
    final TaskInherited? result = context.dependOnInheritedWidgetOfExactType<TaskInherited>();
    assert(result != null, 'No TaskInherited found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(TaskInherited oldWidget) {
    return oldWidget.tasklist.length != tasklist.length;
  }
}
