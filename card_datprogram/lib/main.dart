import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:card/adion.dart';
import 'package:card/homepage.dart';
import './adion.dart';
import './homepage.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTitle = 'Add Two Numbers';
 
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: Text(appTitle),
        ),
        body: AddTwoNumbers(),
      ),
    );
  }
}
class AddTwoNumbers extends StatefulWidget {
  @override
  _AddTwoNumbersState createState() => _AddTwoNumbersState();
}
 
class _AddTwoNumbersState extends State<AddTwoNumbers> {
  TextEditingController num1controller = new TextEditingController();
  TextEditingController num2controller = new TextEditingController();
  String resulttext = "0";
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Text("Number 1 : "),
              new Flexible(
                child: new TextField(
                  keyboardType: TextInputType.number,
                  controller: num1controller,
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Text("Number 2 : "),
              new Flexible(
                child: new TextField(
                  keyboardType: TextInputType.number,
                  controller: num2controller,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                child: Text("+"),
                onPressed : () {
                  setState(() {
                    int result = int.parse(num1controller.text) + int.parse(num2controller.text);
                    resulttext = result.toString();
                  });
                },
              ),
              ElevatedButton(
                child: Text("-"),
                onPressed : () {
                  setState(() {
                    int result = int.parse(num1controller.text) - int.parse(num2controller.text);
                    resulttext = result.toString();
                  });
                },
              ),
             ElevatedButton(
                child: Text("x"),
                onPressed : () {
                  setState(() {
                    int result = int.parse(num1controller.text) * int.parse(num2controller.text);
                    resulttext = result.toString();
                  });
                },
              ),
              ElevatedButton(
                child: Text("/"),
                onPressed : () {
                  setState(() {
                    double result = double.parse(num1controller.text)/double.parse(num2controller.text);
                    resulttext = result.toStringAsPrecision(3);
                  });
                },
              ),

              ElevatedButton(
                child: Text(">"),
                onPressed : () {
                  setState(() {
                    Navigator.push(context, 
                    MaterialPageRoute(builder: (context)=>Homepage())
                    );
                  });
                },
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Result:",
                style: TextStyle(
                    fontSize: 30,
                ),),
               new Text(resulttext,
                 style: TextStyle(
                  fontSize: 30,
               ),),
            ],
          ),
        ],
      ),
    );
  }
}