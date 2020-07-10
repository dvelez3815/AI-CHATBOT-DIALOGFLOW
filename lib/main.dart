import 'package:flutter/material.dart';
import 'package:utmhelper/dialogflow_v2.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'UTM HELPER',
      theme: new ThemeData(
        primarySwatch: Colors.green,
      ),
      home: new MyHomePage(title: 'UTM HELPER'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
        actions: <Widget>[
          SafeArea(child: Container(margin: EdgeInsets.only(right: 10), child: CircleAvatar(child: Image.asset('assets/utm.png'),)))
        ],
      ),
      body: HomePageDialogflowV2()
    );
  }
}
