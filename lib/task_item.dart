import 'package:flutter/material.dart';

class Task extends StatelessWidget {
  final String nome;

  const Task(this.nome, {super.key});

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
                Text(
                  nome,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.blueGrey

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
                ElevatedButton(onPressed: () {}, child: Icon(Icons.arrow_drop_up))
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
