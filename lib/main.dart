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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
        useMaterial3: false,
      ),

      home: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(),
          title: Text('Tarefas'),
        ),
        body: ListView(
          children: [
            Task("Estudo Flutter kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkAAAA"),
            Task("Estudo JavaScript"),
            Task("Estudo DART"),
            Task("Tocar Guitarra"),
            Task("Aprender idiomas"),
            Task("Estudo Flutter"),
            Task("Estudo JavaScript"),
            Task("Estudo DART"),
            Task("Tocar Guitarra"),
            Task("Aprender idiomas"),
          ],
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: (){}
        ),

      ),
    );
  }
}



