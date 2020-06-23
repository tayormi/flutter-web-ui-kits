import 'package:flutter/material.dart';
import 'package:sign_in_page/views/scaffold_widget.dart';

class SignInView extends StatefulWidget {
  @override
  _SignInViewState createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView> {

  void setViewMode(int index){
    setState(() {
      if (index == 0){
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    var widthOfScreen = MediaQuery.of(context).size.width;
    return ScaffoldWidget();
  }
}


