import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  // final String profileImage;

  const CustomCard({
    super.key,
  });

  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 300,
      margin: EdgeInsets.only(right: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13),
        image: DecorationImage(
          image: AssetImage('assets/bag.jpg'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
