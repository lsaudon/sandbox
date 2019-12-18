import 'package:flutter/material.dart';
import 'package:payment_app/send_money/card_payment_short.dart';
import 'package:payment_app/styles.dart';

class CardPaymentListWidget extends StatelessWidget {
  const CardPaymentListWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            'Select credit card',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              letterSpacing: 0.2,
              color: Styles.raven,
            ),
          ),
        ),
        const SizedBox(height: 12),
        Row(
          children: <Widget>[
            CardPaymentShortWidget(
              type: Styles.visa,
              number: '**** 0000',
              amount: '\$ 1,345.56',
            ),
          ],
        ),
      ],
    );
  }
}
