import 'package:flutter/material.dart';
import 'package:merojob_accountpage/AccountPageScreen/View/change_password.dart';
import 'package:merojob_accountpage/AccountPageScreen/View/deactivate_acount_screen.dart';

import 'AccountPageScreen/View/change_email.dart';
import 'AccountPageScreen/privacy_settings.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const DeactivateAccountScreen(),
    );
  }
}
