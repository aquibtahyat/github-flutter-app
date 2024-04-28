import 'dart:async';

import 'package:flutter/material.dart';
import 'package:github_flutter_app/core/constants/constants.dart';
import 'package:github_flutter_app/core/route/github_app_routes.dart';
import 'package:shimmer/shimmer.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  BuildContext? _context;

  @override
  void initState() {
    super.initState();
    nextRoute();
  }

  @override
  Widget build(BuildContext context) {
    _context = context;
    return Scaffold(
      backgroundColor: ghWhiteColor,
      body: Center(
        child: Shimmer.fromColors(
          baseColor: ghBlackColor,
          highlightColor: ghGreyBgColor.withOpacity(0.25),
          child: Image.asset(
            "images/github_app_logo.png",
            width: MediaQuery.of(context).size.width * 0.7,
          ),
        ),
      ),
    );
  }

  nextRoute() async {
    var duration = const Duration(milliseconds: 2000);
    return Timer(duration, () {
      Navigator.pushReplacementNamed(_context!, GithubAppRoutes.repoListScreen,
          arguments: null);
    });
  }

  @override
  void dispose() {
    super.dispose();
  }
}
