import 'package:flutter/material.dart';
import 'package:sign_in_page/sign_in_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sign In Page',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(




//        primaryColor: Color(0xFF1E1E21),
//        accentColor: Color(0xFFBE3760),
//        scaffoldBackgroundColor: Color(0xFF0A0E21),
//        textTheme: TextTheme(
//          body1: TextStyle(
//              color: Colors.white),
//        ),





        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
//        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SignInView(),
    );
  }
}


