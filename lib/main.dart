import 'package:flutter/material.dart';

void main() {
  runApp(CardApp());
}

class CardApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CardPage(),
    );
  }
}

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cartão de Visita'),
      ),
      body: Center(
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 40.0),
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                CircleAvatar(
                  radius: 50.0,
                  backgroundImage: AssetImage('images/profile_picture.jpg'),
                ),
                SizedBox(height: 10.0),
                Text(
                  'Rafaela',
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Técnico em Informática',
                  style: TextStyle(fontSize: 16.0, color: Colors.grey),
                ),
                SizedBox(height: 20.0),
                Text(
                  'Informações de Contato',
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10.0),
                ListTile(
                  leading: Icon(Icons.email),
                  title: Text(
                    'rafaelasimoes2203@gmail.com',
                    style: TextStyle(fontSize: 14.0),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.phone),
                  title: Text(
                    '(37) 98812-3456',
                    style: TextStyle(fontSize: 14.0),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
