import 'package:flutter/material.dart';
//import 'package:myproject/sceens/home.dart';
import 'package:myproject/sceens/item.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My title",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("My App"),
          backgroundColor: const Color.fromARGB(255, 219, 73, 15),
          centerTitle: true,
        ),
        //body: const Home(),
        body: const Item(),
      ),
    );
  }
}
