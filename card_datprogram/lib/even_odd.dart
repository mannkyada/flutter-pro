import 'package:flutter/material.dart';
class Myprime extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Factoialmy(),
    );
  }

}
class Factoialmy extends StatefulWidget {
  Factoialmy({Key? key}) : super(key: key);

  @override
  State<Factoialmy> createState() => _FactoialmyState();
}

class _FactoialmyState extends State<Factoialmy> {
  TextEditingController inputuenumber = TextEditingController();
  String myresult="0";
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            keyboardType: TextInputType.number,
            controller: inputuenumber,
          ),
          ElevatedButton(
            onPressed: (){
              setState(() {
                 String resilt = "hi";
                 String prim1 = "it prime number";
                  String prime2 = "it prime not number";
                int  a=12;
                 if(int.parse(inputuenumber.text)%2 == 0){
                 myresult= prim1;
                 }
                 else{
                 myresult = prime2;
                 }
                 
              });
            },             child: Text("Prime")),
          Text(
            myresult,style: TextStyle(fontSize: 30,color: Colors.amberAccent),
          )
        ],
      ),
    );
  }
}