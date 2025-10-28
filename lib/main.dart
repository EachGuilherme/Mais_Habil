import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mais Habil',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Placeholder(child: Center(child: Text('Projeto Mais Habil - Tela Inicial Placeholder'))),
    );
  }
}
