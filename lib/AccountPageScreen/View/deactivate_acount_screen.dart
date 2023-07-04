import 'package:flutter/material.dart';
import 'package:merojob_accountpage/Account_Screen_Constants/constants.dart';
import 'package:remixicon/remixicon.dart';

import '../../Account_Screen_Appbar/appbar.dart';

class DeactivateAccountScreen extends StatelessWidget {
  const DeactivateAccountScreen({super.key});

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
              AccountConstants.deactivateAccount,
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
            textFormFields("Password", Remix.lock_2_line, Remix.eye_close_line,
                Colors.grey.shade600),
          ],
        ),
      ),
    );
  }

  Widget textFormFields(String hintText, IconData prefixIcon,
      IconData suffixIcon, Color iconcolor) {
    return TextFormField(
      decoration: InputDecoration(
        prefixIcon: Icon(
          prefixIcon,
          color: iconcolor,
        ),
        suffixIcon: Icon(
          suffixIcon,
          color: iconcolor,
        ),
        border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0))),
        hintText: hintText,
        labelStyle: const TextStyle(color: Colors.grey),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
      ),
    );
  }
}
