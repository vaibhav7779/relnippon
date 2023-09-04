import 'package:flutter/material.dart';
import 'package:reliance_demo/1Eypage.dart';
import 'package:reliance_demo/recording.dart';

import '6thpage.dart';
import 'Position_your_face.dart';
// import 'package:flutter_breadcrumb/flutter_breadcrumb.dart';
// import 'package:sar/pages/approval.dart';
// import 'package:sar/pages/loanSummary.dart';
// import 'package:step_progress_indicator/step_progress_indicator.dart';

// import 'e-nach.dart';
// import 'loan-disbursed.dart';

bool isChecked = true;

class H_Question extends StatefulWidget {
  const H_Question({super.key});

  @override
  State<H_Question> createState() => _H_QuestionState();
}

bool detailsRadio = false;
bool temrsRadio = false;

class _H_QuestionState extends State<H_Question> {
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
              const SizedBox(height: 11),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        "Name",
                        style: TextStyle(
                            fontWeight: FontWeight.w400, color: Colors.grey),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "Vishal Bhardwaj",
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 18),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "Proposal No",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Colors.grey),
                          ),
                          Text(
                            "",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Colors.grey),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "123444",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Colors.black),
                          ),

                          //text
                        ],
                      ),
                      const SizedBox(height: 18),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "Product",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Colors.grey),
                          ),
                          //text
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "Nischit Samruddhi",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Colors.black),
                          ),
                        ],
                      ),
                      const SizedBox(height: 11),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 30),
              // const SizedBox(height: 30),
              // Center(
              //   child: Stack(
              //     children: <Widget>[
              //       Container(
              //         alignment: Alignment.center,
              //         child: Image.asset(
              //           'assets/Mask group.png',
              //           height: 231,
              //           width: 180,
              //           fit: BoxFit.fitWidth,
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              const SizedBox(height: 11),
              Text(
                "HEALTH QUESTIONS",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.black),
              ),
              const SizedBox(height: 18),
              Text(
                ". I Confirm that",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.black),
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
                    "I am currently not taking any medicine",
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              const Text(
                "           Other than cold and flu",
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),

              const SizedBox(height: 20),

              Row(
                children: [
                  Checkbox(
                    value: check1,
                    onChanged: (value) {
                      setState(() {
                        check1 = value!;
                      });
                    },
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    "I am currently not suffering from any ",
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              const Text(
                "           medical aliment like high blood pressure,",
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Text(
                "           diabetes,heart problem etc,",
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Checkbox(
                    value: check2,
                    onChanged: (value) {
                      setState(() {
                        check2 = value!;
                      });
                    },
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    "I have not undergone any surgery in the currently",
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              const Text(
                "           last one year and have no surgery plabbed",
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Text(
                "           currently",
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 20),
              const SizedBox(height: 21),
              Text(
                "PRODUCT QUESTIONS",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.black),
              ),
              const SizedBox(height: 18),
              Text(
                "Please go through the following question and provide your answer.",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: Colors.black),
              ),
              Text(
                "your answer.",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: Colors.black),
              ),
              const SizedBox(height: 20),
              const SizedBox(height: 18),
              Text(
                ". I am awaew that the product that I am",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: Colors.black),
              ),
              Text(
                "  buying Nischit Samrudhi is a long",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: Colors.black),
              ),
              Text(
                "  term insurance saving product and an FD?.",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: Colors.black),
              ),
              Text(
                "  an FD?.",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: Colors.black),
              ),
              const SizedBox(height: 18),
              Row(
                children: [
                  Center(
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        width: 80,
                        height: 40,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Lapsed_Policies(),
                                ));
                          },
                          child: const Text("Yes"),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 28),
                  Center(
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        width: 80,
                        height: 40,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Lapsed_Policies(),
                                ));
                          },
                          child: const Text("No"),
                        ),
                      ),
                    ),
                  ),
                  Icon(
                    Icons.music_note_sharp,
                    color: Color.fromARGB(255, 0, 27, 177),
                    size: 30,
                  ),
                ],
              ),

              const SizedBox(height: 20),
              const Divider(),
              const SizedBox(height: 18),
              Text(
                ". Are you aware that you have to pay a",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: Colors.black),
              ),
              Text(
                "  yearly preminum of 1.5 lack for 7 years?",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: Colors.black),
              ),
              const SizedBox(height: 18),
              Row(
                children: [
                  Center(
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        width: 80,
                        height: 40,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Lapsed_Policies(),
                                ));
                          },
                          child: const Text("Yes"),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 28),
                  Center(
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        width: 80,
                        height: 40,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Lapsed_Policies(),
                                ));
                          },
                          child: const Text("No"),
                        ),
                      ),
                    ),
                  ),
                  Icon(
                    Icons.music_note_sharp,
                    color: Color.fromARGB(255, 0, 27, 177),
                    size: 30,
                  ),
                ],
              ),
              const SizedBox(height: 18),
              const Divider(),
              const SizedBox(height: 18),
              Text(
                ". Are your aware that you will receive",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: Colors.black),
              ),
              Text(
                "  maturity amount after completion of 10",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: Colors.black),
              ),
              Text(
                "  Years?",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: Colors.black),
              ),
              const SizedBox(height: 18),
              Row(
                children: [
                  Center(
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        width: 80,
                        height: 40,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Lapsed_Policies(),
                                ));
                          },
                          child: const Text("Yes"),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 28),
                  Center(
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        width: 80,
                        height: 40,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Lapsed_Policies(),
                                ));
                          },
                          child: const Text("No"),
                        ),
                      ),
                    ),
                  ),
                  Icon(
                    Icons.music_note_sharp,
                    color: Color.fromARGB(255, 0, 27, 177),
                    size: 30,
                  ),
                ],
              ),
              const SizedBox(height: 18),
              const Divider(),
              const SizedBox(height: 18),
              Row(
                children: [
                  Center(
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        width: 80,
                        height: 40,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Face_Pos(),
                                ));
                          },
                          child: const Text("Back "),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 48),
                  Center(
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        width: 80,
                        height: 40,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Start_Recording(),
                                ));
                          },
                          child: const Text("Next"),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
