import 'package:flutter/material.dart';
import 'package:reliance_demo/1Eypage.dart';
import 'package:reliance_demo/pre_issuance_verifi.dart';
import 'package:reliance_demo/tp.dart';

import 'Life_assured.dart';
// import 'package:flutter_breadcrumb/flutter_breadcrumb.dart';
// import 'package:sar/pages/approval.dart';
// import 'package:sar/pages/loanSummary.dart';
// import 'package:step_progress_indicator/step_progress_indicator.dart';

// import 'e-nach.dart';
// import 'loan-disbursed.dart';

bool isChecked = true;

class Thanks_image extends StatefulWidget {
  const Thanks_image({super.key});

  @override
  State<Thanks_image> createState() => _Thanks_imageState();
}

class _Thanks_imageState extends State<Thanks_image> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 18, 24, 214),
        title: const Text(
          "Payment",
          style: TextStyle(color: Colors.white),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        actions: <Widget>[],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                const SizedBox(height: 20),
                Center(
                  child: Stack(
                    children: <Widget>[
                      Container(
                        alignment: Alignment.center,
                        child: Image.asset(
                          'assets/Thankyou.png',
                          height: 550,
                          width: 450,
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Center(
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      width: 460,
                      height: 40,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Life_Assured(),
                              ));
                        },
                        child: const Text("Next"),
                      ),
                    ),
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
