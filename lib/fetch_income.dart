import 'package:flutter/material.dart';

import '1Eypage.dart';
import 'AA_pvt.dart';
import 'Pimage.dart';
// import 'package:reliance_demo/1Eypage.dart';
// import 'package:sar/pages/income_verification.dart';
// import 'package:sar/pages/add_income_proof.dart';
// import 'package:sar/pages/income_verification.dart';
// import 'package:sar/pages/income_verification.dart';
// import 'package:step_progress_indicator/step_progress_indicator.dart';

bool isChecked = false;

class Fetch_Account extends StatefulWidget {
  const Fetch_Account({super.key});

  @override
  State<Fetch_Account> createState() => _Fetch_AccountState();
}

class _Fetch_AccountState extends State<Fetch_Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Document Upload"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        actions: <Widget>[
          Icon(Icons.question_mark_rounded),
          SizedBox(width: 15)
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // BreadCrumb(
              //   items: <BreadCrumbItem>[
              //     BreadCrumbItem(
              //       content: const Text(
              //         "HOME",
              //         style:
              //             TextStyle(fontSize: 10, fontWeight: FontWeight.w400),
              //       ),
              //     ),
              //     BreadCrumbItem(
              //       content: const Text(
              //         "PERSONAL LOANS",
              //         style:
              //             TextStyle(fontSize: 10, fontWeight: FontWeight.w400),
              //       ),
              //     ),
              //     BreadCrumbItem(
              //       content: const Text(
              //         "APPLY",
              //         style:
              //             TextStyle(fontSize: 10, fontWeight: FontWeight.w400),
              //       ),
              //     ),
              //   ],
              //   divider: const Icon(Icons.chevron_right),
              // ),
              // const SizedBox(height: 30),
              // const SizedBox(height: 20),
              Center(
                child: Stack(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.center,
                      child: Image.asset(
                        'assets/brad_img.png',
                        height: 121,
                        width: 570,
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ],
                ),
              ),

              // const SizedBox(height: 10),
              // const StepProgressIndicator(
              //   totalSteps: 11,
              //   currentStep: 4,
              //   selectedColor: Color(0xFF45C00B),
              // ),
              const SizedBox(height: 20),

              Text(
                "Fetch Income Details",
                style:
                    const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: 460,
                height: 40,
                child: ElevatedButton(
                  onPressed: () {
                    //LoanDisbursed
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => P_Image(),
                        ));
                  },
                  child: Text("Go to Account Aggregator "),
                  style: ElevatedButton.styleFrom(
                      side:
                          BorderSide(color: Color.fromARGB(255, 40, 129, 207)),
                      foregroundColor: Color.fromARGB(255, 30, 103, 181),
                      backgroundColor: Color(0xFFFFFFFF)),
                ),
              ),
              const SizedBox(height: 40),

              Column(
                children: [
                  Text(
                    "                                                                  OR",
                    style: const TextStyle(
                        fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                ],
              ),

              const SizedBox(height: 40),

              Text(
                "Upload the following document",
                style:
                    const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 20),
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
                      TextFormField(
                        autofocus: false,
                        initialValue: "Choose File",
                        decoration: const InputDecoration(
                          labelText: "Age Proof",
                          border: OutlineInputBorder(),
                          filled: true, //<-- SEE HERE
                          fillColor: Color(0xFFF5F5F5),
                          suffixIcon: Text(
                            "Upload    ",
                            style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 46, 83, 232)),
                          ),
                        ),
                        readOnly: true,
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        autofocus: false,
                        initialValue: "Choose File",
                        decoration: const InputDecoration(
                          labelText: "Address Proof",
                          border: OutlineInputBorder(),
                          filled: true, //<-- SEE HERE
                          fillColor: Color(0xFFF5F5F5),
                          suffixIcon: Text(
                            "Upload    ",
                            style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 46, 83, 232)),
                          ),
                        ),
                        readOnly: true,
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        autofocus: false,
                        initialValue: "Choose File",
                        decoration: const InputDecoration(
                          labelText: "Identity Proof",
                          border: OutlineInputBorder(),
                          filled: true, //<-- SEE HERE
                          fillColor: Color(0xFFF5F5F5),
                          suffixIcon: Text(
                            "Upload    ",
                            style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 46, 83, 232)),
                          ),
                        ),
                        readOnly: true,
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: 460,
                height: 40,
                child: ElevatedButton(
                  onPressed: () {
                    //LoanDisbursed
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => P_Image(),
                        ));
                  },
                  child: Text("send direct link to customer "),
                  style: ElevatedButton.styleFrom(
                      side:
                          BorderSide(color: Color.fromARGB(255, 40, 129, 207)),
                      foregroundColor: Color.fromARGB(255, 30, 103, 181),
                      backgroundColor: Color(0xFFFFFFFF)),
                ),
              ),
              const SizedBox(height: 20),
              Center(
                child: Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: 460,
                    height: 40,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => AA_PVT_LTD(),
                            ));
                      },
                      child: const Text("Submit"),
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
