import 'package:flutter/material.dart';

import '1Eypage.dart';
import '5thpage.dart';
import 'Request_co_browsing.dart';

bool isChecked = false;

class Tp extends StatefulWidget {
  const Tp({super.key});

  @override
  State<Tp> createState() => _TpState();
}

String cardSel = 'agent';

bool detailsRadio = false;
bool temrsRadio = false;

class _TpState extends State<Tp> {
  String dropdownIncome = 'No';
  String dropdownComp = 'Yes';

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
              const SizedBox(height: 24),
              const Text(
                "Personal Details",
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),
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
                      const Text(
                        "Confirm Details",
                        style: const TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w400),
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        autofocus: false,
                        initialValue: "vishal Bharadwaj",
                        decoration: const InputDecoration(
                          labelText: "Name",
                          border: OutlineInputBorder(),
                          filled: true, //<-- SEE HERE
                          fillColor: Color(0xFFF5F5F5),
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
                          fillColor: Color(0xFFF5F5F5),
                        ),
                        readOnly: true,
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        autofocus: false,
                        initialValue: "+91 9876543210",
                        decoration: const InputDecoration(
                          labelText: "Mobile Number",
                          border: OutlineInputBorder(),
                          filled: true, //<-- SEE HERE
                          fillColor: Color(0xFFF5F5F5),
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
                        initialValue: "02/03/1989",
                        decoration: const InputDecoration(
                          labelText: "Date Of Birth",
                          border: OutlineInputBorder(),
                          filled: true, //<-- SEE HERE
                          fillColor: Color(0xFFF5F5F5),
                        ),
                        readOnly: true,
                      ),
                      const SizedBox(height: 20),
                      DropdownButtonFormField(
                        decoration: const InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 1),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 1),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          labelText: 'Tobacco Consumption',
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
                          'No',
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
                      DropdownButtonFormField(
                        decoration: const InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 1),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 1),
                          ),
                          filled: true,
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
                          'No',
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
                      DropdownButtonFormField(
                        decoration: const InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 1),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 1),
                          ),
                          filled: true,
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
                          'No',
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
                        initialValue: "12,00,000",
                        decoration: const InputDecoration(
                          labelText: "Annual Income",
                          border: OutlineInputBorder(),
                          filled: true, //<-- SEE HERE
                          fillColor: Color(0xFFF5F5F5),
                        ),
                        readOnly: true,
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        autofocus: false,
                        initialValue: "ABCDE1234A",
                        decoration: const InputDecoration(
                          labelText: "Pan Number",
                          border: OutlineInputBorder(),
                          filled: true, //<-- SEE HERE
                          fillColor: Color(0xFFF5F5F5),
                        ),
                        readOnly: true,
                      ),
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
                          builder: (context) => Request_Co_B(),
                        ));
                  },
                  child: Text("Confirm Details and Process "),
                  style: ElevatedButton.styleFrom(
                      side:
                          BorderSide(color: Color.fromARGB(255, 40, 129, 207)),
                      foregroundColor: Color.fromARGB(255, 30, 103, 181),
                      backgroundColor: Color(0xFFFFFFFF)),
                ),
              ),
              const SizedBox(height: 40),
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
                    color: Color.fromARGB(255, 17, 61, 220),
                    size: 30,
                  ),
                ],
              ),
              const SizedBox(height: 40),
              Center(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    width: 460,
                    height: 40,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text("Submit"),
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
                              builder: (context) => REcom_Prod(),
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
