import 'package:flutter/material.dart';
// import 'package:untitled/Test.dart';
// import 'package:untitled/Test_5.dart';
import 'Age.dart';
import 'BMI.dart';
import 'Calculator.dart';
import 'Gst.dart';
// import 'HomePage.dart';
class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {

  List pages=[
    Calculator(),

    Bmi(),

    Gst(),
    Age(),
    //Test5(),
    // // Center(child: Text("Hello World",style: TextStyle(fontSize: 50),),),
    // Homepage(),
  ];
int cindex=0;
  void tap(index){
    setState(() {
      cindex=index;

    });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[cindex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.person,color: Colors.black,),label: "Calculator"),
          BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.black,),label: "BMI"),
          BottomNavigationBarItem(icon: Icon(Icons.settings,color: Colors.black,),label: "GST"),
          BottomNavigationBarItem(icon: Icon(Icons.settings,color: Colors.black,),label: "Age"),

        ],
        currentIndex: cindex,
        onTap: tap,
        unselectedLabelStyle: TextStyle(color: Colors.green),
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.red,
      ),

    );
  }
}
