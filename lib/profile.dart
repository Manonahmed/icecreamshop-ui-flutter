import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:training/MainScreen.dart';
import 'package:training/home%20screen.dart';
import 'package:training/welcomeScreen.dart';

import 'bttomnav/ArcheivSCREEN.dart';
import 'bttomnav/donescreen.dart';
import 'bttomnav/taskScreen.dart';
import 'massenger.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  List<Widget> screens=[
    const Welcome(),
    const Done(),
    const Archeiv()
  ];
  int currentIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) =>MainScreen()));
            },
            child: Icon(Icons.arrow_back_ios,color: Color(0xff99627A),)),
        centerTitle: true,
        backgroundColor: Color(0xffE7CBCB),
        title: Center(child: Text("Profile",style: TextStyle(color: Color(0xff99627A)),)),
        actions: [
          Icon(Icons.menu,color: Color(0xff99627A),),
        ],
      ),
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
    BottomNavigationBarItem(icon: Icon(Icons.home),label:"welcome" ),
    BottomNavigationBarItem(icon: Icon(Icons.check),label: "Done"),
    BottomNavigationBarItem(icon: Icon(Icons.archive_outlined),label: "Archived"),
  ],
),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
         //     screens[currentIndex],
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: CircleAvatar(
                  radius: 75,
backgroundImage: AssetImage("asset/image/green.jpg"),
                ),
              ),SizedBox(height: 10,),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0,5),
                      color: Color(0xff99627A).withOpacity(.9),
                      spreadRadius: 5,
                      blurRadius: 10
                    ),
                  ],
                ),
                child: ListTile(
                  title: const Text("Name",style: TextStyle(color: Color(0xff99627A)),),
                  subtitle: const Text("Menna dawah",style: TextStyle(color: Color(0xff99627A))),
                  leading: Icon(CupertinoIcons.person,color: Color(0xff99627A),),
                  trailing: Icon(Icons.arrow_forward_ios,color: Color(0xff99627A),),
                  tileColor: Colors.white,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0,5),
                        color: Color(0xff99627A).withOpacity(.9),
                        spreadRadius: 5,
                        blurRadius: 10
                    ),
                  ],
                ),
                child: ListTile(
                  title: const Text("Phone",style: TextStyle(color: Color(0xff99627A),fontSize: 15),),
                  subtitle: const Text("0122222635",style:TextStyle(color: Color(0xff99627A),fontSize: 15)),
                  leading: Icon(CupertinoIcons.phone,color: Color(0xff99627A),),
                  trailing: Icon(Icons.arrow_forward_ios,color: Color(0xff99627A),),
                  tileColor: Colors.white,
                ),
              ),
              SizedBox(height: 20,),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0,5),
                        color: Color(0xff99627A).withOpacity(.9),
                        spreadRadius: 5,
                        blurRadius: 10
                    ),
                  ],
                ),
                child: ListTile(
                  title: const Text("Address",style: TextStyle(color: Color(0xff99627A),fontSize: 15),),
                  subtitle: const Text("EL mahalla El kubra",style:TextStyle(color: Color(0xff99627A),fontSize: 15)),
                  leading: Icon(CupertinoIcons.location,color: Color(0xff99627A),),
                  trailing: Icon(Icons.arrow_forward_ios,color: Color(0xff99627A),),
                  tileColor: Colors.white,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0,5),
                        color: Color(0xff99627A).withOpacity(.9),
                        spreadRadius: 5,
                        blurRadius: 10
                    ),
                  ],
                ),
                child: ListTile(
                  title: const Text("Email",style: TextStyle(color: Color(0xff99627A),fontSize: 15),),
                  subtitle: const Text("dawahmenna@gmail.com",style:TextStyle(color: Color(0xff99627A),fontSize: 15)),
                  leading: Icon(CupertinoIcons.mail,color: Color(0xff99627A),),
                  trailing: Icon(Icons.arrow_forward,color: Color(0xff99627A),),
                  tileColor: Colors.white,
                ),
              ),
              SizedBox(
                height: 20,
              ),
             ElevatedButton(onPressed: (){},

                 style: ElevatedButton.styleFrom(primary: Color(0xffE7CBCB)),
                 child: const Text("Edite Profile",style: TextStyle(fontSize: 20,color: Color(0xff99627A)),)),


            ],
          ),
        ),
      ),
    );
  }
}
