
import 'package:flutter/material.dart';
import 'package:card/adion.dart';
import 'package:card/gretestnum.dart';
import 'package:card/fabonaticseres.dart';
import 'package:card/even_odd.dart';
import './adion.dart';
import 'gretestnum.dart';
import './even_odd.dart';
import './fabonaticseres.dart';

class Homepage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Math's"),
        ),
        body: Center(
          child:    Column(
          children: [
            Row(
              children: [
                  Container(
                     height: 200,
                width: 150,
                margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(10),
                color: Colors.green,
              child: TextButton(
                onPressed: (){
                  Navigator.push(context,
                  MaterialPageRoute(builder: (context)=>Myprime())
                  );
                }, 
                child: Text("Prime",style: TextStyle(fontSize: 25,color: Colors.black),)),
            ),

              Container(
                 height: 200,
                width: 150,
                padding: EdgeInsets.all(10),
                 margin: EdgeInsets.all(10),
                color: Colors.yellow,
              child: TextButton(
                onPressed: (){
                  Navigator.push(context,
                  MaterialPageRoute(builder: (context)=>Myfactorial())
                  );
                }, 
                child: Text("Factorial",style: TextStyle(fontSize: 25,color: Colors.black),)),
            )
              ],
            ),

            Row(
              children: [
                  Container(
                     height: 200,
                width: 150,
                  padding: EdgeInsets.all(10),
                   margin: EdgeInsets.all(10),
                color: Colors.lightBlue,
              child: TextButton(
                onPressed: (){
                  Navigator.push(context,
                  MaterialPageRoute(builder: (context)=>Myfabonatic())
                  );
                }, 
                child: Text("Fabonatic",style: TextStyle(fontSize: 25,color: Colors.black),)),
            ),

              Container(
                height: 200,
                width: 150,
                  padding: EdgeInsets.all(10),
                   margin: EdgeInsets.all(10),
                color: Colors.amberAccent,
              child: TextButton(
                onPressed: (){
                  Navigator.push(context,
                  MaterialPageRoute(builder: (context)=>Mygretestnum())
                  );
                }, 
                child: Text("gretest number",style: TextStyle(fontSize: 25,color: Colors.black),)),
            )
              ],
            )
          
          ],
        ),
        )
      
        ),
    );
  }

}