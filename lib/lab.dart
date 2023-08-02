import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final bool g ;
  final double r ;
  final int a;
  Result({required this.a, required this.g ,required this.r});

  // const Result({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Result",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: Column(
        children: [

          Text("Gender: ${g ? "male":"female"}",
            style: TextStyle(
                fontSize: 25
            ),),
          SizedBox(
            height:50,
          ),
          Text("Age :$a",
            style: TextStyle(
                fontSize: 28
            ),),
          SizedBox(
            height: 60,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text("Result: $r",
              style: TextStyle(
                  fontSize: 25
              ),),
          )
        ],


      ),

    );
  }
}