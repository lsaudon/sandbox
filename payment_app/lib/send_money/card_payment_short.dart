import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:payment_app/styles.dart';

class CardPaymentShortWidget extends StatelessWidget {
  const CardPaymentShortWidget({
    Key key,
    this.type,
    this.number,
    this.amount,
  }) : super(key: key);

  final SvgPicture type;
  final String number;
  final String amount;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 144,
      height: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: Styles.royalBlue,
      ),
      padding: const EdgeInsets.only(left: 12, right: 12, top: 4, bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          type,
          const SizedBox(height: 8),
          Center(child: Text(number, style: Styles.cardNumberStyle)),
          const SizedBox(height: 14),
          Text(
            amount,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              letterSpacing: 0.2,
              color: Styles.white.withOpacity(0.7),
            ),
          ),
        ],
      ),
    );
  }
}
