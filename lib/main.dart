import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AppBar',
      theme: ThemeData(
        primarySwatch: Colors.red
      ),
      home: Mypage(),
    );
  }
}


class Mypage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Appbar icon menu'),
        centerTitle: true,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            print('menu button is cliked');
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              print('menu button is shopping_cart');
            },
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              print('menu button is search');
            },
          ),
        ],
      ),
    );
  }
}
