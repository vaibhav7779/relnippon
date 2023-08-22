import 'package:flutter/material.dart';
import 'package:reliance_demo/1Eypage.dart';
import 'package:reliance_demo/6thpage.dart';

import 'healthquestion.dart';
// import 'package:flutter_breadcrumb/flutter_breadcrumb.dart';
// import 'package:sar/pages/approval.dart';
// import 'package:sar/pages/loanSummary.dart';
// import 'package:step_progress_indicator/step_progress_indicator.dart';

// import 'e-nach.dart';
// import 'loan-disbursed.dart';

bool isChecked = true;

class Face_Pos extends StatefulWidget {
  const Face_Pos({super.key});

  @override
  State<Face_Pos> createState() => _Face_PosState();
}

bool detailsRadio = false;
bool temrsRadio = false;

class _Face_PosState extends State<Face_Pos> {
  String? consent;

  bool? check1 = false;
  bool? check2 = false;
  bool? check3 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 18, 24, 214),
        title: const Text(
          "PIVC",
          style: TextStyle(color: Colors.white),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        actions: <Widget>[
          Icon(Icons.question_mark_rounded, color: Colors.white),
          SizedBox(width: 25),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              ListTile(
                title: const Text(
                  'POSITION YOUR FACE INSIDE THE CIRCLE',
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 30),
              ListTile(
                title: const Text(
                  'In a brigde enviromentand a plan background hold your plan about 20-30 cm from your face',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.normal),
                ),
              ),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.only(left: 150),
                child: ListTile(
                  title: const Text(
                    'Say Cheese!!!',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Center(
                child: Stack(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.center,
                      child: Image.asset(
                        'assets/Mask group.png',
                        height: 231,
                        width: 180,
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              const SizedBox(height: 20),
              Row(
                children: [
                  Checkbox(
                    value: detailsRadio,
                    onChanged: (value) {
                      setState(() {
                        detailsRadio = value!;
                      });
                    },
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    "Face Detection",
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Checkbox(
                    value: detailsRadio,
                    onChanged: (value) {
                      setState(() {
                        detailsRadio = value!;
                      });
                    },
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    "Liveliness Detection",
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Checkbox(
                    value: detailsRadio,
                    onChanged: (value) {
                      setState(() {
                        detailsRadio = value!;
                      });
                    },
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    "Face Match as per KYC photo",
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Divider(),
              const SizedBox(height: 20),
              Row(
                children: [
                  Checkbox(
                    value: detailsRadio,
                    onChanged: (value) {
                      setState(() {
                        detailsRadio = value!;
                      });
                    },
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    "Video Consent Recording Dear Customer ,Please go through the policy term and condition in your policy Docume....Read More",
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Center(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    width: 480,
                    height: 40,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => H_Question(),
                            ));
                      },
                      child: const Text("Tack Photo"),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
