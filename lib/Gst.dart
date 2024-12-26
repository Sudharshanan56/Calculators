import 'package:flutter/material.dart';
class Gst extends StatefulWidget {
  const Gst({super.key});

  @override
  State<Gst> createState() => _GstState();
}

class _GstState extends State<Gst> {
  TextEditingController a=TextEditingController();
  TextEditingController b=TextEditingController();
  TextEditingController c=TextEditingController();
  TextEditingController d=TextEditingController();
  double amt=0;
  double percentage=0;
   double x=0;

double x1=0;
  void exclusive()
  {
    amt=double.parse(a.text);
    percentage=double.parse(b.text);
     x=(amt*percentage)/100;
    print(x);
    x1=x;
    x+=amt;
    c.text=x.toString();
    setState(() {
      x;
    });
    }

  double y=0;
  double y1=0;
  void inclusive()
  {
    amt=double.parse(a.text);
    percentage=double.parse(b.text);
    y = (amt - (amt * (100 / (100 + percentage))));
    print(y);

    String e=y.toStringAsExponential(2);
    y1=double.parse(y.toStringAsExponential(2));
    y=double.parse(e);
    y=amt-y;
    d.text=y.toString();
    setState(() {
      y;
    });


  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GST Calculator"),
      ),
      body: Column(
        children: [
          Container(
            height: 50,
            width: 400,
            decoration: BoxDecoration(
                border: Border.all()
            ),
            child: TextFormField(
              controller: a,
              decoration: InputDecoration(
                hintText: "Enter the amount",

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
              controller: b,
              decoration: InputDecoration(
                hintText: "Enter the GST percentage",
              ),
            ),
          ),
          SizedBox(height: 20,),
          ElevatedButton(onPressed: (){
            exclusive();
            inclusive();

          }, child: Text("Calculate")),
          // TextFormField(
          //   controller: c,
          // ),
          Text("GST for inclusive : $x1",style: TextStyle(fontSize: 30,color: Colors.blue),),
          Text("Inclusive GST = $x",style: TextStyle(fontSize: 30,color: Colors.blue),),
          Text("GST for exclusive : $y1",style: TextStyle(fontSize: 30,color: Colors.green),),
         Text("Exclusive GST = $y",style: TextStyle(fontSize: 30,color: Colors.green),),

        ],
      ),
    );
  }
}
