import 'package:beauty_textfield/beauty_textfield.dart';
import 'package:flutter/material.dart';
import 'package:progress_button/progress_button.dart';

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
                child: BeautyTextfield(
                  width: double.maxFinite,
                  height: 60,
                  inputType: TextInputType.text,
                  textColor: Colors.black,
                  accentColor: Colors.white,
                  backgroundColor: Colors.black,
                  placeholder: "Username",
                  prefixIcon: Icon(Icons.people),
                  minLines: 1,
                  maxLines: 1,
                  wordSpacing: 0,
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 20, right: 20, top: 10),
                child: BeautyTextfield(
                  width: double.maxFinite,
                  height: 60,
                  inputType: TextInputType.text,
                  textColor: Colors.black,
                  accentColor: Colors.white,
                  backgroundColor: Colors.black,
                  placeholder: "Password",
                  prefixIcon: Icon(Icons.lock_outline),
                  minLines: 1,
                  maxLines: 1,
                  wordSpacing: 0,
                  obscureText: true,
                  suffixIcon: Icon(Icons.remove_red_eye),
                  onClickSuffix: () {},
                ),
              ),
              Container(
                  margin:
                      EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
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
          ),
        ],
      ),
    ));
  }
}
