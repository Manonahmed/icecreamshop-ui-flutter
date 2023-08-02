import 'package:flutter/material.dart';
import 'package:training/welcomeScreen.dart';

import 'bttomnav/ArcheivSCREEN.dart';
import 'bttomnav/donescreen.dart';

class TryIcecream extends StatefulWidget {
  const TryIcecream({Key? key}) : super(key: key);

  @override
  State<TryIcecream> createState() => _TryIcecreamState();
}

class _TryIcecreamState extends State<TryIcecream> {
  List<Widget> screens=[
    const Welcome(),
    const Done(),
    const Archeiv()
  ];
  int currentIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.green.shade50,
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
body: screens[currentIndex],
    );
  }
}

