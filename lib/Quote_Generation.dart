import 'package:flutter/material.dart';

import '1Eypage.dart';
import 'Pimage.dart';
import 'Your_Appli_No.dart';
// import 'package:reliance_demo/1Eypage.dart';
// import 'package:sar/pages/income_verification.dart';
// import 'package:sar/pages/add_income_proof.dart';
// import 'package:sar/pages/income_verification.dart';
// import 'package:sar/pages/income_verification.dart';
// import 'package:step_progress_indicator/step_progress_indicator.dart';

bool isChecked = false;

class Quate_General extends StatefulWidget {
  const Quate_General({super.key});

  @override
  State<Quate_General> createState() => _Quate_GeneralState();
}

String cardSel = 'agent';
String? consent;
String dropdownIncome = 'Annual';
String dropdownComp = 'Yes';

class _Quate_GeneralState extends State<Quate_General> {
  bool? check1 = false;
  bool? check2 = false;
  bool? check3 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Quote Generation"),
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
                Center(
                  child: Stack(
                    children: <Widget>[
                      Container(
                        alignment: Alignment.center,
                        child: Image.asset(
                          'assets/Quateimage.png',
                          height: 121,
                          width: 570,
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  "  Hi, Vishal!",
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
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
                          "Kindly provide below details",
                          style: const TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w200),
                        ),
                        const SizedBox(height: 30),
                        TextFormField(
                          autofocus: false,
                          initialValue: "₹ 2,00,000",
                          decoration: const InputDecoration(
                            labelText: "Investment",
                            border: OutlineInputBorder(),
                            filled: true, //<-- SEE HERE
                            fillColor: Colors.white,
                          ),
                          readOnly: true,
                        ),
                        const SizedBox(height: 30),
                        Text(
                          "  Tenure",
                          style: const TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w500),
                        ),
                        Center(
                          child: Stack(
                            children: <Widget>[
                              Container(
                                alignment: Alignment.center,
                                child: Image.asset(
                                  'assets/1prog.png',
                                  height: 121,
                                  width: 390,
                                  fit: BoxFit.fitWidth,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 20),
                        Text(
                          "  Policy Term",
                          style: const TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w500),
                        ),
                        Center(
                          child: Stack(
                            children: <Widget>[
                              Container(
                                alignment: Alignment.center,
                                child: Image.asset(
                                  'assets/2prog.png',
                                  height: 121,
                                  width: 390,
                                  fit: BoxFit.fitWidth,
                                ),
                              ),
                            ],
                          ),
                        ),
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
                            'Annual',
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
                        const SizedBox(height: 40),
                        Text(
                          "  Select Aditional Ride",
                          style: const TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w500),
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
                                Row(
                                  children: [
                                    const Text(
                                      " Critical Rider                                                        ",
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const Text(
                                      "      ",
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    Checkbox(
                                      value: check1,
                                      onChanged: (bool? value) {
                                        setState(() {
                                          check1 = value;
                                        });
                                      },
                                    ),
                                    const SizedBox(width: 10),
                                  ],
                                ),
                                const Text(
                                  " ₹ 5,000",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
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
                                Row(
                                  children: [
                                    const SizedBox(width: 10),
                                    const Flexible(
                                      child: Text(
                                        "Accidental Death Protection Ride                     ",
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    Checkbox(
                                      value: check2,
                                      onChanged: (bool? value) {
                                        setState(() {
                                          check2 = value;
                                        });
                                      },
                                    ),
                                  ],
                                ),
                                const Text(
                                  "  ₹ 5,000",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
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
                                Row(
                                  children: [
                                    const Text(
                                      " No Ride                                                               ",
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const Text(
                                      "      ",
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    Checkbox(
                                      value: check3,
                                      onChanged: (bool? value) {
                                        setState(() {
                                          check3 = value;
                                        });
                                      },
                                    ),
                                    const SizedBox(width: 10),
                                  ],
                                ),
                                const Text(
                                  " ₹ 0",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 30),
                        TextFormField(
                          autofocus: false,
                          initialValue: "₹ 2,05,000",
                          decoration: const InputDecoration(
                            labelText: "Premium",
                            border: OutlineInputBorder(),
                            filled: true, //<-- SEE HERE
                            fillColor: Colors.white,
                            suffixIcon: Icon(
                              Icons.add,
                              color: Color.fromRGBO(233, 122, 42, 1),
                            ),
                          ),
                          readOnly: true,
                        ),
                        const SizedBox(height: 30),
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(2),
                          ),
                          elevation: 5,
                          child: Padding(
                            padding: const EdgeInsets.all(11),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                const Text(
                                  "Premium breakup",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(2),
                          ),
                          elevation: 5,
                          child: Padding(
                            padding: const EdgeInsets.all(11),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Row(
                                  children: [
                                    const Text(
                                      "Base premium                ",
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w200,
                                      ),
                                    ),
                                    const Text(
                                      "₹2,00,000",
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w200,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(2),
                          ),
                          elevation: 5,
                          child: Padding(
                            padding: const EdgeInsets.all(11),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Row(
                                  children: [
                                    const Text(
                                      "Ride premium-Cl            ",
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w200,
                                      ),
                                    ),
                                    const Text(
                                      "₹5,000",
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w200,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(2),
                          ),
                          elevation: 5,
                          child: Padding(
                            padding: const EdgeInsets.all(11),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Row(
                                  children: [
                                    const Text(
                                      "Total premium                ",
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const Text(
                                      "₹2,05,000",
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 30),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              "Rahul you also receive a life cover of",
                              style: TextStyle(
                                  fontWeight: FontWeight.w200,
                                  color: Color.fromARGB(255, 32, 86, 235),
                                  fontSize: 16),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              "₹25,00,000",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromARGB(255, 235, 154, 32),
                                  fontSize: 20),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Center(
                  child: Stack(
                    children: <Widget>[
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Image.asset(
                          'assets/benefit.png',
                          height: 350,
                          width: 600,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 460,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: () {
                      //LoanDisbursed
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Your_Application(),
                          ));
                    },
                    child: Text("send direct link to customer "),
                    style: ElevatedButton.styleFrom(
                        side: BorderSide(
                            color: Color.fromARGB(255, 40, 129, 207)),
                        foregroundColor: Color.fromARGB(255, 30, 103, 181),
                        backgroundColor: Color(0xFFFFFFFF)),
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "By counting i conform that i have read and",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "understood the electronic benefit illustration",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                    ),
                  ],
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
                                builder: (context) => Your_Application(),
                              ));
                        },
                        child: const Text("Agree and Proceed"),
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
