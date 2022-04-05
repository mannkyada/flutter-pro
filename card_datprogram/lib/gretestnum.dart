import 'package:flutter/material.dart';
class Mygretestnum extends StatelessWidget{
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
  TextEditingController inputuenumber1 = TextEditingController();
   TextEditingController inputuenumber2 = TextEditingController();
  String myresult="0";
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            keyboardType: TextInputType.number,
            controller: inputuenumber1,
          ),
          TextField(
            keyboardType: TextInputType.number,
            controller: inputuenumber2,
          ),
          ElevatedButton(
            onPressed: (){
              setState(() {
                 String resilt = "hi";
                  var x = int.parse(inputuenumber1.text);  
                  var y =int.parse(inputuenumber2.text);  
                  print("if-else statement example");  
  
                  if(x > y){  
                        resilt="$x is grate then";
                  } 
                  else {  
                     resilt="$y is grate then";
                  }
                 myresult = resilt.toString(); 
              });
            },             child: Text("grestest number")),
          Text(
            myresult,style: TextStyle(fontSize: 30,color: Colors.amberAccent),
          )
        ],
      ),
    );
  }
}