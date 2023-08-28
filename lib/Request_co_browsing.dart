import 'package:flutter/material.dart';
import 'package:reliance_demo/1Eypage.dart';

import '2co-browsing.dart';
import 'healthquestion.dart';
// import 'package:flutter_breadcrumb/flutter_breadcrumb.dart';
// import 'package:sar/pages/approval.dart';
// import 'package:sar/pages/loanSummary.dart';
// import 'package:step_progress_indicator/step_progress_indicator.dart';

// import 'e-nach.dart';
// import 'loan-disbursed.dart';

bool isChecked = true;

class Request_Co_B extends StatefulWidget {
  const Request_Co_B({super.key});

  @override
  State<Request_Co_B> createState() => _Request_Co_BState();
}

bool detailsRadio = false;
bool temrsRadio = false;

class _Request_Co_BState extends State<Request_Co_B> {
  String? consent;

  bool? check1 = false;
  bool? check2 = false;
  bool? check3 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              const SizedBox(height: 11),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "Request",
                    style: TextStyle(
                        fontWeight: FontWeight.w100,
                        color: Color.fromARGB(255, 8, 64, 220)),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "Co-Browsing",
                    style: TextStyle(
                        fontWeight: FontWeight.w100,
                        fontSize: 25,
                        color: Color.fromARGB(255, 8, 64, 220)),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Center(
                child: Stack(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.center,
                      child: Image.asset(
                        'assets/mobimage.png',
                        height: 281,
                        width: 320,
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text("invite your custome to fill up their details and ",
                      style: TextStyle(
                        fontWeight: FontWeight.w100,
                        fontSize: 18,
                      )),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text("assist them live with hints. ",
                      style: TextStyle(
                        fontWeight: FontWeight.w100,
                        fontSize: 18,
                      )),
                ],
              ),
              const SizedBox(height: 20),
              Center(
                child: Stack(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.center,
                      child: Image.asset(
                        'assets/linksection.png',
                        height: 91,
                        width: 380,
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Center(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    width: 480,
                    height: 80,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Request_Co(),
                            ));
                      },
                      child: const Text("i have send the link"),
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
