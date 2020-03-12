import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(title: 'FirstApp',
  home: FirstPage(),
  ));
} 

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        centerTitle: true,
        title: new Text("First Page"),
      ),
      body: new Container(
        child: new Center(
          child: new FlatButton(
           child: Text('Next Page'),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => SecondPage()));
          },
        ),
      ),
       ),
    );
  }
}

class SecondPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Scaffold (
      appBar: new AppBar(
        centerTitle: true,
        title: new Text('Second Page'),
      ),
      body: new Container(
        child: new Center( 
          child:FlatButton(
            child: Text('Go Back'),
            onPressed: () {
              Navigator.pop(context);
           },
          ),
         ),
        )
    );
  }
}