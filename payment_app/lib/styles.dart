import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

abstract class Styles {
  static const aluminium = Color(0xffa6aab4);
  static const athensGray = Color(0xfff0f1f4);
  static const athensGray2 = Color(0xfff9fafb);
  static const brightGray = Color(0xff3b414b);
  static const cornflowerBlue = Color(0xff8676fb);
  static const cornflowerBlue2 = Color(0xffab7bff);
  static const linkWater = Color(0xffececfb);
  static const mirage = Color(0xff171d33);
  static const portage = Color(0xff8e7efb);
  static const portage2 = Color(0xffa777f1);
  static const puertoRico = Color(0xff54d3ad);
  static const radicalRed = Color(0xfffa2e69);
  static const raven = Color(0xff757f8c);
  static const royalBlue = Color(0xff613eea);
  static const white = Color(0xffffffff);

  static SvgPicture dollar = SvgPicture.asset(
    'assets/icons/dollar.svg',
    semanticsLabel: 'dollar',
  );

  static SvgPicture email = SvgPicture.asset(
    'assets/icons/email.svg',
    semanticsLabel: 'email',
  );

  static SvgPicture home = SvgPicture.asset(
    'assets/icons/home.svg',
    semanticsLabel: 'home',
  );

  static SvgPicture homeActive = SvgPicture.asset(
    'assets/icons/home.svg',
    semanticsLabel: 'home',
    color: Styles.royalBlue,
  );

  static SvgPicture information = SvgPicture.asset(
    'assets/icons/information.svg',
    semanticsLabel: 'information',
  );

  static SvgPicture lock = SvgPicture.asset(
    'assets/icons/lock.svg',
    semanticsLabel: 'lock',
  );

  static SvgPicture more = SvgPicture.asset(
    'assets/icons/more.svg',
    semanticsLabel: 'more',
  );

  static SvgPicture notification = SvgPicture.asset(
    'assets/icons/notification.svg',
    semanticsLabel: 'notification',
  );

  static SvgPicture phone = SvgPicture.asset(
    'assets/icons/phone.svg',
    semanticsLabel: 'phone',
  );

  static SvgPicture question = SvgPicture.asset(
    'assets/icons/question.svg',
    semanticsLabel: 'question',
  );

  static SvgPicture reports = SvgPicture.asset(
    'assets/icons/reports.svg',
    semanticsLabel: 'reports',
  );

  static SvgPicture reportsActive = SvgPicture.asset(
    'assets/icons/reports.svg',
    semanticsLabel: 'reports',
    color: Styles.royalBlue,
  );

  static SvgPicture search = SvgPicture.asset(
    'assets/icons/search.svg',
    semanticsLabel: 'search',
  );

  static SvgPicture send = SvgPicture.asset(
    'assets/icons/send.svg',
    semanticsLabel: 'send',
  );

  static SvgPicture sendActive = SvgPicture.asset(
    'assets/icons/send.svg',
    semanticsLabel: 'send',
    color: Styles.royalBlue,
  );

  static SvgPicture settings = SvgPicture.asset(
    'assets/icons/settings.svg',
    semanticsLabel: 'settings',
  );

  static SvgPicture settingsActive = SvgPicture.asset(
    'assets/icons/settings.svg',
    semanticsLabel: 'settings',
    color: Styles.royalBlue,
  );

  static SvgPicture shield = SvgPicture.asset(
    'assets/icons/shield.svg',
    semanticsLabel: 'shield',
  );

  static SvgPicture user = SvgPicture.asset(
    'assets/icons/user.svg',
    semanticsLabel: 'user',
  );

  static SvgPicture visa = SvgPicture.asset(
    'assets/icons/visa.svg',
    semanticsLabel: 'visa',
  );

  static SvgPicture wallets = SvgPicture.asset(
    'assets/icons/wallets.svg',
    semanticsLabel: 'wallets',
  );

  static SvgPicture walletsActive = SvgPicture.asset(
    'assets/icons/wallets.svg',
    semanticsLabel: 'wallets',
    color: Styles.royalBlue,
  );

  static SvgPicture world = SvgPicture.asset(
    'assets/icons/world.svg',
    semanticsLabel: 'world',
  );

  static TextStyle cardNumberStyle = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w500,
    letterSpacing: 2,
    wordSpacing: 12,
    color: Styles.white,
  );

  static TextStyle style1 = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w300,
    letterSpacing: 0.4,
    color: Styles.white,
  );

  static TextStyle style2 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.1,
    color: Styles.white,
  );
}
