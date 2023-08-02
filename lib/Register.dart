import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool visible = true;
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passcontroller = TextEditingController();
  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
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
              const Text(
                'Register',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 40,
              ),
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
                  border: OutlineInputBorder(),
                  labelText: 'Email',
                  prefixIcon: Icon(Icons.email),
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
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          visible = !visible;
                        });
                      },
                      icon: visible
                          ? const Icon(Icons.visibility_off)
                          : const Icon(Icons.remove_red_eye),
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
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        print(emailcontroller.text);
                        print(passcontroller.text);
                        FirebaseAuth.instance.createUserWithEmailAndPassword(
                            email: emailcontroller.text,
                            password: passcontroller.text).then((value) => {
                              print(value.user?.email),
                          print(value.user?.uid)
                          
                        });
                      }
                    },
                    child: const Text(
                      'Login',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                          color: Colors.white),
                    )),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('have an account?',
                      style: TextStyle(fontSize: 15)),
                  TextButton(
                    onPressed: () {},
                    child: const Text('login', style: TextStyle(fontSize: 15)),
                  )
                ],
              )
            ]),
          ),
        ),
      ),
    );
  }
}
