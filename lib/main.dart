import 'package:flutter/material.dart';
import 'package:responsive/views/screens/responsive_design/larg_screens.dart';
import 'package:responsive/views/screens/responsive_design/small_screens.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Responsive(),
  ));
}

class Responsive extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    // TODO: implement build
    return Scaffold(body: width > 400 ? SmallScreen() : LargeScreen() );
  }
}
