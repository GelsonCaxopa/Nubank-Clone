import 'package:flutter/material.dart';
import 'package:nubank_clone/app_widget.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.white,
      systemNavigationBarIconBrightness: Brightness.dark));
  runApp(AppWidget());
}
