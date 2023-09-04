import 'package:flutter/material.dart';
import 'package:reliance_demo/1Eypage.dart';

import 'Last_personal_detail.dart';
import 'healthquestion.dart';
import 'mob_view.dart';
// import 'package:flutter_breadcrumb/flutter_breadcrumb.dart';
// import 'package:sar/pages/approval.dart';
// import 'package:sar/pages/loanSummary.dart';
// import 'package:step_progress_indicator/step_progress_indicator.dart';

// import 'e-nach.dart';
// import 'loan-disbursed.dart';

bool isChecked = true;

class Blue_Text_back extends StatefulWidget {
  const Blue_Text_back({super.key});

  @override
  State<Blue_Text_back> createState() => _Blue_Text_backState();
}

class _Blue_Text_backState extends State<Blue_Text_back> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(223, 9, 22, 204),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(1.0),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Last_P_Detail(),
                              ),
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(40, 280, 40, 10),
                            child: Text(
                              "Switching Back    to FLS view",
                              style: TextStyle(
                                  fontWeight: FontWeight.w100,
                                  color: Colors.white,
                                  fontSize: 45),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ])),
      ),
    );
  }
}
