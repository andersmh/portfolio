import 'package:flutter/material.dart';

class LargeIconElement extends StatelessWidget {
  final String image;
  final String name;

  LargeIconElement({
    @required this.image,
    @required this.name,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 45,
          height: 45,
          child: Image.asset(
            image,
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Container(
          alignment: Alignment.center,
          width: 60,
          child: Text(
            name,
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w700,
              fontSize: 8,
            ),
          ),
        ),
      ],
    );
  }
}
