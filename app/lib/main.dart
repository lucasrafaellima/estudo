import 'package:flutter/material.dart';

void main() {
  runApp(TestingApp());
}

class TestingApp extends StatelessWidget {
  const TestingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  int likes = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 254, 255, 237),
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text('Testando o sistema'),        
      ),
      body: Center(
        child: RawMaterialButton(
          onPressed: () {
            setState(() {
              likes++;
            });
          },
          fillColor: Colors.teal,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
          constraints: BoxConstraints.tightFor(height: 50.0, width: 100.0),
          child: Text('Foram clicadas $likes vezes!'),
        ),
      ),

    );
  }
}
