import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
//  home:Firstroute() ,
      initialRoute: '/',
      routes: {
        '/': (context) => Firstroute(),
        '/second': (context) => SecondRoute(),
      },
    ));

class Firstroute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text('First page'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Column(children: <Widget>[
        Container(
          child: SizedBox(
            width: 200.0,
            height: 200.0,
            child: Card(
              color: Colors.green,
              child: Center(
                child: Text(
                  'Welcome',
                  style: TextStyle(color: Colors.white),
                ), //Text
              ), //Center
            ), //Card
          ), //SizedBox
        ),
        Container(
          padding: EdgeInsets.all(40),
          margin: EdgeInsets.all(80),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 4),
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              new BoxShadow(
                color: Colors.blueAccent,
              ),
            ],
          ),
          child: TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/second');
            },
            child: Text(
              "Next",
              style: TextStyle(fontSize: 25, color: Colors.white),
            ),
          ),
        ),
      ]),
      floatingActionButton:
          FloatingActionButton(onPressed: () {}, child: Text("click")),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white60,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}


class SecondRoute extends StatefulWidget {
  @override
  SecondRouteState createState() => SecondRouteState();
}

class SecondRouteState extends State<SecondRoute> {
  String inkwell = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Container(
          height: 200,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Go back!'),
                ),
                // InkWell(
                //
                // onTap: () {
                // setState(() {
                // inkwell = 'Inkwell Tapped';
                // });
                // },
                // ),
              ])),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white60,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
