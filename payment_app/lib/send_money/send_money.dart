import 'package:flutter/material.dart';
import 'package:payment_app/common/header.dart';
import 'package:payment_app/send_money/card_payment_list.dart';
import 'package:payment_app/send_money/contact_list.dart';
import 'package:payment_app/send_money/transaction_details.dart';
import 'package:payment_app/styles.dart';

class SendMoneyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.athensGray2,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            const Padding(
              padding:
                  EdgeInsets.only(left: 16, right: 16, top: 40, bottom: 14),
              child: HeaderWidget(
                title: 'Send money',
                profile: 'assets/images/image.webp',
                isOnline: true,
              ),
            ),
            const SizedBox(height: 24),
            const CardPaymentListWidget(),
            const SizedBox(height: 32),
            const ContactListWidget(),
            const SizedBox(height: 32),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: TransactionDetailsWidget(),
            ),
          ],
        ),
      ),
    );
  }
}
