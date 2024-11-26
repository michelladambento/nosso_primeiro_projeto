import 'package:flutter/material.dart';

class MyFirstWidget extends StatelessWidget {
  const MyFirstWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            child: Text('Brasil',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  decoration: TextDecoration.none,
                )),
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
            margin: EdgeInsets.all(25.0),
            padding: EdgeInsets.all(40.0),
          ),
          Container(
            child: Text('M'),
            color: Colors.purple,
            width: 100,
            height: 100,
            transform: Matrix4.rotationZ(0.20),
          ),
          Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Container(
                color: Colors.red,
                width: 100,
                height: 100,
              ),
              Container(
                color: Colors.blue,
                width: 50,
                height: 50,
              )
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
                color: Colors.red,
                width: 50,
                height: 50,
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                color: Colors.cyan,
                height: 50,
                width: 50,
              ),
              Container(
                color: Colors.pinkAccent,
                height: 50,
                width: 50,
              ),
              Container(
                color: Colors.purple,
                height: 50,
                width: 50,
              ),
            ],
          ),
          Container(
            color: Colors.amber,
            height: 30,
            width: 300,
            child: Text('Diamante Amarelo',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 28, color: Colors.indigo)),
          ),
          ElevatedButton(
            onPressed: () {
              print("Hello Button");
            },
            child: Text('Aperte o botão?'),
          ),
        ],
      ),
    );
  }
}
