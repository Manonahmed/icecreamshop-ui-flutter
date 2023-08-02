import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:training/Additions.dart';
import 'package:training/thanksScreen.dart';

class Price extends StatefulWidget {
  const Price({Key? key}) : super(key: key);

  @override
  State<Price> createState() => _PriceState();
}

class _PriceState extends State<Price> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: const Center(child: Text("Prices",
          style: TextStyle(fontSize: 25,color: Color(0xff99627A)),
        ),
        ),
        backgroundColor: Color(0xffE7CBCB),
        actions: [Icon(Icons.icecream_rounded,size: 30,color: Color(0xff99627A),)],
        centerTitle: true,
        leading: GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) =>Additions()));
            },
            child: Icon(Icons.arrow_back_ios,color: Color(0xff99627A),)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Color(0xffE7CBCB),
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
                  title: const Text("One pole",style: TextStyle(color: Color(0xff99627A),fontSize: 30),),
                  subtitle: const Text("10 bound",style: TextStyle(color: Color(0xff99627A),fontSize: 20)),
                  leading: Icon(CupertinoIcons.staroflife_fill,color: Color(0xff99627A),),
                  trailing: Icon(Icons.icecream_rounded,color: Color(0xff99627A),),
                  tileColor: Colors.white,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xffE7CBCB),
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
                  title: const Text("Two poles",style: TextStyle(color: Color(0xff99627A),fontSize: 30),),
                  subtitle: const Text("20 bound",style:TextStyle(color: Color(0xff99627A),fontSize: 20)),
                  leading: Icon(CupertinoIcons.staroflife_fill,color: Color(0xff99627A),),
                  trailing: Icon(Icons.icecream_rounded,color: Color(0xff99627A),),
                  tileColor: Colors.white,
                ),
              ),
              SizedBox(height: 30,),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xffE7CBCB),
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
                  title: const Text("Three poles",style: TextStyle(color: Color(0xff99627A),fontSize: 30),),
                  subtitle: const Text("30 bound",style:TextStyle(color: Color(0xff99627A),fontSize: 20)),
                  leading: Icon(CupertinoIcons.staroflife_fill,color: Color(0xff99627A),),
                  trailing: Icon(Icons.icecream_rounded,color: Color(0xff99627A),),
                  tileColor: Colors.white,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xffE7CBCB),
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
                  title: const Text("Oreao",style: TextStyle(color: Color(0xff99627A),fontSize: 30),),
                  subtitle: const Text("15 bound",style:TextStyle(color: Color(0xff99627A),fontSize: 20)),
                  leading: Icon(CupertinoIcons.staroflife_fill,color: Color(0xff99627A),),
                  trailing: Icon(Icons.icecream_rounded,color: Color(0xff99627A),),
                  tileColor: Colors.white,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xffE7CBCB),
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
                  title: const Text("KitKat",style: TextStyle(color: Color(0xff99627A),fontSize: 30),),
                  subtitle: const Text("15 bound",style:TextStyle(color: Color(0xff99627A),fontSize: 20)),
                  leading: Icon(CupertinoIcons.staroflife_fill,color: Color(0xff99627A),),
                  trailing: Icon(Icons.icecream_rounded,color: Color(0xff99627A),),
                  tileColor: Colors.white,
                ),
              ),SizedBox(height: 30,),
              TextFormField(
                decoration: const InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xff99627A))
                  ),
                  labelText: 'Enter your choise',
                  prefixIcon: Icon(Icons.icecream,color: Color(0xff99627A),),
                ),
              ),
              SizedBox(height: 20,),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>ThanksScreen()));
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
            ],
          ),
        ),
      ),
    );
  }
}
