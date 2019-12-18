import 'package:flutter/material.dart';
import 'package:payment_app/common/header.dart';
import 'package:payment_app/styles.dart';

class YourBalanceWidget extends StatelessWidget {
  const YourBalanceWidget({
    Key key,
    this.balance,
    this.profile,
    this.isOnline,
  }) : super(key: key);

  final String balance;
  final String profile;
  final bool isOnline;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Your balance',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              letterSpacing: 0.2,
              color: Styles.aluminium,
            ),
          ),
          const SizedBox(height: 4),
          HeaderWidget(
            title: balance,
            profile: profile,
            isOnline: isOnline,
          ),
        ],
      ),
    );
  }
}
