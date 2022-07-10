import 'package:flutter/material.dart';

class SlidePageWidget extends StatelessWidget {
  String describtion;
  String image;

  SlidePageWidget({
    Key? key,
    required this.describtion,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text(describtion),
          ],
        ),
      ),
    );
  }
}
