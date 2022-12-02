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
        children: [
          Task('Aprender Flutter', 'assets/images/Eu7m692XIAEvxxP.png', 2),
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
              'assets/images/constantinopla.webp', 5),
          SizedBox(
            height: 80,
          )
        ],
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
