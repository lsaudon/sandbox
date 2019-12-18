import 'package:flutter/material.dart';
import 'package:payment_app/profile/profile.dart';
import 'package:payment_app/styles.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({
    Key key,
    this.title,
    this.profile,
    this.isOnline,
  }) : super(key: key);

  final String title;
  final String profile;
  final bool isOnline;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          title,
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.w600,
            letterSpacing: 0.5,
            color: Styles.mirage,
          ),
        ),
        ProfileWidget(
          profile: profile,
          isOnline: isOnline,
        ),
      ],
    );
  }
}
