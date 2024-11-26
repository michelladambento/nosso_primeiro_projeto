import 'package:flutter/material.dart';

class Task extends StatefulWidget {

  final String nome;

  const Task(this.nome, {super.key});

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
        color: Colors.black,
        child: Stack(children: [
          Container(
            color: Colors.blueAccent,
            height: 140,
          ),
          Column(
            children: [
              Container(
                color: Colors.white,
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 72,
                      height: 100,
                      color: Colors.black26,
                    ),
                    Container(
                      width: 200,
                      child: Text(
                        widget.nome,
                        style: TextStyle(
                            fontSize: 20,
                            overflow: TextOverflow.ellipsis,
                            color: Colors.blueGrey),
                      ),
                    ),
                    // Container(
                    //     child: Column(
                    //         children: [
                    //           Text(nome),
                    //           Row(children: [
                    //             Icon(Icons.star),
                    //             Icon(Icons.star),
                    //             Icon(Icons.star),
                    //             Icon(Icons.star),
                    //           ])
                    //         ])
                    // ),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            nivel++;
                          });
                        },
                        child: Icon(Icons.arrow_drop_up))
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
                        color: Colors.yellow,
                        value: nivel/10,
                      ),
                      width: 200,
                    ),
                  ),
                  Text('Nível $nivel',style: TextStyle(color: Colors.white, fontSize: 16)),
                ],
              ),

            ],
          ),
        ]),
      ),
    );
  }
}
