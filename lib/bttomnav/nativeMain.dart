import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:training/bttomnav/ArcheivSCREEN.dart';
import 'package:training/bttomnav/donescreen.dart';
import 'package:training/bttomnav/taskScreen.dart';
import 'package:training/dio/apiProvider.dart';
import 'package:training/dio/model/storiesModel.dart';

class HomeLayout extends StatefulWidget {
  const HomeLayout({Key? key}) : super(key: key);
  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
int currentIndex=0;
SuccessStories?successStories;
bool loading=true;
List<Widget> screens=[
 const TaskScreen(),
  const Done(),
  const Archeiv(),
];
createSharedPreferences()async{
  SharedPreferences? prefs=await SharedPreferences.getInstance();
  prefs.setInt("number", 5);
  prefs.setString("name", "Menna");
  int? x=prefs.getInt("number");
  String? name=prefs.getString("name");
  print(x);
  print(name);
}

getData()async{
successStories=await ApiProvider().getStories();
setState(() {
  loading=false;
});
}
getmm()async{

  // Obtain shared preferences.
  final SharedPreferences prefs = await SharedPreferences.getInstance();

// Save an integer value to 'counter' key.
  await prefs.setInt('counter', 10);
// Save an boolean value to 'repeat' key.
  await prefs.setBool('repeat', true);
// Save an double value to 'decimal' key.
  await prefs.setDouble('decimal', 1.5);
// Save an String value to 'action' key.
  await prefs.setString('action', 'Start');
// Save an list of strings to 'items' key.
  await prefs.setStringList('items', <String>['Earth', 'Moon', 'Sun']);

  // Try reading data from the 'counter' key. If it doesn't exist, returns null.
  final int? counter = prefs.getInt('counter');
// Try reading data from the 'repeat' key. If it doesn't exist, returns null.
  final bool? repeat = prefs.getBool('repeat');
// Try reading data from the 'decimal' key. If it doesn't exist, returns null.
  final double? decimal = prefs.getDouble('decimal');
// Try reading data from the 'action' key. If it doesn't exist, returns null.
  final String? action = prefs.getString('action');
// Try reading data from the 'items' key. If it doesn't exist, returns null.
  final List<String>? items = prefs.getStringList('items');

  print(counter);
  print(repeat);
  print(decimal);
  print(action);
  print(items);


}

@override
  void initState() {
    // TODO: implement initState
    super.initState();
   getData();
  createSharedPreferences();
  getmm();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Task App"),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child:const Icon(Icons.add),),
      body:loading? Center(child: CircularProgressIndicator(color: Colors.blue,)) :Text(successStories!.model![0].title!),
      bottomNavigationBar: BottomNavigationBar(
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
    );
  }
}
