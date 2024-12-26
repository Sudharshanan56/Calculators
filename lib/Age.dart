import 'package:flutter/material.dart';
class Age extends StatefulWidget {
  const Age({super.key});

  @override
  State<Age> createState() => _AgeState();
}

class _AgeState extends State<Age> {
  int age=0;
  int days=0;
  TextEditingController Bday=TextEditingController();
  TextEditingController Bmonth=TextEditingController();
  TextEditingController Byear=TextEditingController();
  int bday=0,bmonth=0,byear=0;
  void calculateAge(int bday,int bmonth,int byear)
  {
      final currentDate=DateTime.now();
      int calculateAge=currentDate.year-byear;
      if(currentDate.month<bmonth||(currentDate.month==bmonth&&currentDate.day<bday))
        {
          calculateAge--;
        }
      final birthday = DateTime(byear, bmonth, bday);
      final date2 = DateTime.now();
       days = date2.difference(birthday).inDays;
      setState(() {
        age=calculateAge;
      });
      // days=bday*-currentDate.day;
  }

// int count=0;
//   void _calculateDaysLived() {
//     if (bday != null) {
//       final currentDate = DateTime.now();
//       setState(() {
//         count = currentDate.difference(bday!).inDays;
//       });
//     }
//   }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text("Age Calculator"),
      ),
      body: Column(
        children: [
          //Bday
          Container(
            height: 50,
            width: 400,
            decoration: BoxDecoration(
              border: Border.all()
            ),
            child: TextFormField(
              controller: Bday,
              decoration: InputDecoration(
                hintText: "Enter Birthday date"
              ),
            ),
          ),
          SizedBox(height: 20,),
          //Bmonth
          Container(
            height: 50,
            width: 400,
            decoration: BoxDecoration(
                border: Border.all()
            ),
            child: TextFormField(
              controller: Bmonth,
              decoration: InputDecoration(
                  hintText: "Enter Birthday month"
              ),
            ),
          ),
          SizedBox(height: 20,),
          //Byear
          Container(
            height: 50,
            width: 400,
            decoration: BoxDecoration(
                border: Border.all()
            ),
            child: TextFormField(
              controller: Byear,
              decoration: InputDecoration(
                  hintText: "Enter Birthday year"
              ),
            ),
          ),
          SizedBox(height: 20,),
          //Calculate Button
          ElevatedButton(onPressed: (){
            bday=int.parse(Bday.text);
            bmonth=int.parse(Bmonth.text);
            byear=int.parse(Byear.text);
            calculateAge(bday, bmonth, byear);
          }, child: Text("Calculate")),
          Text("Your age is $age",style: TextStyle(fontSize: 50  ),),
          Text("No of days you lived: $days",style: TextStyle(fontSize: 30),),
        ],
      ),
    );
  }
}
