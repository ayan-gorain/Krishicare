import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:leaf_detection/pages/loginpage.dart';
import 'package:leaf_detection/pages/onboardingpage.dart';
import 'package:leaf_detection/pages/signuppge.dart';
import 'package:leaf_detection/pages/welcomepage.dart';
import 'package:leaf_detection/utils/routes.dart';

import 'pages/firstpage.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes:{
        "/":(context)=>welcomepage(),
        Myroutes.openRoute: (context) =>Openpage(),
         Myroutes.loginRoute: (context) =>login(),
        Myroutes.signupRoute: (context) =>signup(),
        Myroutes.OnboardingRoute: (context) =>Onboardingpage(),
        Myroutes.welcomeRoute: (context) =>welcomepage(),
      }

    );
  }
}

