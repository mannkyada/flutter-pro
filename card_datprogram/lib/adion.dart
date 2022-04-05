import 'package:flutter/material.dart';
class Myfactorial extends StatelessWidget{
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
                 int result = 1;
             for (int i = 1; i <= int.parse(inputuenumber.text); i++) {
              result *= i;
             
                }
                  myresult = result.toString();
              });
            },             child: Text("factorial")),
          Text(
           myresult,style: TextStyle(fontSize: 30,color: Colors.amberAccent),
          )
        ],
      ),
    );
  }
}