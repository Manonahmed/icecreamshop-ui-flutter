import 'package:flutter/material.dart';
import 'package:training/login.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:Stack(
        children: [
         Center(
           child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             crossAxisAlignment: CrossAxisAlignment.center,
             children: [
               Container(
                 color: Colors.white,
                 width: 200,
                 height: 200,
                 child:  Image(image: AssetImage("asset/image/photo_2023-07-31_16-55-30.jpg")),
               ),
               SizedBox(height: 50,),
               Text("Something Sweet?",style: TextStyle(color: Color(0xff99627A),fontSize: 30,fontWeight: FontWeight.bold),),
               SizedBox(height: 20,),
               Text("Get ice cream delivered straight to your door",style: TextStyle(color: Color(0xffE7CBCB),fontSize: 15),),
               SizedBox(height: 50,),
               GestureDetector(
                 onTap: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context) =>login()));
                 },
                 child: Container(
                   height: 50,
                   width: 200,
                   decoration: BoxDecoration(
                       color: Color(0xffE7CBCB),
                       borderRadius: BorderRadius.circular(15),
                       boxShadow: [
                         BoxShadow(
                             color: Color(0xff99627A),
                             spreadRadius: 1,
                             blurRadius: 8,
                             offset: Offset(4, 4)),
                         BoxShadow(
                             color: Color(0xff99627A),
                             spreadRadius: 1,
                             blurRadius: 8,
                             offset: Offset(-4, -4)),
                       ]),
                   child: Center(
                       child: Text(
                         "Enter Shop",
                         style: TextStyle(
                             color: Color(0xff99627A),
                             fontWeight: FontWeight.bold,
                             fontSize: 20),
                       )),
                 ),
               ),
             ],
           ),
         ),

        ],
      )
    );
  }
}
