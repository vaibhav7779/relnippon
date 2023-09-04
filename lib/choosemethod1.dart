import 'package:flutter/material.dart';
import 'package:reliance_demo/tp.dart';

import '1Eypage.dart';
import '5thpage.dart';
import 'Pimage.dart';
import 'main.dart';
// import 'package:flutter_breadcrumb/flutter_breadcrumb.dart';
// import 'package:sar/pages/approval.dart';
// import 'package:sar/pages/loanSummary.dart';
// import 'package:step_progress_indicator/step_progress_indicator.dart';

// import '1Eypage.dart';
// import 'e-nach.dart';
// import 'loan-disbursed.dart';

bool isChecked = true;

class IncomeVerification extends StatefulWidget {
  const IncomeVerification({super.key});

  @override
  State<IncomeVerification> createState() => _IncomeVerificationState();
}

class _IncomeVerificationState extends State<IncomeVerification> {
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
          "New Application",
          style: TextStyle(color: Colors.white),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        actions: <Widget>[
          Icon(Icons.search_sharp, color: Colors.white),
          SizedBox(width: 25),
          Icon(Icons.verified_user_rounded, color: Colors.white),
          SizedBox(width: 25),
          Icon(Icons.notification_add_sharp, color: Colors.white),
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
              const SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Choose Method",
                    style: TextStyle(
                        fontWeight: FontWeight.w600, color: Colors.black),
                  ),
                  Icon(
                    Icons.arrow_drop_down,
                    color: Color.fromARGB(255, 4, 132, 201),
                    size: 30,
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                color: Color.fromARGB(255, 255, 255, 255),
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.all(2),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Icon(Icons.contact_emergency_sharp,
                            color: Color.fromARGB(255, 201, 150, 10)),
                      ),
                      SizedBox(width: 25),
                      ListTile(
                        title: const Text(
                          'Existing Customer',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        leading: Radio(
                          value: "Account Aggregator",
                          groupValue: consent,
                          onChanged: (value) {
                            setState(() {
                              consent = value.toString();
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                color: Color.fromARGB(255, 255, 255, 255),
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.all(2),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Icon(Icons.move_down_sharp,
                            color: Color.fromARGB(255, 201, 150, 10)),
                      ),
                      SizedBox(width: 25),
                      ListTile(
                        title: const Text(
                          'Pull My Details From',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        leading: Radio(
                          value: "Internet Banking",
                          groupValue: consent,
                          onChanged: (value) {
                            setState(() {
                              consent = value.toString();
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                color: Color.fromARGB(255, 255, 255, 255),
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.all(2),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Icon(Icons.upload_file_rounded,
                            color: Color.fromARGB(255, 201, 150, 10)),
                      ),
                      SizedBox(width: 25),
                      ListTile(
                        title: const Text(
                          'Uplode My Document and Pre-fill',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        leading: Radio(
                          value: "E-Statements",
                          groupValue: consent,
                          onChanged: (value) {
                            setState(() {
                              consent = value.toString();
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                color: Color.fromARGB(255, 255, 255, 255),
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.all(2),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Icon(Icons.edit_attributes_sharp,
                            color: Color.fromARGB(255, 201, 150, 10)),
                      ),
                      SizedBox(width: 25),
                      ListTile(
                        title: const Text(
                          'Manual Fill',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        leading: Radio(
                          value: "Manual-fill",
                          groupValue: consent,
                          onChanged: (value) {
                            setState(() {
                              consent = value.toString();
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Personal Details",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Icon(
                          Icons.arrow_drop_down,
                          color: Color.fromARGB(255, 201, 150, 10),
                          size: 30,
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    const Divider(),
                    const SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Recommended Product",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, color: Colors.black),
                        ),
                        Icon(
                          Icons.arrow_drop_down,
                          color: Color.fromARGB(255, 201, 150, 10),
                          size: 30,
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              Center(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    width: double.infinity,
                    height: 40,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => P_Image(),
                            ));

                     
                      },
                      child: const Text("submit"),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Center(
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    width: 140,
                    height: 40,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Tp(),
                            ));
                      },
                      child: const Text("instant quate"),
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
