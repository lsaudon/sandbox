import 'package:flutter/material.dart';
import 'package:payment_app/home/card_payment.dart';
import 'package:payment_app/home/sent.dart';
import 'package:payment_app/home/your_balance.dart';
import 'package:payment_app/styles.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.athensGray2,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              const Padding(
                padding:
                    EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 14),
                child: YourBalanceWidget(
                  balance: '\$ 926.21',
                  profile: 'assets/images/image.webp',
                  isOnline: true,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CardPaymentWidget(
                    type: Styles.visa,
                    number: '**** **** **** 0000',
                    holder: 'Lindsey Johnson',
                    expiryDate: '08/21',
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: SentWidget(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
