import 'package:fit_me/pages/dashboard.dart';
import 'package:fit_me/pages/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      // initialRoute: '/',
      routes: {
        '/': (context)=> LoginWidget(),
        '/dashboard': (context)=> DashBoardWidget()
      },
    )
  );
}
