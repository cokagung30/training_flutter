import 'package:flutter/material.dart';
import 'package:progress_button/progress_button.dart';
import 'package:toast/toast.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: 'Google'),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final username = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: new SingleChildScrollView(
      child: Stack(
        children: <Widget>[
          new Column(
            children: <Widget>[
              Container(
                  margin: EdgeInsets.only(left: 20, right: 20, top: 100),
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
                      border: OutlineInputBorder(),
                      isDense: true,
                      labelText: 'Username',
                  ),
                  controller: username,
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 20, right: 20, top: 10),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    isDense: true,
                    labelText: 'Password'
                  ),
                ),
              ),
              Container(
                  margin:
                      EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
                  child: ProgressButton(
                    onPressed: () {
                      Toast.show(username.text.toString(), context, duration: Toast.LENGTH_SHORT, gravity: Toast.BOTTOM);
                    },
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
          ),
        ],
      ),
    ));
  }
}
