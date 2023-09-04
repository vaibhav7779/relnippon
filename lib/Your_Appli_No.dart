import 'package:flutter/material.dart';

import '1Eypage.dart';
import 'Pimage.dart';
import 'Thankyou.dart';
// import 'package:reliance_demo/1Eypage.dart';
// import 'package:sar/pages/income_verification.dart';
// import 'package:sar/pages/add_income_proof.dart';
// import 'package:sar/pages/income_verification.dart';
// import 'package:sar/pages/income_verification.dart';
// import 'package:step_progress_indicator/step_progress_indicator.dart';

bool isChecked = false;

class Your_Application extends StatefulWidget {
  const Your_Application({super.key});

  @override
  State<Your_Application> createState() => _Your_ApplicationState();
}

String cardSel = 'agent';
String? consent;
String dropdownIncome = 'salary';
String dropdownComp = 'Yes';

class _Your_ApplicationState extends State<Your_Application> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Personal Details"),
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
                Center(
                  child: Stack(
                    children: <Widget>[
                      Container(
                        alignment: Alignment.center,
                        child: Image.asset(
                          'assets/payment_image.png',
                          height: 121,
                          width: 570,
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "Your application no is -AN345678",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ],
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
                        const SizedBox(height: 10),
                        Text(
                          "Select Source of Funds",
                          style: const TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w200),
                        ),
                        const SizedBox(height: 30),
                        DropdownButtonFormField(
                          decoration: const InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              borderSide:
                                  BorderSide(color: Colors.black, width: 1),
                            ),
                            contentPadding: EdgeInsets.fromLTRB(10, 18, 10, 18),
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.black, width: 1),
                            ),
                            filled: false,
                            fillColor: Colors.white,
                            labelText: 'Income Type',
                            labelStyle: TextStyle(color: Colors.grey),
                          ),
                          iconEnabledColor: Color.fromARGB(255, 20, 31, 226),
                          dropdownColor: Colors.white,
                          value: dropdownIncome,
                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownIncome = newValue!;
                            });
                          },
                          items: <String>[
                            'salary',
                            'Yes',
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                              ),
                            );
                          }).toList(),
                        ),
                        const SizedBox(height: 20),
                        Text(
                          "Do you want to tag SI to the policy ?",
                          style: const TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w400),
                        ),
                        const SizedBox(height: 8),
                        Row(
                          children: [
                            Expanded(
                                child: ConstrainedBox(
                              constraints: const BoxConstraints(
                                maxWidth: 300,
                              ),
                              child: RadioListTile(
                                title: const Text("Yes"),
                                value: "Yes",
                                groupValue: consent,
                                onChanged: (value) {
                                  setState(() {
                                    consent = value.toString();
                                  });
                                },
                              ),
                            )),
                            Expanded(
                                child: ConstrainedBox(
                              constraints: const BoxConstraints(
                                maxWidth: 300,
                              ),
                              child: RadioListTile(
                                title: const Text("No"),
                                value: "No",
                                groupValue: consent,
                                onChanged: (value) {
                                  setState(() {
                                    consent = value.toString();
                                  });
                                },
                              ),
                            )),
                          ],
                        ),
                        const SizedBox(height: 20),
                        Text(
                          " Select Payment Option",
                          style: const TextStyle(
                              fontSize: 14, fontWeight: FontWeight.normal),
                        ),
                        const SizedBox(height: 40),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              "UPI",
                              style: TextStyle(
                                fontWeight: FontWeight.w200,
                              ),
                            ),
                            Icon(
                              Icons.arrow_drop_down,
                              color: Color.fromARGB(255, 211, 152, 3),
                              size: 30,
                            ),
                          ],
                        ),
                        const SizedBox(height: 5),
                        Divider(),
                        const SizedBox(height: 5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              "Net Banking",
                              style: TextStyle(
                                fontWeight: FontWeight.w200,
                              ),
                            ),
                            Icon(
                              Icons.arrow_drop_down,
                              color: Color.fromARGB(255, 211, 152, 3),
                              size: 30,
                            ),
                          ],
                        ),
                        const SizedBox(height: 5),
                        Divider(),
                        const SizedBox(height: 5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              "Wallet",
                              style: TextStyle(
                                fontWeight: FontWeight.w200,
                              ),
                            ),
                            Icon(
                              Icons.arrow_drop_down,
                              color: Color.fromARGB(255, 211, 152, 3),
                              size: 30,
                            ),
                          ],
                        ),
                        const SizedBox(height: 5),
                        Divider(),
                        const SizedBox(height: 5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              "EMI",
                              style: TextStyle(
                                fontWeight: FontWeight.w200,
                              ),
                            ),
                            Icon(
                              Icons.arrow_drop_down,
                              color: Color.fromARGB(255, 211, 152, 3),
                              size: 30,
                            ),
                          ],
                        ),
                        const SizedBox(height: 5),
                        Divider(),
                        const SizedBox(height: 5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              "Cards",
                              style: TextStyle(
                                fontWeight: FontWeight.w200,
                              ),
                            ),
                            Icon(
                              Icons.arrow_drop_down,
                              color: Color.fromARGB(255, 211, 152, 3),
                              size: 30,
                            ),
                          ],
                        ),
                        const SizedBox(height: 5),
                        Divider(),
                        const SizedBox(height: 5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              "Cheque",
                              style: TextStyle(
                                fontWeight: FontWeight.w200,
                              ),
                            ),
                            Icon(
                              Icons.arrow_drop_down,
                              color: Color.fromARGB(255, 211, 152, 3),
                              size: 30,
                            ),
                          ],
                        ),
                      ],
                    ),
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
                                builder: (context) => Thanks_image(),
                              ));
                        },
                        child: const Text("Pay now"),
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
