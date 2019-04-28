import 'package:flutter/material.dart';
import 'package:annoy_someone/view/annoy_view.dart';
import 'package:annoy_someone/utils/constants.dart';

void main() => runApp(MyApp());
const blackGradient = Color.fromARGB(255,49,45,45);
const grayGradient =  Color.fromARGB(255, 77, 75, 75);

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: TITLE,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(title: TITLE,),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackGradient,
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.title),
      ),
      body: new GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(new FocusNode());
        },
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: FractionalOffset.topLeft,
                end: FractionalOffset.bottomRight,
                colors: [
                  blackGradient,
                  grayGradient
                ],
                tileMode: TileMode.clamp
            )
          ),
          child: new Container(
              child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                AnnoyWidget(),
              ],
            ),
          )
        ),
      )
    );
  }
}
