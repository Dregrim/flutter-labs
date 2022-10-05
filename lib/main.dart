import 'package:flutter/material.dart';

void main() {
  runApp(
     MaterialApp(
      home: MyApp(),
    ),
  );
}


class MyApp extends StatelessWidget {
   MyApp({super.key});
   String fullName = '';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Login page',
        home: Scaffold(
      appBar: AppBar(title: Text('Login page')),
      body: Center(child: Column(children: <Widget>[
        Container(
            margin: const EdgeInsets.all(20),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Full Name',
              ),
              onChanged: (text) {
                  fullName = text;
              },
            )),
      Container(
          child: ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => Page2(fullName : fullName)));
            },
            child: const Text('Login'),
          )
        ),],
      ),
    )));
  }
}

class Page2 extends StatelessWidget {
  String fullName;
  Page2({required this.fullName});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home page',
      home: Scaffold(
      appBar: AppBar(title: Text('Home page')),
      body: Center(
        child: Text('Hello '+fullName,),
      ),
    ),
    );
  }
}