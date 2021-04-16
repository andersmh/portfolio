import 'package:flutter/material.dart';

class SmallIconElement extends StatelessWidget {
  final String image;
  final String name;

  SmallIconElement({
    @required this.image,
    @required this.name,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          image,
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          name,
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w700,
            fontSize: 8,
          ),
        ),
      ],
    );
  }
}
