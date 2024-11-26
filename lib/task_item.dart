import 'package:flutter/material.dart';

class Task extends StatefulWidget {
  final String nome;
  final String foto;
  final int dificuldade;

  const Task(this.nome, this.foto, this.dificuldade, {super.key});

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
        color: Colors.white,
        child: Stack(children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: Colors.blue
            ),
            height: 140,
          ),
          Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.white,
                ),
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 72,
                      height: 100,

                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: Colors.black26,
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(4),
                        child: Image.network(

                          widget.foto,
                          fit: BoxFit.cover,
                        ),
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
                                fontSize: 20,
                                overflow: TextOverflow.ellipsis,
                                color: Colors.blueGrey),
                          ),
                        ),
                        Row(children: [
                          Icon(Icons.star,
                              size: 15,
                              color: (widget.dificuldade >= 1)
                                  ? Colors.blue
                                  : Colors.blue[100]),
                          Icon(Icons.star,
                              size: 15,
                              color: (widget.dificuldade >= 2)
                                  ? Colors.blue
                                  : Colors.blue[100]),
                          Icon(Icons.star,
                              size: 15,
                              color: (widget.dificuldade >= 3)
                                  ? Colors.blue
                                  : Colors.blue[100]),
                          Icon(Icons.star,
                              size: 15,
                              color: (widget.dificuldade >= 4)
                                  ? Colors.blue
                                  : Colors.blue[100]),
                          Icon(Icons.star,
                              size: 15,
                              color: (widget.dificuldade >= 5)
                                  ? Colors.blue
                                  : Colors.blue[100]),
                        ])
                      ],
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
                    Container(
                      height: 52,
                      width: 52,
                      child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              nivel++;
                            });
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
                        color: Colors.orange,
                        value: widget.dificuldade > 0 ?
                        (nivel / widget.dificuldade) / 10 :
                        1,
                      ),
                      width: 200,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Nível $nivel',
                        style: TextStyle(color: Colors.white, fontSize: 16)),
                  ),
                ],
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
