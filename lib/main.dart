import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          leading: Container(),
          title: Text('Tarefas'),
        ),
        body: ListView(
          children: [
            Task('Aprender Flutter','https://pbs.twimg.com/media/Eu7m692XIAEvxxP?format=png&name=large'),
            Task('Aprender Italiano','https://thumbs.dreamstime.com/b/vetor-de-bandeira-italiano-nacional-do-pa%C3%ADs-it%C3%A1lia-wallpaper-italiana-pano-fundo-da-196750105.jpg'),
            Task('Adquirir o shape inexplicavel','https://media.gettyimages.com/id/3238896/pt/foto/austrian-born-bodybuilder-arnold-schwarzenegger-points-one-hand-out-as-he-flexes-his-torso-on.jpg?s=612x612&w=gi&k=20&c=cJtR1oJnFXI7czR2hdd-wE9-T7WFeMflJn8AFQAkDLw='),
            Task('Reconquistar Jerusalem','https://blogdoenem.com.br/wp-content/uploads/2016/07/1-1.jpg'),
            Task('Lamentar pela Queda de Constantinopla','https://s1.static.brasilescola.uol.com.br/be/conteudo/images/tomada-constantinopla-por-mehmed-ii-56bcbc2c8d88b.jpg'),
            Task('Reconstruir Constantinopla','https://s2.glbimg.com/ARg-ud6GCQlFLcGx1JxTBHRlCok=/e.glbimg.com/og/ed/f/original/2019/11/01/constantinopla.jpg'),
          ],
        ),
        floatingActionButton: FloatingActionButton(onPressed: () {}),
      ),
    );
  }
}

class Task extends StatefulWidget {
  final String nome;
  final String foto;

  const Task(this.nome,this.foto, {Key? key}) : super(key: key);

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  int nivel = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Stack(
          children: [
            Container(
              color: Colors.blue,
              height: 140,
            ),
            Column(
              children: [
                Container(
                  color: Colors.white,
                  height: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        color: Colors.black26,
                        height: 100,
                        width: 110,
                        child: Image.network(
                          widget.foto,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              width: 200,
                              child: Text(
                                widget.nome,
                                style: TextStyle(
                                  fontSize: 24,
                                  overflow: TextOverflow.visible,
                                ),
                              )),
                          Row(
                            children: [
                              Icon(Icons.star,size: 15,color: Colors.blue,),
                              Icon(Icons.star,size: 15,color: Colors.blue,),
                              Icon(Icons.star,size: 15,color: Colors.blue,),
                              Icon(Icons.star,size: 15,color: Colors.blue[100],),
                              Icon(Icons.star,size: 15,color: Colors.blue[100],),

                            ],
                          )

                        ],
                      ),
                      Container(
                        height: 52,
                        width: 52,
                        child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                nivel++;
                              });

                              print(nivel);
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Icon(Icons.arrow_drop_up),
                                Text(
                                  'UP',
                                  style: TextStyle(fontSize: 12),
                                )
                              ],
                            )),
                      )
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: LinearProgressIndicator(
                          color: Colors.white,
                          value: nivel / 10,
                        ),
                        width: 200,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12),
                      child: Text(
                        'Nivel: $nivel',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
