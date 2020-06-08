import 'package:flutter/material.dart';

class CenteredView extends StatelessWidget {
  final Widget child;

  const CenteredView({Key key, this.child}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1440,
      padding: EdgeInsets.symmetric(horizontal: 70, vertical: 70),
      alignment: Alignment.center,
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 800),
        child: child,
      ),
    );
  }
}