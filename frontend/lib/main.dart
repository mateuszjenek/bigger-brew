import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import 'package:bigger_brew/presentation/app_widget.dart';

import 'injection.dart';

//! https://github.com/ResoCoder/finished-flutter-firebase-ddd-course/
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  configureInjection(Environment.prod);
  runApp(AppWidget());
}
