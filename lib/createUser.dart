import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class create extends StatelessWidget {
 create({Key? key}) : super(key: key);
  TextEditingController controller=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextFormField(controller: controller),
          IconButton(onPressed: ()async{
          final String name=controller.text;
          final docUser=FirebaseFirestore.instance.collection("Users").doc("my_ID");
          final json={
            "name":name,
            "age":"25",
            "birthday":DateTime(2002,2,18),

          };
          await docUser.set(json);
        }, icon: const Icon(Icons.add))],
      ),
    );
  }
}
