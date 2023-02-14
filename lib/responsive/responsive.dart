import 'package:docker_clone/constants/dimenstion.dart';
import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget smallScreen;
  final Widget largeScreen;

  const Responsive({
    Key? key,
    required this.smallScreen,
    required this.largeScreen,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        double width = constraints.maxWidth;
        if (width < smallScreenSize) {
          return smallScreen;
        } else {
          return smallScreen;
        }
      },
    );
  }
}
