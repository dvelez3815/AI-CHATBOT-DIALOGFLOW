import 'package:flutter/material.dart';
import 'package:utmhelper/dialogflow_v2.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Map<int, Color> color = {
      50: Color.fromRGBO(0, 70, 0, .1),
      100: Color.fromRGBO(0, 70, 0, .2),
      200: Color.fromRGBO(0, 70, 0, .3),
      300: Color.fromRGBO(0, 70, 0, .4),
      400: Color.fromRGBO(0, 70, 0, .5),
      500: Color.fromRGBO(0, 70, 0, .6),
      600: Color.fromRGBO(0, 70, 0, .7),
      700: Color.fromRGBO(0, 70, 0, .8),
      800: Color.fromRGBO(0, 70, 0, .9),
      900: Color.fromRGBO(0, 70, 0, 1),
    };
    MaterialColor colorCustom = MaterialColor(0xFF1B5E20, color);
    return new MaterialApp(
      title: 'OVAN-UTM',
      theme: new ThemeData(
        primarySwatch: colorCustom,
      ),
      home: new MyHomePage(title: 'OVAN-UTM'),
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
            SafeArea(
                child: Container(
                    margin: EdgeInsets.only(right: 10),
                    child: CircleAvatar(
                      child: Image.asset('assets/utm.png'),
                    )))
          ],
        ),
        body: HomePageDialogflowV2());
  }
}
