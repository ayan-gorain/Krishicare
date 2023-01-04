import 'package:flutter/material.dart';
import 'package:leaf_detection/pages/loginpage.dart';
import 'package:leaf_detection/pages/onboardingpage.dart';
import 'package:leaf_detection/pages/signuppge.dart';
import 'package:leaf_detection/utils/routes.dart';

import 'pages/firstpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes:{
        "/":(context)=>Onboardingpage(),
        Myroutes.openRoute: (context) =>Openpage(),
         Myroutes.loginRoute: (context) =>login(),
        Myroutes.signupRoute: (context) =>signup(),
        Myroutes.OnboardingRoute: (context) =>Onboardingpage(),
      }

    );
  }
}

