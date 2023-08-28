import 'package:flutter/material.dart';
import 'package:reliance_demo/1Eypage.dart';
import 'package:reliance_demo/6thpage.dart';
import 'package:reliance_demo/switching_customer.dart';

import 'healthquestion.dart';
// import 'package:flutter_breadcrumb/flutter_breadcrumb.dart';
// import 'package:sar/pages/approval.dart';
// import 'package:sar/pages/loanSummary.dart';
// import 'package:step_progress_indicator/step_progress_indicator.dart';

// import 'e-nach.dart';
// import 'loan-disbursed.dart';

bool isChecked = true;

class Dot_Image extends StatefulWidget {
  const Dot_Image({super.key});

  @override
  State<Dot_Image> createState() => _Dot_ImageState();
}

String dropdownValue = 'one';

String dropdownIncome = 'Bachelors';
String dropdownComp = 'Yes';

class _Dot_ImageState extends State<Dot_Image> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 20),
                const SizedBox(height: 11),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Blue_Text(),
                            ),
                          );
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(16),
                          child: Image.asset(
                            "assets/dotimage.png",
                            fit: BoxFit.cover,
                            width: 281,
                            height: 320,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "Waiting For Customer To Joind....",
                      style: TextStyle(
                          fontWeight: FontWeight.w100,
                          color: Color.fromARGB(255, 8, 64, 220)),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
              ]),
        ),
      ),
    );
  }
}
