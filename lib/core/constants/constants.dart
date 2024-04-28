import 'package:flutter/material.dart';

/// Text styles
const repoTitleStyle = TextStyle(
  color: Color(0xff3081f7),
  fontFamily: 'Consolas',
  fontSize: 16,
  letterSpacing: 1,
  fontWeight: FontWeight.normal,
);

const repoTitleBold = TextStyle(
  color: Color(0xff3081f7),
  fontFamily: 'Consolas',
  fontSize: 16,
  letterSpacing: 1,
  fontWeight: FontWeight.bold,
);

const repoTitleStyleBlack = TextStyle(
  color: Colors.black,
  fontFamily: 'Consolas',
  fontSize: 16,
  letterSpacing: 1,
  fontWeight: FontWeight.bold,
);

const descriptionStyle = TextStyle(
  color: Colors.black,
  fontFamily: 'Roboto',
  fontSize: 16,
  letterSpacing: 1,
  fontWeight: FontWeight.normal,
);

/// Colours
const ghBlueColor = Color(0xff3081f7);
const ghBlueColorLight = Color(0xff131d2e);
const ghBlackColor = Color(0xff0d1116);
const ghGreyBgColor = Color(0xff161b22);
const ghGreyColor = Color(0xff848d97);
const ghGreyBorderColor = Color(0xff30363d);
const ghWhiteColor = Color(0xffe6edf3);
const ghCyanColor = Color(0xff00b4ab);

ThemeData theme() {
  return ThemeData(
      scaffoldBackgroundColor: ghBlackColor, appBarTheme: appBarTheme());
}

AppBarTheme appBarTheme() {
  return const AppBarTheme(
    color: ghGreyBgColor,
    elevation: 0,
    centerTitle: true,
  );
}
