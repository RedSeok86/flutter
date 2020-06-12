import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AppBar',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blue
      ),
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SnackBar'),
        centerTitle: true,
      ),
      body: MySnackBar(),
    );
  }
}
 class MySnackBar extends StatelessWidget {
   @override
   Widget build(BuildContext context) {
     return Center(
       child: RaisedButton(
         child: Text('SHow me'),
         color: Colors.red,
         onPressed: (){
           Scaffold.of(context).showSnackBar(SnackBar(content: Text('hellow',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white
            ),
           ),
             backgroundColor: Colors.teal,
             duration: Duration(microseconds: 10000),
           ),
           );
         },
       ),
     );

   }
 }
