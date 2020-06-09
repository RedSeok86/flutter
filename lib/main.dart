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
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage('assets/icon_one.png'),
                ),
                otherAccountsPictures: <Widget>[
                  CircleAvatar(
                    backgroundColor: Colors.white,
                  ),
                ],
                accountName: Text('BBANTO'),
                accountEmail: Text('jovajjs28'),
                onDetailsPressed:(){//버튼을 클릭하면 밑으로 화면을 보여준다
                  print('arrow is cliked');
                } ,
                decoration: BoxDecoration(
                  color: Colors.red[200],
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40.0),
                    bottomRight: Radius.circular(40.0),
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.home,
                  color: Colors.grey[850],
                ),
                title: Text('home'),
                onTap: (){
                  print('home is clieked');
                },
                trailing: Icon(Icons.add),
              ),
              ListTile(
                leading: Icon(Icons.settings,
                  color: Colors.grey[850],
                ),
                title: Text('settings'),
                onTap: (){
                  print('home is settings');
                },
                trailing: Icon(Icons.add),
              ),
              ListTile(
                leading: Icon(Icons.question_answer,
                  color: Colors.grey[850],
                ),
                title: Text('Q&A'),
                onTap: (){
                  print('home is question_answer');
                },
                trailing: Icon(Icons.add),
              ),
            ],
          ),
        ),
    );
  }
}
