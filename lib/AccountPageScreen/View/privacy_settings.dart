import 'package:flutter/material.dart';
import 'package:merojob_accountpage/Account_Screen_Constants/constants.dart';
import 'package:remixicon/remixicon.dart';

import '../../Account_Screen_Appbar/appbar.dart';

class PrivacySettingScreen extends StatelessWidget {
  PrivacySettingScreen({super.key});
  bool _value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(60), child: Appbar()),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              AccountConstants.privacySetting,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. "
              "Sed euismod, diam id aliquam ultrices, "
              "",
              style: TextStyle(fontSize: 12, color: Colors.grey.shade400),
            ),
            const SizedBox(
              height: 32,
            ),
            Text(
              "Who can Search Your Profile",
              style: TextStyle(
                  color: Colors.grey.shade600,
                  fontSize: 12,
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 16,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xFFF5F5F7),
              ),
              child: Column(
                children: [
                  PrivacyRow("Everyone"),
                  PrivacyRow("Only "),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget PrivacyRow(String text) {
    return Row(
      children: [
        Checkbox(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
            value: _value,
            onChanged: (value) {
              _value = !_value;
            }),
        Text(text,
            style: const TextStyle(
                color: Color(0xFF636469),
                fontSize: 15,
                fontWeight: FontWeight.w600)),
      ],
    );
  }
}
