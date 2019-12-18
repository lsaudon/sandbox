import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:payment_app/styles.dart';

class CardPaymentWidget extends StatelessWidget {
  const CardPaymentWidget({
    Key key,
    this.type,
    this.number,
    this.holder,
    this.expiryDate,
  }) : super(key: key);

  final SvgPicture type;
  final String number;
  final String holder;
  final String expiryDate;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 274,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Styles.cornflowerBlue, Styles.cornflowerBlue2],
        ),
      ),
      padding: const EdgeInsets.only(left: 20, right: 20, top: 6, bottom: 10),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              type,
              Styles.more,
            ],
          ),
          const SizedBox(height: 24),
          Text(number, style: Styles.cardNumberStyle),
          const SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('CARD HOLDER', style: Styles.style1),
                  Text(holder, style: Styles.style2),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Text('EXPIRES', style: Styles.style1),
                  Text(expiryDate, style: Styles.style2),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
