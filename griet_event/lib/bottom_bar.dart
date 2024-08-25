import 'package:flutter/material.dart';
import 'package:griet_event/left_bar.dart';
import 'package:griet_event/right_bar.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      color: Colors.orange[100],
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      height: size.height * .1,
      child: Padding(
        padding: const EdgeInsets.only(top: 12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const <Widget>[
            //left-side icons
            LeftSideIcons(),
            //right-side icons
            RightSideIcons(),
          ],
        ),
      ),
    );
  }
}
