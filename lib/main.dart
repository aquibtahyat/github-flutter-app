import 'package:flutter/material.dart';
import 'package:github_flutter_app/app.dart';
import 'package:github_flutter_app/core/di/setup_di.dart';

void main() async {
  await setupDi();
  runApp(MyApp());
}
