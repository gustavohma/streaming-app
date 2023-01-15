import 'package:flutter/material.dart';
import 'package:streaming_app/constants.dart';

class AvatarWidget extends StatelessWidget {
  final String image;

  const AvatarWidget({
    Key? key,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        CircleAvatar(
          backgroundColor: backgroundColor,
          backgroundImage: AssetImage(image),
          radius: 15.0,
        ),
        Positioned(
          right: 0,
          top: 0,
          child: Container(
            padding: const EdgeInsets.all(3.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(90.0),
              color: primaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
