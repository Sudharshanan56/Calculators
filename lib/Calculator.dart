import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:responsive_framework/responsive_framework.dart';
class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  // void dispose() {
  //   // Dispose the controller when the widget is removed from the widget tree
  //   a.dispose();
  //   super.dispose();
  // }
  TextEditingController a=TextEditingController();
  String num1="";
  String num2="";
  String opr="";
  bool clk=false;





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Calculator",style: TextStyle(fontSize: 30),)),
      ),
      body: Column(
        children: [
          TextFormField(
            controller: a,

            decoration: InputDecoration(
              hintText: "Enter values"
            ),


          ),
          SizedBox(height: 20,),
          Row(
            children: [
              Container(
                height: 50,
                width: 80,
                child: Center(
                  child: ElevatedButton(


                    onPressed: (){
                      setState(() {
                        a.text="C";
                        num1="0";
                        num2="0";
                      });

                    }, child: Text("C",style: TextStyle(fontSize: 35),),style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(90.0),
                              side: BorderSide(color: Colors.black)
                          )
                      )
                  ),),
                ),
              ),
              SizedBox(width: 10,),
              Container(
                height: 50,
                width: 80,
                child: Center(
                  child: ElevatedButton(

                    onPressed: (){
                     setState(() {
                       opr="%";
                       a.text="%";
                       clk=true;
                     });
                    }, child: Text("%",style: TextStyle(fontSize: 35),),style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(90.0),
                              side: BorderSide(color: Colors.black)
                          )
                      )
                  ),),
                ),
              ),
              SizedBox(width: 10,),
              Container(
                height: 80,
                width: 80,
                child: Center(
                  child: ElevatedButton(

                    onPressed: (){
                      setState(() {
                        if(clk) {
                         if(num2.length>1) {
                           num2=num2.substring(0,num2.length-1);
                           a.text=num2;
                          }
                        }
                        else {
                         if(num1.isNotEmpty) {
                           num1=num1.substring(0,num1.length-1);
                            a.text=num1;
                          }
                        }
                      });
                    }, child: Text("<-",style: TextStyle(fontSize: 25),),style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(90.0),
                              side: BorderSide(color: Colors.black)
                          )
                      )
                  ),),
                ),
              ),
              SizedBox(width: 10,),
              Container(
                height: 50,
                width: 80,
                child: Center(
                  child: ElevatedButton(

                    onPressed: (){
                      setState(() {
                        opr="/";
                        a.text="/";
                        clk=true;
                      });
                    }, child: Text("/",style: TextStyle(fontSize: 35),),style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(90.0),
                              side: BorderSide(color: Colors.black)
                          )
                      )
                  ),),
                ),
              ),


            ],
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              Container(
                height: 50,
                width: 80,
                child: Center(
                  child: ElevatedButton(

                    onPressed: (){
                      if(clk){
                        num2+="7";
                        a.text=num2;
                      }
                      else{
                        num1+="7";
                        a.text=num1;
                      }


                    }, child: Text("7",style: TextStyle(fontSize: 35),),style: ButtonStyle(
                      shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(90.0),
                              side: BorderSide(color: Colors.black)
                          )
                      )
                  ),),
                ),
              ),
              SizedBox(width: 10,),
              Container(
                height: 50,
                width: 80,
                child: Center(
                  child: ElevatedButton(

                    onPressed: (){
                      if(clk)
                        {
                          num2+="8";
                          a.text=num2;
                        }
                      else
                        {
                          num1+="8";
                          a.text=num1;
                        }
                    },
                    child: Text("8",style: TextStyle(fontSize: 35),),style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(90.0),
                              side: BorderSide(color: Colors.black)
                          )
                      )
                  ),),
                ),
              ),
              SizedBox(width: 10,),
              Container(
                height: 50,
                width: 80,
                child: Center(
                  child: ElevatedButton(

                    onPressed: (){
                      if(clk)
                        {
                          num2+="9";
                          a.text=num2;
                        }
                      else
                        {
                          num1+="9";
                          a.text=num1;
                        }


                    }, child: Text("9",style: TextStyle(fontSize: 35),),style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(90.0),
                              side: BorderSide(color: Colors.black)
                          )
                      )
                  ),),
                ),
              ),
              SizedBox(width: 10,),
              Container(
                height: 50,
                width: 80,
                child: Center(
                  child: ElevatedButton(

                    onPressed: (){
                      setState(() {
                        opr="x";
                        a.text="x";
                        clk=true;                      });
                    }, child: Text("x",style: TextStyle(fontSize: 35),),style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(90.0),
                              side: BorderSide(color: Colors.black)
                          )
                      )
                  ),),
                ),
              ),


            ],
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              Container(
                height: 50,
                width: 80,
                child: Center(
                  child: ElevatedButton(

                    onPressed: (){
                      if(clk)
                        {
                          num2+="4";
                          a.text=num2;
                        }
                      else
                        {
                          num1+="4";
                          a.text=num1;
                        }
                    }, child: Text("4",style: TextStyle(fontSize: 35),),style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(90.0),
                              side: BorderSide(color: Colors.black)
                          )
                      )
                  ),),
                ),
              ),
              SizedBox(width: 10,),
              Container(
                height: 50,
                width: 80,
                child: Center(
                  child: ElevatedButton(

                    onPressed: (){
                      if(clk)
                        {
                          num2+="5";
                          a.text=num2;
                        }
                      else
                        {
                          num1+="5";
                          a.text=num1;
                        }
                    }, child: Text("5",style: TextStyle(fontSize: 35),),style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(90.0),
                              side: BorderSide(color: Colors.black)
                          )
                      )
                  ),),
                ),
              ),
              SizedBox(width: 10,),
              Container(
                height: 50,
                width: 80,
                child: Center(
                  child: ElevatedButton(

                    onPressed: (){
                      if(clk)
                        {
                          num2+="6";
                          a.text=num2;
                        }
                      else
                        {
                          num1+="6";
                          a.text=num1;
                        }
                    }, child: Text("6",style: TextStyle(fontSize: 35),),style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(90.0),
                              side: BorderSide(color: Colors.black)
                          )
                      )
                  ),),
                ),
              ),
              SizedBox(width: 10,),
              Container(
                height: 50,
                width: 80,
                child: Center(
                  child: ElevatedButton(

                    onPressed: (){
                      setState(() {
                        opr="-";
                        a.text="-";
                        clk=true;
                      });
                    }, child: Text("-",style: TextStyle(fontSize: 40),),style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(90.0),
                              side: BorderSide(color: Colors.black)
                          )
                      )
                  ),),
                ),
              ),


            ],
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              Container(
                height: 50,
                width: 80,
                child: Center(
                  child: ElevatedButton(

                    onPressed: (){
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
                    }, child: Text("1",style: TextStyle(fontSize: 35),),style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(90.0),
                              side: BorderSide(color: Colors.black)
                          )
                      )
                  ),),
                ),
              ),
              SizedBox(width: 10,),
              Container(
                height: 50,
                width: 80,
                child: Center(
                  child: ElevatedButton(

                    onPressed: (){
                      if(clk)
                        {
                          num2+="2";
                          a.text=num2;
                        }
                      else
                        {
                          num1+="2";
                          a.text=num1;
                        }
                    }, child: Text("2",style: TextStyle(fontSize: 35),),style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(90.0),
                              side: BorderSide(color: Colors.black)
                          )
                      )
                  ),),
                ),
              ),
              SizedBox(width: 10,),
              Container(
                height: 50,
                width: 80,
                child: Center(
                  child: ElevatedButton(

                    onPressed: (){
                      if(clk)
                        {
                          num2+="3";
                          a.text=num2;
                        }
                      else
                        {
                          num1+="3";
                          a.text=num1;
                        }
                    }, child: Text("3",style: TextStyle(fontSize: 35),),style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(90.0),
                              side: BorderSide(color: Colors.black)
                          )
                      )
                  ),),
                ),
              ),
              SizedBox(width: 10,),
              Container(
                height: 50,
                width: 80,
                child: Center(
                  child: ElevatedButton(

                    onPressed: (){
                      setState(() {
                        opr="+";
                        a.text="+";
                        clk=true;
                      });

                    }, child: Text("+",style: TextStyle(fontSize: 35),),style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(90.0),
                              side: BorderSide(color: Colors.black)
                          )
                      )
                  ),),
                ),
              ),


            ],
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              Container(
                height: 50,
                width: 90 ,
                child: Center(
                  child: ElevatedButton(

                    onPressed: (){
                      if(clk)
                        {
                          num2+="00";
                          a.text=num2;
                        }
                      else
                        {
                          num1+="00";
                          a.text=num1;
                        }
                    }, child: Text("00",style: TextStyle(fontSize: 30),),style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(90.0),
                              side: BorderSide(color: Colors.black)
                          )
                      )
                  ),),
                ),
              ),
              SizedBox(width: 10,),
              Container(
                height: 50,
                width: 80,
                child: Center(
                  child: ElevatedButton(

                    onPressed: (){
                      if(clk)
                        {
                          num2+="0";
                          a.text=num2;
                        }
                      else
                        {
                          num1+="0";
                          a.text=num1;
                        }
                    }, child: Text("0",style: TextStyle(fontSize: 35),),style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(90.0),
                              side: BorderSide(color: Colors.black)
                          )
                      )
                  ),),
                ),
              ),
              SizedBox(width: 10,),
              Container(
                height: 50,
                width: 80,
                child: Center(
                  child: ElevatedButton(

                    onPressed: (){
                          setState(() {
                            if(clk)
                              {
                                num2+=".";
                                a.text=num2;
                              }
                            else
                              {
                                num1+=".";
                                a.text=num1;
                              }
                          });
                    }, child: Text(".",style: TextStyle(fontSize: 35),),style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(90.0),
                              side: BorderSide(color: Colors.black)
                          )
                      )
                  ),),
                ),
              ),
              SizedBox(width: 10,),
              Container(
                height: 50,
                width: 80,
                child: Center(

                    child: ElevatedButton(

                      onPressed: (){
                        double x=double.parse(num1);
                        double y=double.parse(num2);
                        double z=0;
                        if(opr=="+"){
                          z=x+y;
                        }
                        else if(opr=="-"){
                          z=x-y;
                        }
                        else if(opr=="x")
                          {
                            z=x*y;
                          }
                        else if(opr=="/")
                          {
                            z=x/y;
                          }
                        else if(opr=="%")
                          {
                            z=x%y;

                          }

                        a.text=z.toString();
                        num1=a.text;
                        clk=true;
                        num2="";



                      }, child: Text("=",style: TextStyle(fontSize: 35),),style: ButtonStyle(
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(90.0),
                                side: BorderSide(color: Colors.black)
                            )
                        )
                    ),
                    ),

                ),
              ),


            ],
          ),
        ],
      ),
    );
  }
}
