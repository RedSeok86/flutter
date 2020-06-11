import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AppBar',
     home: MyPage(),
    );
    
  }
}

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Snack Bar'),
        centerTitle: true,
      ),
      body: Builder(builder: (BuildContext ctx) {
        return Center(
          child: FlatButton( // 화초면에 그려진다
            child: Text('show me',
              style: TextStyle(
                  color: Colors.white
              ),
            ),
            color: Colors.red,
            onPressed: (){
              Scaffold.of(ctx).showSnackBar(SnackBar(content: Text('hellow')
              ));
            },
          ),
        );
      },)
    );
  }
}
