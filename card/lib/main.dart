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
            mainAxisAlignment: MainAxisAlignment.center,
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
              SizedBox(
                height: 20,
                width: 300,
                child: Divider(
                  color: Colors.deepOrange.shade100,
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 25,
                ),
                child: ListTile(
                      leading: Icon(
                        Icons.email,
                        size: 25,
                        color: Colors.deepOrange,
                      ),
                      title: Text(
                        'jumentoevoluido@outlook.com',
                        style: TextStyle(
                          fontFamily: 'JetBrains Mono',
                          color: Colors.deepOrange,
                        ),
                      ),
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 25,
                ),
                child: ListTile(
                      leading: Icon(
                        Icons.phone,
                        size: 25,
                        color: Colors.deepOrange,
                      ),
                      title: Text(
                        '+55 83 9920-3029',
                        style: TextStyle(
                          fontFamily: 'JetBrains Mono',
                          color: Colors.deepOrange,
                        ),
                      ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
