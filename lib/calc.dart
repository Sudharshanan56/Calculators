import 'package:flutter/material.dart';
class calc extends StatefulWidget {
  const calc({super.key});

  @override
  State<calc> createState() => _calcState();
}

class _calcState extends State<calc> {
  TextEditingController a=TextEditingController();
  String num1="";
  String num2="";
  bool clk=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextFormField(
            controller: a,
              decoration: InputDecoration(
                hintText: "Enter values",
              ),
          ),
          Row(
            children: [
              ElevatedButton(onPressed: (){
                setState(() {
                  if(clk)
                    {
                      num2+="1";
                      a.text=num2;
                    }
                  else
                    {
                      num1+="1";
                      a.text=num1;
                    }
                });
              }, child: Text("1"))
            ],
          )
        ],
      ),
    );
  }
}
