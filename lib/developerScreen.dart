import 'package:flutter/material.dart';
import 'package:training/welcomeScreen.dart';

import 'bttomnav/ArcheivSCREEN.dart';
import 'bttomnav/donescreen.dart';

class developerScreen extends StatefulWidget {
  const developerScreen({Key? key}) : super(key: key);

  @override
  State<developerScreen> createState() => _developerScreenState();
}

class _developerScreenState extends State<developerScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          Container(

            decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Color(0xffE7CBCB)),
            width: 500,
            height: 50,
            child: Row(
              children: [
                Text(" DeveloperName:",style: TextStyle(fontSize: 20,color: Color(0xff99627A),fontWeight: FontWeight.bold),),
                Text("   Menna ahmed dawah",style: TextStyle(fontSize: 20,color: Color(0xff99627A)),)
              ],
            ),
          ),
            SizedBox(
              height: 30,
            ),
            Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Color(0xffE7CBCB)),
              width: 500,
              height: 50,
              child: Row(
                children: [
                  Text(" Email:",style: TextStyle(fontSize: 20,color: Color(0xff99627A),fontWeight: FontWeight.bold),),
                  Text(" dawahmaenna@.com",style: TextStyle(fontSize: 20,color: Color(0xff99627A)),)
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Color(0xffE7CBCB)),
              width: 500,
              height: 50,
              child: Row(
                children: [
                  Text(" Track :",style: TextStyle(fontSize: 20,color: Color(0xff99627A),fontWeight: FontWeight.bold),),
                  Text("   Flutter",style: TextStyle(fontSize: 20,color: Color(0xff99627A)),)
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Color(0xffE7CBCB)),
              width: 500,
              height: 50,
              child: Row(
                children: [
                  Text(" University:",style: TextStyle(fontSize: 20,color: Color(0xff99627A),fontWeight: FontWeight.bold),),
                  Text(" Computer And Information  ",style: TextStyle(fontSize: 20,color: Color(0xff99627A)),)
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 90),
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>Welcome()));
                },
                child: Center(
                  child: Container(
                    height: 50,
                    width: 150,
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
                          "Back",
                          style: TextStyle(
                              color: Color(0xff99627A),
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        )),
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
