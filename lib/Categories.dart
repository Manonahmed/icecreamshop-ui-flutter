import 'package:flutter/material.dart';
import 'package:training/ConoBiscite.dart';
import 'package:training/MainScreen.dart';
import 'package:training/profile.dart';
import 'package:training/welcomeScreen.dart';

import 'bttomnav/ArcheivSCREEN.dart';
import 'bttomnav/donescreen.dart';

class Ctegories extends StatefulWidget {
  const Ctegories({Key? key}) : super(key: key);

  @override
  State<Ctegories> createState() => _CtegoriesState();
}

class _CtegoriesState extends State<Ctegories>with SingleTickerProviderStateMixin {
  List<Widget> screens=[
    const Welcome(),
    const Done(),
    const Archeiv()
  ];
  int currentIndex=0;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffE7CBCB),
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(icon:Icon(Icons.arrow_back_ios),color: Color(0xff99627A),
          onPressed: (){

              Navigator.push(context, MaterialPageRoute(builder: (context) =>MainScreen()));
          },
        ),
        title: Text("Pickup",style: TextStyle(fontFamily: "Varela",fontSize: 20.0,color: Color(0xff99627A)),
        ),
actions: <Widget>[
  IconButton(onPressed: (){}, icon: Icon(Icons.notifications_none,color: Color(0xff99627A),))
],
      ),bottomNavigationBar: BottomNavigationBar(
      backgroundColor: Color(0xffE7CBCB),
      currentIndex: currentIndex,
      onTap: (index){
        print(index);
        setState(() {
          currentIndex=index;
        });
      },
      items: const[
        BottomNavigationBarItem(icon: Icon(Icons.home),label:"welcome" ),
        BottomNavigationBarItem(icon: Icon(Icons.check),label: "Done"),
        BottomNavigationBarItem(icon: Icon(Icons.archive_outlined),label: "Archived"),
      ],
    ),
      body: ListView(
        padding: EdgeInsets.only(left: 20.0),
        children: <Widget>[
      Text("Categories",style: TextStyle(fontFamily: "Varela",fontSize: 42.0,fontWeight: FontWeight.bold,color: Color(0xff99627A)),
      ),
          SizedBox(height: 15.0,),
         Padding(
           padding: const EdgeInsets.only(right: 20),
           child: SingleChildScrollView(
             child: Container(

               width: 150,
               height: 150,
               color:Colors.transparent,
               child: Column(
                 children: [
                   Text("Flavor",style: TextStyle(fontWeight: FontWeight.bold,color: Color(0xff99627A,),fontSize: 20),),
                  Row(
                    children: [
                      Image(image: AssetImage("asset/image/photo_2023-07-29_00-17-10.jpg"),height: 125,width: 125,),
                      SizedBox(width: 100,),
                      Image(image: AssetImage("asset/image/photo_2023-07-28_22-19-37.jpg"),height: 125,width: 125,),
                    ],
                  )
                 ],
               ),
             ),
           ),
         ), SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Container(
              width: 150,
              height: 150,
              color: Colors.transparent,
              child: Column(
                children: [
                  Text("Cup/Biscuite",style: TextStyle(fontWeight: FontWeight.bold,color: Color(0xff99627A,),fontSize: 20),),
                  Row(
                    children: [
                      Image(image: AssetImage("asset/image/photo_2023-07-28_21-36-56.jpg"),height: 125,width: 125,),
                      SizedBox(width: 100,),
                      Image(image: AssetImage("asset/image/photo_2023-07-28_21-23-40.jpg"),height: 125,width: 125,),
                    ],
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Container(
              width: 150,
              height: 150,
              color: Colors.transparent,
              child: Column(
                children: [
                  Text("Extra",style: TextStyle(fontWeight: FontWeight.bold,color: Color(0xff99627A,),fontSize: 20),),
                  Row(
                    children: [
                      Image(image: AssetImage("asset/image/photo_2023-07-29_00-37-34.jpg"),height: 125,width: 125,),
                      SizedBox(width: 100,),
                      Image(image: AssetImage("asset/image/photo_2023-07-29_00-38-37.jpg"),height: 125,width: 125,),
                    ],
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Container(
              width: 150,
              height: 150,
              color: Colors.transparent,
              child:Center(
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>ConeBiscite()));
                  },
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
                          "NEXT",
                          style: TextStyle(
                              color: Color(0xff99627A),
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        )),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
