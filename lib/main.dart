import 'package:flutter/material.dart';
import 'package:progress_button/progress_button.dart';
import 'package:training_flutter/suppramental/cornerborder.dart';
import 'package:progress_button/progress_button.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Google'
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 20),
              child: Image.asset('assets/baliWork.png')),
          Container(
            margin: EdgeInsets.only(top: 15, bottom: 15),
            child: Text(
              'BALI WORK',
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20, right: 20),
            child: TextField(
              decoration: InputDecoration(
                  border: CutCornersBorder(), labelText: 'Username'),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20, right: 20, top: 10),
            child: TextField(
              decoration: InputDecoration(
                  labelText: 'Password', border: CutCornersBorder()),
              obscureText: true,
            ),
          ),
          Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
              child: ProgressButton(
                onPressed: () {},
                buttonState: ButtonState.normal,
                child: new Text(
                  'LOGIN',
                  style: new TextStyle(
                    fontSize: 15.0,
                    color: Colors.white,
                  ),
                ),
                backgroundColor: Theme.of(context).primaryColor,
                progressColor: Theme.of(context).primaryColor,
              )),
        ],
      )),
    );
  }
}
