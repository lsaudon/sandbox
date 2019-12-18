import 'package:flutter/material.dart';
import 'package:payment_app/styles.dart';

class TransactionDetailsWidget extends StatelessWidget {
  const TransactionDetailsWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Transaction details',
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w500,
            letterSpacing: 0.2,
            color: Styles.raven,
          ),
        ),
        const SizedBox(height: 11),
        TextField(
          decoration: InputDecoration(
            hintText: 'Amount',
            border: OutlineInputBorder(),
          ),
        ),
        const SizedBox(height: 24),
        TextField(
          decoration: InputDecoration(
            hintText: 'Description (optional)',
            border: OutlineInputBorder(),
          ),
        ),
        const SizedBox(height: 40),
        RaisedButton(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
          color: Styles.royalBlue,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
          child: Container(
            width: double.infinity,
            child: Text(
              'Confirm',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                letterSpacing: 0.1,
                color: Styles.white,
              ),
            ),
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}
