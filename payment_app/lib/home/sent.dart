import 'package:flutter/material.dart';
import 'package:payment_app/home/transaction.dart';
import 'package:payment_app/styles.dart';

class SentWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextField(
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              letterSpacing: 0.2,
              color: Styles.mirage,
            ),
            decoration: InputDecoration(
              contentPadding:
                  const EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 6),
              hintText: 'Search transaction',
              hintStyle: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                letterSpacing: 0.2,
                color: Styles.aluminium,
              ),
              filled: true,
              fillColor: Styles.athensGray,
              suffix: Styles.search,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(6),
                borderSide: BorderSide(color: Colors.transparent),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(6),
                borderSide: BorderSide(color: Colors.transparent),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(6),
                borderSide: BorderSide(color: Colors.transparent),
              ),
            ),
          ),
          const SizedBox(height: 24),
          Text(
            'Today',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              letterSpacing: 0.1,
              color: Styles.raven,
            ),
          ),
          const SizedBox(height: 12),
          const TransactionWidget(
            profile: 'assets/images/image.webp',
            fullName: 'Rebecca Moore',
            transactionDate: '20 January, 2019',
            amount: '\$ 972.00',
          ),
          const SizedBox(height: 12),
          const TransactionWidget(
            profile: 'assets/images/image.webp',
            fullName: 'Rebecca Moore',
            transactionDate: '20 January, 2019',
            amount: '\$ 972.00',
          ),
          const SizedBox(height: 12),
          const TransactionWidget(
            profile: 'assets/images/image.webp',
            fullName: 'Rebecca Moore',
            transactionDate: '20 January, 2019',
            amount: '\$ 972.00',
          ),
          const SizedBox(height: 12),
          const TransactionWidget(
            profile: 'assets/images/image.webp',
            fullName: 'Rebecca Moore',
            transactionDate: '20 January, 2019',
            amount: '\$ 972.00',
          ),
          const SizedBox(height: 12),
          const TransactionWidget(
            profile: 'assets/images/image.webp',
            fullName: 'Rebecca Moore',
            transactionDate: '20 January, 2019',
            amount: '\$ 972.00',
          ),
          const SizedBox(height: 12),
          const TransactionWidget(
            profile: 'assets/images/image.webp',
            fullName: 'Rebecca Moore',
            transactionDate: '20 January, 2019',
            amount: '\$ 972.00',
          ),
          const SizedBox(height: 12),
          const TransactionWidget(
            profile: 'assets/images/image.webp',
            fullName: 'Rebecca Moore',
            transactionDate: '20 January, 2019',
            amount: '\$ 972.00',
          ),
          const SizedBox(height: 12),
          const TransactionWidget(
            profile: 'assets/images/image.webp',
            fullName: 'Rebecca Moore',
            transactionDate: '20 January, 2019',
            amount: '\$ 972.00',
          ),
        ],
      ),
    );
  }
}
