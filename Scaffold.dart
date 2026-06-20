import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ScaffoldOne(),
    );
  }
}

class ScaffoldOne extends StatelessWidget {
  const ScaffoldOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Scaffold One'),
      ),
      body: const Center(
        child: Text('Hello, Scaffold one!'),
      ),
    );
  }
}