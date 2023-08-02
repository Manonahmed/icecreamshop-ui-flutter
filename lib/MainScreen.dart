import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:training/Categories.dart';
import 'package:training/developerScreen.dart';
import 'package:training/profile.dart';
import 'package:training/welcomeScreen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  TextEditingController controller=TextEditingController();
  int currentIndex=0;
  List<Widget> screens=[
     Welcome(),
     Ctegories(),
     Profile(),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xffE7CBCB),
        currentIndex: currentIndex,
        onTap: (index){
          print(index);
          setState(() {
            currentIndex=index;
          });
        },
        items: const[
          BottomNavigationBarItem(icon: Icon(Icons.home),label:"Home" ),
          BottomNavigationBarItem(icon: Icon(Icons.category),label: "Categories"),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),
        ],),
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            decoration: BoxDecoration(
                color: Color(0xffE7CBCB),
                borderRadius:
                    const BorderRadius.only(bottomRight: Radius.circular(50))),
            child: Column(
              children: [

                const SizedBox(
                  height: 50,
                ),
                ListTile(
                  leading:GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) =>Profile()));
                    },
                      child: Icon(Icons.person,color: Color(0xff99627A),)) ,
                  contentPadding: EdgeInsets.symmetric(horizontal: 30),
                  title: Text("Ice Cream App",
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall
                          ?.copyWith(color: Color(0xff99627A),fontWeight:FontWeight.bold,fontSize: 25)),
                  subtitle:GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) =>Ctegories()));
                    },
                      child: Icon(Icons.arrow_forward_ios,size: 30,color:Color(0xff99627A),)),
                  trailing: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage("asset/image/photo_2023-07-30_15-59-26.jpg"),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),

              ],
            ),
          ),
          Container(color: Colors.white,
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius:  BorderRadius.only(
                  topLeft: Radius.circular(100)
                )
              ),
              child: GridView.count(
                shrinkWrap: true,
                crossAxisCount: 2,
              crossAxisSpacing: 40,
              mainAxisSpacing: 30,
              children: [
                  itemDashboard('Cup/Biscuite', Icons.icecream_rounded, Color(0xffE7CBCB)),
                itemDashboard('Flavor', Icons.icecream_rounded, Color(0xffE7CBCB)),
                itemDashboard('Extra', Icons.icecream_rounded, Color(0xffE7CBCB)),
                itemDashboard('Prices', Icons.icecream_rounded, Color(0xffE7CBCB)),
              ],
              ),
            ),),

        ],
      ),
    );
  }
  itemDashboard(String title,IconData iconData,Color background)=>Container(
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
      boxShadow: [
        BoxShadow(
          offset: const Offset(0, 5),
          color: Color(0xffE7CBCB),
            spreadRadius:2,
          blurRadius: 5,
        )
      ]
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: background,
            shape: BoxShape.circle
          ),
          child: Icon(iconData,color: Colors.white,),
        ),
        SizedBox(height: 8,),
        Text(title,style: Theme.of(context).textTheme.titleMedium,)
      ],
    ),
  );
}
