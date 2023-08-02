import 'package:flutter/material.dart';
import 'package:training/Categories.dart';
import 'package:training/Flavor.dart';
import 'package:training/MainScreen.dart';

class ConeBiscite extends StatefulWidget {
  const ConeBiscite({Key? key}) : super(key: key);

  @override
  State<ConeBiscite> createState() => _ConeBisciteState();
}

class _ConeBisciteState extends State<ConeBiscite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: const Center(child: Text("Ice Cream",
          style: TextStyle(fontSize: 25, color: Color(0xff99627A)),
        ),
        ),
        backgroundColor: Color(0xffE7CBCB),
        actions: [Icon(Icons.icecream_rounded,size: 30,color: Color(0xff99627A),)],
       centerTitle: true,
        leading: GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) =>Ctegories()));
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
                              Image(image: AssetImage("asset/image/photo_2023-07-28_21-23-40.jpg")),
                              SizedBox(
                                height: 10,
                              ),
                              Text("Cup",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                    color: Color(0xff99627A)
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
                              Image(image: AssetImage("asset/image/photo_2023-07-28_21-36-56.jpg")),
                              SizedBox(
                                height: 10,
                              ),
                              Text("Biscuit",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                    color: Color(0xff99627A)
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
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>Flavour()));
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
