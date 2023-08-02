import 'package:flutter/material.dart';
import 'package:training/Price.dart';
import 'package:training/developerScreen.dart';

class ThanksScreen extends StatefulWidget {
  const ThanksScreen({Key? key}) : super(key: key);

  @override
  State<ThanksScreen> createState() => _ThanksScreenState();
}

class _ThanksScreenState extends State<ThanksScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xffE7CBCB),
        leading: GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) =>Price()));
          },
            child: Icon(Icons.arrow_back_ios,color: Color(0xff99627A),)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 130),
          child: Container(
            child: Column(
              children: [

                Image(image: AssetImage("asset/image/photo_2023-07-31_18-22-28.jpg"),),
                SizedBox(height: 20,),
                Text("Thank you for using this app",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Color(0xffE7CBCB)),),
                Row(
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) =>developerScreen()));
                      },
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 110),
                                child: Container(
                                  height: 50,
                                  width: 120,
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
                                        "NEXT",
                                        style: TextStyle(
                                            color: Color(0xff99627A),
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18),
                                      )),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
