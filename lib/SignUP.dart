import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:training/MainScreen.dart';

import 'dio/apiProvider.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
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
                  'Sign Up',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,color: Color(0xff99627A)),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Center(child: Icon(Icons.account_circle_outlined,size: 50,color: Color(0xff99627A),)),
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
                      borderSide: BorderSide(color: Color(0xff99627A))
                  ),
                  labelText: 'Email',
                  prefixIcon: Icon(Icons.email,color: Color(0xff99627A)),
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
                        borderSide: BorderSide(color: Color(0xff99627A))
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
                        FirebaseAuth.instance.createUserWithEmailAndPassword(email:emailcontroller.text , password:passcontroller.text );
                        Navigator.push(context, MaterialPageRoute(builder: (context) =>MainScreen()));
                      }
                    },
                    child: const Text(
                      'SignUp',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.normal,
                          color: Color(0xff99627A)),
                    )),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Welcome To Our App',
                      style: TextStyle(fontSize: 15,color: Color(0xff99627A))),
Icon(Icons.handshake,color: Color(0xff99627A),size: 40,)
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
