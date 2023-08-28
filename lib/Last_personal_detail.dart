import 'package:flutter/material.dart';

import '1Eypage.dart';
import 'Pimage.dart';
// import 'package:reliance_demo/1Eypage.dart';
// import 'package:sar/pages/income_verification.dart';
// import 'package:sar/pages/add_income_proof.dart';
// import 'package:sar/pages/income_verification.dart';
// import 'package:sar/pages/income_verification.dart';
// import 'package:step_progress_indicator/step_progress_indicator.dart';

bool isChecked = false;

class Last_P_Detail extends StatefulWidget {
  const Last_P_Detail({super.key});

  @override
  State<Last_P_Detail> createState() => _Last_P_DetailState();
}

String cardSel = 'agent';
String? consent;
String dropdownIncome = 'Bachelors';
String dropdownComp = 'Yes';

class _Last_P_DetailState extends State<Last_P_Detail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Personal Details"),
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
                        'assets/Lastimage.png',
                        height: 121,
                        width: 570,
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              ListTile(
                title: const Text(
                  'Hi, Vishal!',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
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
                        "kindly provide your personal detail",
                        style: const TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        autofocus: false,
                        initialValue: "Vishal Bharadwaj",
                        decoration: const InputDecoration(
                          labelText: "Name",
                          border: OutlineInputBorder(),
                          filled: true, //<-- SEE HERE
                          fillColor: Colors.white,
                        ),
                        readOnly: true,
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        autofocus: false,
                        initialValue: "vishal.b@igmail.com",
                        decoration: const InputDecoration(
                          labelText: "Email Address",
                          border: OutlineInputBorder(),
                          filled: true, //<-- SEE HERE
                          fillColor: Colors.white,
                        ),
                        readOnly: true,
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        autofocus: false,
                        initialValue: "+91 9876523986",
                        decoration: const InputDecoration(
                          labelText: "Mobile Number",
                          border: OutlineInputBorder(),
                          filled: true, //<-- SEE HERE
                          fillColor: Colors.white,
                        ),
                        readOnly: true,
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        "Gender",
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                cardSel = 'customer';
                              });
                            },
                            child: Card(
                              shape: cardSel == 'customer'
                                  ? new RoundedRectangleBorder(
                                      side: new BorderSide(
                                          color: Color(0xFFF7B61A), width: 2.0),
                                      borderRadius: BorderRadius.circular(4.0))
                                  : new RoundedRectangleBorder(
                                      side: new BorderSide(
                                          color: Colors.white, width: 2.0),
                                      borderRadius: BorderRadius.circular(4.0)),
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      'assets/agent.png',
                                      height: 80,
                                      width: 180,
                                    ),
                                    const SizedBox(height: 10),
                                    const Text(
                                      "Male",
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                cardSel = 'agent';
                              });
                            },
                            child: Card(
                              shape: cardSel == 'agent'
                                  ? new RoundedRectangleBorder(
                                      side: new BorderSide(
                                          color: Color(0xFFF7B61A), width: 2.0),
                                      borderRadius: BorderRadius.circular(4.0))
                                  : new RoundedRectangleBorder(
                                      side: new BorderSide(
                                          color: Colors.white, width: 2.0),
                                      borderRadius: BorderRadius.circular(4.0)),
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      'assets/customer.png',
                                      height: 80,
                                      width: 180,
                                    ),
                                    const SizedBox(height: 10),
                                    const Text(
                                      "Female",
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        autofocus: false,
                        initialValue: "01/01/1992",
                        decoration: const InputDecoration(
                          labelText: "DOB",
                          border: OutlineInputBorder(),
                          filled: true, //<-- SEE HERE
                          fillColor: Colors.white,
                        ),
                        readOnly: true,
                      ),
                      const SizedBox(height: 20),
                      ListTile(
                        title: const Text(
                          'Tabacco Consumption',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                      ),
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
                      DropdownButtonFormField(
                        decoration: const InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
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
                          'Bachelors',
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
                      TextFormField(
                        autofocus: false,
                        initialValue: "Realtor",
                        decoration: const InputDecoration(
                          labelText: "Occupation",
                          border: OutlineInputBorder(),
                          filled: true, //<-- SEE HERE
                          fillColor: Colors.white,
                        ),
                        readOnly: true,
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        autofocus: false,
                        initialValue: "₹ 12,00,000",
                        decoration: const InputDecoration(
                          labelText: "Annual Income",
                          border: OutlineInputBorder(),
                          filled: true, //<-- SEE HERE
                          fillColor: Colors.white,
                        ),
                        readOnly: true,
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        autofocus: false,
                        initialValue: "AAAPB1234M",
                        decoration: const InputDecoration(
                          labelText: "Pan Number",
                          border: OutlineInputBorder(),
                          filled: true, //<-- SEE HERE
                          fillColor: Colors.white,
                        ),
                        readOnly: true,
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        autofocus: false,
                        initialValue: "Nischit Samrudhi",
                        decoration: const InputDecoration(
                          labelText: "Product",
                          border: OutlineInputBorder(),
                          filled: true, //<-- SEE HERE
                          fillColor: Colors.white,
                        ),
                        readOnly: true,
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
                      onPressed: () {},
                      child: const Text("Next"),
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
