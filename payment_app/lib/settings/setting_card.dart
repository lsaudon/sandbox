import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:payment_app/styles.dart';

class SettingCard extends StatelessWidget {
  const SettingCard({
    Key key,
    this.icon,
    this.title,
  }) : super(key: key);

  final SvgPicture icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      width: 164,
      padding: const EdgeInsets.only(left: 16, right: 16, top: 32, bottom: 24),
      decoration: BoxDecoration(
        color: Styles.white,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Column(
        children: <Widget>[
          Container(
            width: 40.0,
            height: 40.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Styles.royalBlue,
            ),
            child: Center(child: icon),
          ),
          const SizedBox(height: 22),
          Text(
            title,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              letterSpacing: 0.2,
              color: Styles.brightGray,
            ),
          ),
        ],
      ),
    );
  }
}
