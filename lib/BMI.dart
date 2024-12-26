import 'package:flutter/material.dart';
class Bmi extends StatefulWidget {
  const Bmi({super.key});

  @override
  State<Bmi> createState() => _BmiState();
}

class _BmiState extends State<Bmi> {
  double height=0;
  double weight=0;
  double z=0;
  void bmi()
  {
    weight=double.parse(kg.text);
    height=double.parse(cm.text);
    double h=height/100;
     z=weight/(h*h);
   // n.text=z.toString();
    setState(() {
      print(z);
    });



  }

TextEditingController kg=TextEditingController();
TextEditingController cm=TextEditingController();
TextEditingController n=TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator"),
      ),
      body: Column(
        children: [
          Container(
            height: 50,
            width: 400,
            decoration: BoxDecoration(
              border:Border.all()
            ),
            child: TextFormField(
              controller: kg,
             decoration: InputDecoration(

                hintText: "Enter weight in kg",
              ),

            ),
          ),
          SizedBox(height: 20,),
          Container(
            height: 50,
            width: 400,
            decoration: BoxDecoration(
              border: Border.all()
            ),
            child: TextFormField(
              controller: cm,
             decoration: InputDecoration(
                hintText: "Enter height in cm",
              ),
            ),
          ),
          SizedBox(height: 20,),
          ElevatedButton(onPressed: (){
           bmi();

    }, child: Text("Calculate")),
          // TextFormField(
          //   controller: n,
          //   //weight=kg.text,
          //
          //   decoration: InputDecoration(
          //     //hintText: "Enter weight in kg",
          //
          //   ),
          //
          // ),
          Text( "THE BMI IS: $z",style: TextStyle(fontSize: 30),),
        ],
      ),
    );
  }
}
