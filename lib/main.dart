import 'package:flutter/material.dart';
import 'package:nosso_primeiro_projeto/task_item.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // primarySwatch: Colors.blue,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: false,
      ),

      home: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(),
          leading: Container(),// só para manter espaço esse leading
          title: Text('Tarefas'),
        ),
        body: ListView(
          children: [
            Task(
                "Estudo Flutter kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkA",
                'https://pbs.twimg.com/media/Eu7m692XIAEvxxP?format=png&name=large'
            ),
            Task(
                "Estudo JavaScript",
                'https://manhattanmentalhealthcounseling.com/wp-content/uploads/2019/06/Top-5-Scientific-Findings-on-MeditationMindfulness-881x710.jpeg'
            ),
            Task(
                "Estudo DART",
                'https://thebogotapost.com/wp-content/uploads/2017/06/636052464065850579-137719760_flyer-image-1.jpg'
            ),
            Task(
                "Tocar Guitarra",
                'https://images.pexels.com/photos/161172/cycling-bike-trail-sport-161172.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'
            ),
            Task(
                "Aprender idiomas",
                'https://pbs.twimg.com/media/Eu7m692XIAEvxxP?format=png&name=large'
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: (){}
        ),

      ),
    );
  }
}



