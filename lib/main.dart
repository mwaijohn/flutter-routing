import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Routing"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: (){
            Navigator.push(context, PageTwo());
          },
          color: Colors.blue,
          child: Text("Go to page Two"),
        ),
      ),
    );
  }
}

class PageTwo extends MaterialPageRoute<Null> {
  PageTwo():super(builder: (BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Routing"),
      ),
      body: Center(
        child: RaisedButton(
          color: Colors.green,
          onPressed: (){
            Navigator.push(context, PageTwo());
          },
          child: Text("Go to page three"),
        ),
      ),
    );
  });
}

class PageThree extends MaterialPageRoute<Null> {
  PageThree():super(builder: (BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Routing"),
        elevation: 3.0,
        actions: <Widget>[
          IconButton(
            onPressed: (){
              Navigator.pop(context);
            },
            icon: Icon(Icons.close),
          )
        ],
      ),
      body: Center(
        child: RaisedButton(
          color: Colors.blue,
          onPressed: (){
            Navigator.popUntil(context, ModalRoute.withName(Navigator.defaultRouteName));
          },
          child: Text("Go to home"),
        ),
      ),
    );
  });
}
