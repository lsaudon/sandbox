import 'package:flutter/material.dart';
import 'package:payment_app/styles.dart';

class ContactShortWidget extends StatelessWidget {
  const ContactShortWidget({
    Key key,
    this.profile,
    this.firstName,
    this.lastName,
  }) : super(key: key);

  final String profile;
  final String firstName;
  final String lastName;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 144,
      height: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: Styles.royalBlue,
      ),
      padding: const EdgeInsets.only(left: 12, right: 12, top: 16, bottom: 14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            width: 40.0,
            height: 40.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Styles.linkWater, width: 3),
            ),
            child: Container(
              width: 40.0,
              height: 40.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(profile),
                ),
              ),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            firstName,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              letterSpacing: 0.2,
              color: Styles.white,
            ),
          ),
          const SizedBox(height: 2),
          Text(
            lastName,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              letterSpacing: 0.2,
              color: Styles.white,
            ),
          ),
        ],
      ),
    );
  }
}
