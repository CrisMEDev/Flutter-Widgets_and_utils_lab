import 'package:flutter/material.dart';

import 'package:widgets_and_utils_lab/src/widgets/headers.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: HeaderFondoRectangulos()
   ),
    );
  }
}