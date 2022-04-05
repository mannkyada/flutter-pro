import 'package:flutter/material.dart';
class Myfabonatic extends StatelessWidget{
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
  // TextEditingController inputuenumber2 = TextEditingController();
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
           
          ElevatedButton(
            onPressed: (){
              setState(() {
                 String resilt = "hi";
                  int n1=0,n2=1,n3;
                  print(n1);
                  print(n2);
  
                  for(int i = 1 ;i <= int.parse(inputuenumber1.text); i++){
                    n3 = n1+n2;
                  print('$n3');
                 
                  n1= n2;
                 n2 = n3;
               
                 myresult = n3.toString();
                 }
                 
              });
            },             child: Text("fibona",style: TextStyle(fontSize: 5,color: Colors.black),)),
          Text(
            myresult,style: TextStyle(fontSize: 30,color: Colors.amberAccent),
          )
        ],
      ),
    );
  }
}