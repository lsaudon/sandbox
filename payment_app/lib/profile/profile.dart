import 'package:flutter/material.dart';
import 'package:payment_app/styles.dart';

class ProfileWidget extends StatelessWidget {
  final String profile;
  final bool isOnline;

  const ProfileWidget({
    Key key,
    this.profile,
    this.isOnline = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topRight,
      children: <Widget>[
        Container(
          width: 35.0,
          height: 35.0,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Styles.linkWater, width: 3),
          ),
          child: Container(
            width: 32.0,
            height: 32.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(profile),
              ),
            ),
          ),
        ),
        Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Styles.white, width: 2),
          ),
          child: Container(
            width: 8.0,
            height: 8.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: isOnline ? Styles.puertoRico : Styles.radicalRed,
            ),
          ),
        ),
      ],
    );
  }
}
