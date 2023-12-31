import 'package:flutter/material.dart';

import '1Eypage.dart';
import '5thpage.dart';
import 'Quote_Generation.dart';

bool isChecked = false;

class P_Detail extends StatefulWidget {
  const P_Detail({super.key});

  @override
  State<P_Detail> createState() => _P_DetailState();
}

String? consent;
String cardSel = 'agent';

bool detailsRadio = false;
bool temrsRadio = false;

class _P_DetailState extends State<P_Detail> {
  String dropdownIncome = 'No';
  String dropdownComp = 'Yes';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 18, 24, 214),
        title: const Text(
          "Personal Detail",
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
              const Text(
                "Hi, Vishal",
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
                        "Kindly provide your personal detail ",
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
                        initialValue: "01/01/1992",
                        decoration: const InputDecoration(
                          labelText: "DOB",
                          border: OutlineInputBorder(),
                          filled: true, //<-- SEE HERE
                          fillColor: Color(0xFFF5F5F5),
                        ),
                        readOnly: true,
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        "Tobacco Consumption ",
                        style: const TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
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
                      TextFormField(
                        autofocus: false,
                        initialValue: "bachelore",
                        decoration: const InputDecoration(
                          labelText: "Education Qualification",
                          border: OutlineInputBorder(),
                          filled: true, //<-- SEE HERE
                          fillColor: Color(0xFFF5F5F5),
                          suffixIcon: Icon(
                            Icons.arrow_drop_down,
                            color: Color.fromRGBO(14, 48, 170, 1),
                          ),
                        ),
                        readOnly: true,
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        autofocus: false,
                        initialValue: "Realtor",
                        decoration: const InputDecoration(
                          labelText: "Occupation",
                          border: OutlineInputBorder(),
                          filled: true, //<-- SEE HERE
                          fillColor: Color(0xFFF5F5F5),
                        ),
                        readOnly: true,
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
                      const SizedBox(height: 20),
                      TextFormField(
                        autofocus: false,
                        initialValue: "enter product name",
                        decoration: const InputDecoration(
                          labelText: "Product",
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
              Center(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    width: 420,
                    height: 40,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Quate_General(),
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
