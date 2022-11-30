
import 'package:flutter/material.dart';

class myFirstWidget extends StatelessWidget {
  const myFirstWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black54,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Container(
                color: Colors.redAccent,
                width: 100,
                height: 100,
              ),
              Container(
                color: Colors.blue,
                width: 50,
                height: 50,
              ),
            ],
          ),
          Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Container(
                color: Colors.blue,
                width: 100,
                height: 100,
              ),
              Container(
                color: Colors.redAccent,
                width: 50,
                height: 50,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                color: Colors.cyanAccent,
                height: 50,
                width: 50,
              ),
              Container(
                color: Colors.pink,
                height: 50,
                width: 50,
              ),
              Container(
                color: Colors.deepPurpleAccent,
                height: 50,
                width: 50,
              ),
            ],
          ),
          Container(
            color: Colors.amberAccent,
            height: 30,
            width: 300,
            child: Text(
              'Yellow Diamond',
              style: TextStyle(
                color: Colors.lightBlue,
                fontSize: 28,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              print('voce apertou o botão');
            },
            child: Text('Aperte o botão!'),
          )
        ],
      ),
    );
  }
}
