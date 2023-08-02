import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class homeScreen extends StatelessWidget {
   const homeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
   body: Container(
     width: double.infinity,
     height: double.infinity,
     child: SafeArea(
       child: Row(
         mainAxisAlignment: MainAxisAlignment.start,
         crossAxisAlignment: CrossAxisAlignment.center,
         children: [
           Column(
             children: [
               Container(
                 child: Icon(Icons.ice_skating),
               ),
               Text("ICE SKATING"),
             ],
           ),
           Padding(
             padding: const EdgeInsets.symmetric(horizontal:70 ),
             child: Column(
               children: [
                 Container(
                   child: Icon(Icons.access_alarm),
                 ),
                 Text("CLOCK")
               ],
             ),
           ),
           Padding(
             padding: const EdgeInsets.symmetric(horizontal:20 ),
             child: Column(
               children: [
                 Container(
                   child: Icon(Icons.account_box),
                 ),
                 Text("PROFILE")
               ],
             ),
           ),
         ],
       ),
     ),
   ),
    );
  }
}
