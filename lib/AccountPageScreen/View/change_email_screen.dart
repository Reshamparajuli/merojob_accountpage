import 'package:flutter/material.dart';
import 'package:merojob_accountpage/Account_Screen_Appbar/appbar.dart';
import 'package:merojob_accountpage/Widgets/custombutton.dart';
import 'package:remixicon/remixicon.dart';

import '../../Account_Screen_Constants/constants.dart';

class ChangeEmail extends StatefulWidget {
  ChangeEmail({super.key});

  @override
  State<ChangeEmail> createState() => _ChangeEmailState();
}

class _ChangeEmailState extends State<ChangeEmail> {
  bool _value = false;

  int _currentIndex = 0;

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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  AccountConstants.changeEmail,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: const Color.fromRGBO(0, 92, 204, 1)),
                  child: const Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                )
              ],
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
              "Choose Primary Email",
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
                  emailRow("abc@gmail.com"),
                  emailRow("xyz@gmail.com"),
                ],
              ),
            ),
            const AccountSectionButton(),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: Theme(
                data: ThemeData(
                    canvasColor: Colors.white,
                    colorScheme: Theme.of(context).colorScheme.copyWith(
                          primary: const Color(0xFFF19641),
                        )),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
                  child: Stepper(
                    onStepContinue: () {
                      final isLastStep = _currentIndex == getSteps().length - 1;
                      if (isLastStep) {
                      } else {
                        setState(() {
                          _currentIndex++;
                        });
                      }
                    },
                    onStepCancel: () {
                      if (_currentIndex > 0) {
                        setState(() {
                          _currentIndex--;
                        });
                      }
                    },
                    onStepTapped: (value) {
                      setState(() {
                        _currentIndex = value;
                      });
                    },
                    elevation: 0,
                    type: StepperType.horizontal,
                    steps: getSteps(),
                    currentStep: _currentIndex,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  getSteps() {
    List<Step> steps = [
      Step(
        state: _currentIndex > 0 ? StepState.complete : StepState.indexed,
        isActive: _currentIndex >= 0,
        title: const Text(""),
        content: Container(),
      ),
      Step(
          state: _currentIndex > 1 ? StepState.complete : StepState.indexed,
          isActive: _currentIndex >= 1,
          title: const Text(""),
          content: Container()),
      Step(
        state: _currentIndex > 2 ? StepState.complete : StepState.indexed,
        isActive: _currentIndex >= 2,
        title: const Text(""),
        content: Container(),
      ),
      Step(
        state: _currentIndex > 3 ? StepState.complete : StepState.indexed,
        isActive: _currentIndex >= 3,
        title: const Text(""),
        content: Container(),
      ),
    ];
    return steps;
  }

  Widget emailRow(String text) {
    return Row(
      children: [
        Checkbox(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
            value: _value,
            onChanged: (value) {
              _value = !_value;
            }),
        Expanded(
          child: Text(text,
              style: const TextStyle(
                  color: Color(0xFF636469),
                  fontSize: 15,
                  fontWeight: FontWeight.w600)),
        ),
      ],
    );
  }
}
