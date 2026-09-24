import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepOrange,
        body: SafeArea(
          child: Column(
            children: <Widget>[
              CircleAvatar(
                backgroundImage: AssetImage('images/jumento-03.jpg'),
                radius: 60.0,
              ),
              Text(
                'Jumento estiloso',
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                  fontFamily: 'Pacifico',
                ),
              ),
              Text(
                'Animal programador',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontFamily: 'JetBrains Mono',
                ),
              ),
              Container(
                color: Colors.white,
                margin: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 25,
                ),
                padding: EdgeInsets.all(10),
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.email,
                      size: 25,
                      color: Colors.deepOrange,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'jumentoevoluido@outlook.com',
                      style: TextStyle(
                        fontFamily: 'JetBrains Mono',
                        color: Colors.deepOrange,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.white,
                margin: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 25,
                ),
                padding: EdgeInsets.all(10),
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.phone,
                      size: 25,
                      color: Colors.deepOrange,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      '+55 82 8394-40593',
                      style: TextStyle(
                        color: Colors.deepOrange,
                        fontFamily: 'JetBrains Mono',
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
