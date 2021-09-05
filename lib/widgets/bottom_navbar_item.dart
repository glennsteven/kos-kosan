import 'package:flutter/material.dart';
import 'package:kos_cozy/theme.dart';

class BottomNavbarItem extends StatelessWidget {

  final String imageUrl;
  final bool isActive;

  BottomNavbarItem({required this.imageUrl, required this.isActive});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Spacer(),
        Image.asset(
          imageUrl,
        width: 20,
        ),
        Spacer(),
        isActive
            ? Container(
          width: 30,
          height: 2,
          decoration: BoxDecoration(
            color: purpleColor,
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(1000),
            ),
          ),
        )
        : Container(),
      ],
    );
  }
}
