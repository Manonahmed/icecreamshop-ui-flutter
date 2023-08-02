import 'package:flutter/material.dart';
import 'package:training/Flavor.dart';
import 'package:training/Price.dart';

class Additions extends StatefulWidget {
  const Additions({Key? key}) : super(key: key);

  @override
  State<Additions> createState() => _AdditionsState();
}

class _AdditionsState extends State<Additions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(

          title: const Center(child: Text("Extra Scoop",
            style: TextStyle(fontSize: 25,color: Color(0xff99627A)),
          ),
          ),
          backgroundColor: Color(0xffE7CBCB),
          actions: [Icon(Icons.icecream_rounded,size: 30,color: Color(0xff99627A),)],
          centerTitle: true,
          leading: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) =>Flavour()));
              },
              child: Icon(Icons.arrow_back_ios,color: Color(0xff99627A),)),
        ),
        body: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(18)
                            ),

                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Image(image: AssetImage("asset/image/photo_2023-07-29_00-37-34.jpg")),
                                SizedBox(
                                  height: 10,
                                ),
                                Text("OREAO",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25,
                                      color: Colors.green
                                  ),
                                )

                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15)
                            ),

                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Image(image: AssetImage("asset/image/photo_2023-07-29_00-38-37.jpg")),
                                SizedBox(
                                  height: 10,
                                ),
                                Text("KitKat",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25,
                                      color: Colors.green
                                  ),
                                )

                              ],
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Expanded(
                  child: SingleChildScrollView(
                    child: Container(
                      height: 120,
                      color: Colors.white,
                      child: TextFormField(
                        decoration: const InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xff99627A))
                          ),
                          labelText: 'Enter your choise',
                          prefixIcon: Icon(Icons.icecream,color: Color(0xff99627A),),
                        ),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>Price()));
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
