import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:training/Additions.dart';
import 'package:training/BMI.dart';
import 'package:training/Categories.dart';
import 'package:training/ConoBiscite.dart';
import 'package:training/Flavor.dart';
import 'package:training/MainScreen.dart';
import 'package:training/Price.dart';
import 'package:training/Register.dart';
import 'package:training/SignUP.dart';
import 'package:training/bttomnav/nativeMain.dart';
import 'package:training/createUser.dart';
import 'package:training/developerScreen.dart';
import 'package:training/dio/apiProvider.dart';
import 'package:training/dio/model/web.dart';
import 'package:training/login.dart';
import 'package:training/massenger.dart';
import 'package:training/profile.dart';
import 'package:training/thanksScreen.dart';
import 'package:training/try.dart';
import 'package:training/userScreen.dart';
import 'package:training/welcomeScreen.dart';

import 'home screen.dart';

Future <void> main()async{
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent
  ));
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp( const App());
}
class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false, //remove debug word
      home:MainScreen(),
    );
  }
}
