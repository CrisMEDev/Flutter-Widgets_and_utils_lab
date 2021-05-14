import 'package:flutter/material.dart';

import 'package:widgets_and_utils_lab/src/pages/home_page.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Widgets and utils laboratory',
      
      initialRoute: '/home',

      routes: {
        '/home'               : ( BuildContext context ) => HomePage(),
      },

    );
  }
}