import 'package:flutter/material.dart';
import 'package:payment_app/common/header.dart';
import 'package:payment_app/settings/setting_card.dart';
import 'package:payment_app/styles.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.athensGray2,
      body: SafeArea(
        bottom: false,
        child: Padding(
          padding:
              const EdgeInsets.only(left: 16, right: 16, top: 40, bottom: 14),
          child: Column(
            children: <Widget>[
              const HeaderWidget(
                title: 'Settings',
                profile: 'assets/images/image.webp',
                isOnline: true,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      const SizedBox(height: 40),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SettingCard(
                            icon: Styles.information,
                            title: 'Profile Information',
                          ),
                          const SizedBox(width: 15),
                          SettingCard(
                            icon: Styles.lock,
                            title: 'Password',
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SettingCard(
                            icon: Styles.email,
                            title: 'Email',
                          ),
                          const SizedBox(width: 15),
                          SettingCard(
                            icon: Styles.phone,
                            title: 'Phone number',
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SettingCard(
                            icon: Styles.notification,
                            title: 'Notifications',
                          ),
                          const SizedBox(width: 15),
                          SettingCard(
                            icon: Styles.dollar,
                            title: 'Currency',
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SettingCard(
                            icon: Styles.world,
                            title: 'Language',
                          ),
                          const SizedBox(width: 15),
                          SettingCard(
                            icon: Styles.user,
                            title: 'Account',
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SettingCard(
                            icon: Styles.shield,
                            title: 'Privacy Policy',
                          ),
                          const SizedBox(width: 15),
                          SettingCard(
                            icon: Styles.question,
                            title: 'Terms of use',
                          ),
                        ],
                      ),
                      const SizedBox(height: 40),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
