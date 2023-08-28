import 'package:flutter/material.dart';
import 'package:reliance_demo/1Eypage.dart';

import 'healthquestion.dart';
import 'mob_view.dart';
// import 'package:flutter_breadcrumb/flutter_breadcrumb.dart';
// import 'package:sar/pages/approval.dart';
// import 'package:sar/pages/loanSummary.dart';
// import 'package:step_progress_indicator/step_progress_indicator.dart';

// import 'e-nach.dart';
// import 'loan-disbursed.dart';

bool isChecked = true;

class Blue_Text extends StatefulWidget {
  const Blue_Text({super.key});

  @override
  State<Blue_Text> createState() => _Blue_TextState();
}

class _Blue_TextState extends State<Blue_Text> {
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
              const SizedBox(height: 260),

              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Mob_View(),
                          ),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(46),
                        child: Text(
                          "Switching to  customer view",
                          style: TextStyle(
                              fontWeight: FontWeight.w100,
                              color: Colors.white,
                              fontSize: 40),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              //          Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: const [
              //     Text(
              //       "Switching to",
              //       style: TextStyle(
              //           fontWeight: FontWeight.w100,
              //           color: Colors.white,
              //           fontSize: 40),
              //     ),
              //   ],
              // ),
              // const SizedBox(height: 20),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: const [
              //     Text(
              //       " customer view",
              //       style: TextStyle(
              //           fontWeight: FontWeight.normal,
              //           color: Colors.white,
              //           fontSize: 40),
              //     ),
              //   ],
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
