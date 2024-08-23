import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ResposiveLayout extends StatelessWidget {
  final Widget mobileScreenLayout;
  final Widget webScreenLayout;

  const ResposiveLayout(
      {super.key,
      required this.mobileScreenLayout,
      required this.webScreenLayout});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, Constraints) {
      if (Constraints.maxWidth > 900) {
        //WEB SCREEN
        return webScreenLayout;
      }
      //MOBILE SCREEN
      return mobileScreenLayout;
    });
  }
}
