import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:training/SignUP.dart';
import 'package:training/bttomnav/taskScreen.dart';
import 'package:training/dio/apiProvider.dart';
import 'package:training/welcomeScreen.dart';

import 'MainScreen.dart';
import 'bttomnav/donescreen.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  bool visible = true;
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passcontroller = TextEditingController();
  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffE7CBCB),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Form(
            key: formKey,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const SizedBox(
                height: 20,
              ),
              Center(
                child: const Text(
                  'Login',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,color:Color(0xff99627A)),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
                  Center(child: Icon(Icons.lock,size: 50,color: Color(0xff99627A),)),
              TextFormField(
                controller: emailcontroller,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Email must be empty';
                  }
                  return null;
                },
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xffE7CBCB))
                  ),

                  labelText: 'Email',
                  prefixIcon: Icon(Icons.email,color: Color(0xff99627A),),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Password must be empty';
                  } else if (value.length < 6) {
                    return 'password is too short';
                  }
                  return null;
                },
                controller: passcontroller,
                obscureText: visible,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffE7CBCB))
                    ),
                    labelText: 'Password',
                    prefixIcon: Icon(Icons.lock,color: Color(0xff99627A),),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          visible = !visible;
                        });
                      },
                      icon: visible
                          ? const Icon(Icons.visibility_off,color: Color(0xff99627A),)
                          : const Icon(Icons.remove_red_eye,color: Color(0xff99627A),),
                    )),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 50,
                width: double.infinity,
                color: Colors.blue,
                child: MaterialButton(
                  color: Color(0xffE7CBCB),
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        print(emailcontroller.text);
                        print(passcontroller.text);
                        FirebaseAuth.instance.signInWithEmailAndPassword(
                            email: emailcontroller.text,
                            password: passcontroller.text).then((value) => {
                             print(value.user?.email),
                             print(value.user?.uid),
                        });
                        Navigator.push(context, MaterialPageRoute(builder: (context) =>MainScreen()));
                            }
                    },
                    child: const Text(
                      'Login',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff99627A)),
                    )),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Don\'have an account?',
                      style: TextStyle(fontSize: 15,color: Color(0xff99627A))),
                  TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) =>SignIn()));
                    },
                    child:
                        const Text('Sign Up', style: TextStyle(fontSize: 20,color: Color(0xff99627A))),
                  )
                ],
              ),
            ]
                ),
          ),
        ),

      ),



    );
  }
}

tryShared() async {
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
