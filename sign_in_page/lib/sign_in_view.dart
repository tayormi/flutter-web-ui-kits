import 'package:flutter/material.dart';
import 'package:sign_in_page/views/scaffold_widget.dart';

class SignInView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var widthOfScreen = MediaQuery.of(context).size.width;
    return ScaffoldWidget(widthOfScreen: widthOfScreen,);
  }
}

