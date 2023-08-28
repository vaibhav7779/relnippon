import 'package:flutter/material.dart';
import 'package:reliance_demo/1Eypage.dart';

import '2switching_back.dart';
import 'Last_personal_detail.dart';
import 'healthquestion.dart';
// import 'package:flutter_breadcrumb/flutter_breadcrumb.dart';
// import 'package:sar/pages/approval.dart';
// import 'package:sar/pages/loanSummary.dart';
// import 'package:step_progress_indicator/step_progress_indicator.dart';

// import 'e-nach.dart';
// import 'loan-disbursed.dart';

bool isChecked = true;

class Mob_View extends StatefulWidget {
  const Mob_View({super.key});

  @override
  State<Mob_View> createState() => _Mob_ViewState();
}

bool detailsRadio = false;
bool temrsRadio = false;

class _Mob_ViewState extends State<Mob_View> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
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
                          builder: (context) => const Blue_Text_back(),
                        ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(0),
                      child: Image.asset(
                        "assets/mobview.png",
                        width: 1311,
                        height: 770,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
