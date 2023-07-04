import 'package:flutter/material.dart';
import 'package:merojob_accountpage/AccountPageScreen/View/change_password_screen.dart';
import 'package:merojob_accountpage/AccountPageScreen/View/deactivate_acount_screen.dart';
import 'package:merojob_accountpage/AccountPageScreen/View/privacy_settings_screen.dart';

import 'AccountPageScreen/View/change_email_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: const Color(0xFFF19641),

        //colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFFF19641)),
        useMaterial3: true,
      ),
      home: ChangeEmail(),
    );
  }
}
