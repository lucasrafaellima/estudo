// Flutter imports:
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black54,
        appBar: AppBar(
          backgroundColor: Colors.lightBlue,
          title: Text('Testando o app'),
        ),
        body: SafeArea(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(20),
                color: Colors.blue,
                child: Text('Teste 1'),
              ),
              Container(
                padding: EdgeInsets.all(40),
                color: Colors.grey,
                child: Text('Teste 2'),
              ),
              Container(
                padding: EdgeInsets.all(50),
                color: Colors.red,
                child: Text('Test 3'),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
