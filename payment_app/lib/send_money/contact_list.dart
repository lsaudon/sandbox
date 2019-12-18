import 'package:flutter/material.dart';
import 'package:payment_app/send_money/contact_short.dart';
import 'package:payment_app/styles.dart';

class ContactListWidget extends StatelessWidget {
  const ContactListWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Recipient',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 0.2,
                  color: Styles.raven,
                ),
              ),
              Text(
                'Show all',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 0.2,
                  color: Styles.royalBlue,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 12),
        Row(
          children: <Widget>[
            const ContactShortWidget(
              profile: 'assets/images/image.webp',
              firstName: 'Franz',
              lastName: 'Ferdinand',
            ),
          ],
        ),
      ],
    );
  }
}
