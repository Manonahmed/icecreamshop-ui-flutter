import 'dart:math';

import 'package:flutter/material.dart';

import 'lab.dart';

class BMICALCULATE extends StatefulWidget {

  const  BMICALCULATE({Key? key}) : super(key: key);

  @override
  State<BMICALCULATE> createState() => _BMICALCULATE();
}

class _BMICALCULATE extends State<BMICALCULATE> {
  double height = 180;
  int weight = 80;
  int age = 21;
  bool male = true;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
        title: const Center(child: Text("BMI CALCULATER",
        style: TextStyle(fontSize: 25),
    ),
    ),
    backgroundColor: Colors.deepPurple,
    ),
    body: Container(

    color: Colors.white,
    child: Padding(
    padding: const EdgeInsets.all(20.0),
    child: Column(
    children: [
    Expanded(
    child: Row(
    children: [
    Expanded(
    child: GestureDetector(
    onTap: (){
    setState(() {
    male=true;
    });
    },
    child: Container(
    decoration: BoxDecoration(
    color:male?Colors.blue: Colors.deepPurple,
    borderRadius: BorderRadius.circular(18)
    ),

    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: const [
   Icon(Icons.male,size: 80,),
    SizedBox(
    height: 10,
    ),
    Text("Male",
    style: TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 25,
    color: Colors.white
    ),
    )

    ],
    ),
    ),
    ),
    ),
    SizedBox(
    width: 20,
    ),
    Expanded(
    child: GestureDetector(
    onTap: (){
    setState(() {
    male= false;
    });
    },
    child: Container(
    decoration: BoxDecoration(
    color:male?Colors.deepPurple: Colors.blue,
    borderRadius: BorderRadius.circular(15)
    ),

    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: const [
    Icon(Icons.female,size: 80,),
    SizedBox(
    height: 10,
    ),
    Text("Female",
    style: TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 25,
    color: Colors.white
    ),
    )

    ],
    ),
    ),
    ),
    ),],
    ),
    ),
    Expanded(
    child: Padding(
    padding: const EdgeInsets.only(top: 20,
    bottom: 20
    ),
    child: Container(
    decoration: BoxDecoration(
    color: Colors.deepPurple,
    borderRadius: BorderRadius.circular(18)
    ),
    width: double.infinity,
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
    Padding(
      padding: const EdgeInsets.all(15.0),
      child: Text
      ("Height",
      style: TextStyle(
      fontSize: 25,
      fontWeight: FontWeight.bold,
      color: Colors.white,
      ),),
    ),

    Row(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.baseline,
    textBaseline: TextBaseline.alphabetic,
    children: [
    Text("${height.round()}",
    style: TextStyle(
    fontSize:40,
    fontWeight: FontWeight.bold,
    color: Colors.white,
    ),),

    Text("cm",
    style: TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: Colors.white,
    ),),
    ],
    ),

    Slider(value: height,
    min: 80,
    max: 220,
    onChanged: (value){
    setState(() {
    height = value;
    });
    })
    ],
    ),
    ),
    ),
    ),
    Expanded(
    child: Padding(
    padding: const EdgeInsets.all(15.0),
    child: Row(
    children: [
    Expanded(
    child: Container(

    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(18),
    color: Colors.deepPurple

    ),
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    Text("Weight",
    style: TextStyle(
    color: Colors.white,
    fontSize: 30
    ),),
    Text(
    "$weight",
    style: const TextStyle(
    fontSize: 40,
    fontWeight: FontWeight.bold,
    color: Colors.white
    ),
    ),

    Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    FloatingActionButton(onPressed: (){
    setState(() {
    weight--;
    });
    },
    mini: true,
    child: Icon(Icons.remove),
    ),FloatingActionButton(onPressed: (){
        setState(() {
          weight++;
        }
        );
      },
        mini: true,
        child: Icon(Icons.add),),

    ],
    ),
    ],
    ),
    ),
    ),
      SizedBox(width: 20,),
      Expanded(
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              color: Colors.deepPurple

          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Age",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30
                ),),
              Text(
                "$age",
                style: const TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FloatingActionButton(onPressed: (){
                    setState(() {
                      age--;
                    });
                  },
                    mini: true,
                    child: Icon(Icons.remove),
                  ),

                  FloatingActionButton(onPressed: (){
                    setState(() {
                      age++;
                    }
                    );
                  },
                    mini: true,
                    child: Icon(Icons.add),),

                ],
              ),
            ],
          ),
        ),
      )

    ],
    ),
    ),
    ),
      Container(
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            color: Colors.deepPurple
        ),
        child: MaterialButton(onPressed: (){
          var result = weight/ pow(height /100, 2);
          print(result);
          Navigator.push(context, MaterialPageRoute(builder: (context)=>Result(a: age, r: result, g: male,)));
        },
          child: const Text("CALCULATE",
            style: TextStyle(fontSize: 30,
                color: Colors.white
            ),
          ),
        ),
      )
    ],
    ),
    ),
    ),
    );
  }
}