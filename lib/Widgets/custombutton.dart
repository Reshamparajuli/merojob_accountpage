import 'package:flutter/material.dart';
import 'package:merojob_accountpage/Widgets/custom_elevatedbutton.dart';
import 'package:remixicon/remixicon.dart';

class CustomTextButton extends StatelessWidget {
  final String text;
  const CustomTextButton({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Text(text),
    );
  }
}

class AccountSectionButton extends StatelessWidget {
  const AccountSectionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CustomTextButton(
          text: "Cancel",
        ),
        const SizedBox(
          width: 16.0,
        ),
        Expanded(
          child: SizedBox(
            height: 40.0,
            child: CustomElevatedButton(
              title: "Save Changes",
              onPressed: () {},
            ),
          ),
        ),
      ],
    );
  }
}
