import 'package:flutter/material.dart';

import '1Eypage.dart';
import 'Document_uplode.dart';
import 'Pimage.dart';
// import 'package:reliance_demo/1Eypage.dart';
// import 'package:sar/pages/income_verification.dart';
// import 'package:sar/pages/add_income_proof.dart';
// import 'package:sar/pages/income_verification.dart';
// import 'package:sar/pages/income_verification.dart';
// import 'package:step_progress_indicator/step_progress_indicator.dart';

bool isChecked = false;

class Life_Assured extends StatefulWidget {
  const Life_Assured({super.key});

  @override
  State<Life_Assured> createState() => _Life_AssuredState();
}

String cardSel = 'agent';
String? consent;
String? consentt;
String? radiotyoe;
String? conse;
String? cons;
String? con;
String? typee;
String? type;
String dropdownIncome = 'Bachelors';
String dropdownComp = 'Yes';

class _Life_AssuredState extends State<Life_Assured> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Proposal Form"),
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
                          'assets/LifeAssured.png',
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
                    'Life aasured Details',
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
                          "Enter life assured detail",
                          style: const TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 20),
                        TextFormField(
                          autofocus: false,
                          initialValue: "Mr.",
                          decoration: const InputDecoration(
                            labelText: "Title",
                            border: OutlineInputBorder(),
                            filled: true, //<-- SEE HERE
                            fillColor: Colors.white,
                          ),
                          readOnly: true,
                        ),
                        const SizedBox(height: 20),
                        TextFormField(
                          autofocus: false,
                          initialValue: "Vishal Bhardwaj",
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
                          initialValue: "Male",
                          decoration: const InputDecoration(
                            labelText: "Gender",
                            border: OutlineInputBorder(),
                            filled: true, //<-- SEE HERE
                            fillColor: Colors.white,
                          ),
                          readOnly: true,
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
                          initialValue: "789534562356",
                          decoration: const InputDecoration(
                            labelText: "Aadhaar Number",
                            border: OutlineInputBorder(),
                            filled: true, //<-- SEE HERE
                            fillColor: Colors.white,
                          ),
                          readOnly: true,
                        ),
                        const SizedBox(height: 20),
                        TextFormField(
                          autofocus: false,
                          initialValue: "Occupation Number",
                          decoration: const InputDecoration(
                            labelText: "Realtor",
                            border: OutlineInputBorder(),
                            filled: true, //<-- SEE HERE
                            fillColor: Colors.white,
                          ),
                          readOnly: true,
                        ),
                        const SizedBox(height: 20),
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
                          initialValue: "₹ 2,00,000",
                          decoration: const InputDecoration(
                            labelText: "Annual Income",
                            border: OutlineInputBorder(),
                            filled: true, //<-- SEE HERE
                            fillColor: Colors.white,
                          ),
                          readOnly: true,
                        ),
                        const SizedBox(height: 20),
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
                        ListTile(
                          title: const Text(
                            'Tabacco Consumption ?',
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
                        ListTile(
                          title: const Text(
                            'Are you physically disabled ?',
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
                                groupValue: radiotyoe,
                                onChanged: (value) {
                                  setState(() {
                                    radiotyoe = value.toString();
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
                                groupValue: radiotyoe,
                                onChanged: (value) {
                                  setState(() {
                                    radiotyoe = value.toString();
                                  });
                                },
                              ),
                            )),
                          ],
                        ),
                        const SizedBox(height: 20),
                        TextFormField(
                          autofocus: false,
                          initialValue:
                              " House No.- 123 Sector- 10 Vasant Vihar, Delhi, 110011",
                          decoration: const InputDecoration(
                            labelText: " Address",
                            border: OutlineInputBorder(),
                            filled: true, //<-- SEE HERE
                            fillColor: Color(0xFFF5F5F5),
                          ),
                          readOnly: true,
                          maxLines: 3,
                        ),
                        const SizedBox(height: 20),
                        TextFormField(
                          autofocus: false,
                          initialValue: "+91 9999999999",
                          decoration: const InputDecoration(
                            labelText: "Contact Details",
                            border: OutlineInputBorder(),
                            filled: true, //<-- SEE HERE
                            fillColor: Colors.white,
                          ),
                          readOnly: true,
                        ),
                        const SizedBox(height: 20),
                      ],
                    ),
                  ),
                ),
                //3rd form
                const SizedBox(height: 20),
                ListTile(
                  title: const Text(
                    'Nominee Details',
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
                          "Enter nominee detail",
                          style: const TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 20),
                        TextFormField(
                          autofocus: false,
                          initialValue: "Ankita",
                          decoration: const InputDecoration(
                            labelText: "First name",
                            border: OutlineInputBorder(),
                            filled: true, //<-- SEE HERE
                            fillColor: Colors.white,
                          ),
                          readOnly: true,
                        ),
                        const SizedBox(height: 20),
                        TextFormField(
                          autofocus: false,
                          initialValue: "Enter your middle name",
                          decoration: const InputDecoration(
                            labelText: "Middle name",
                            border: OutlineInputBorder(),
                            filled: true, //<-- SEE HERE
                            fillColor: Colors.white,
                          ),
                          readOnly: true,
                        ),
                        const SizedBox(height: 20),
                        TextFormField(
                          autofocus: false,
                          initialValue: "Bharadwaj",
                          decoration: const InputDecoration(
                            labelText: "Last name",
                            border: OutlineInputBorder(),
                            filled: true, //<-- SEE HERE
                            fillColor: Colors.white,
                          ),
                          readOnly: true,
                        ),
                        const SizedBox(height: 20),
                        TextFormField(
                          autofocus: false,
                          initialValue: "Female",
                          decoration: const InputDecoration(
                            labelText: "Gender",
                            border: OutlineInputBorder(),
                            filled: true, //<-- SEE HERE
                            fillColor: Colors.white,
                          ),
                          readOnly: true,
                        ),
                        const SizedBox(height: 20),
                        TextFormField(
                          autofocus: false,
                          initialValue: "01/01/1992",
                          decoration: const InputDecoration(
                            labelText: "Dob",
                            border: OutlineInputBorder(),
                            filled: true, //<-- SEE HERE
                            fillColor: Colors.white,
                          ),
                          readOnly: true,
                        ),
                        const SizedBox(height: 20),
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
                      ],
                    ),
                  ),
                ),
                ListTile(
                  title: const Text(
                    'Payout details',
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
                          "Check payout detail",
                          style: const TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 20),
                        TextFormField(
                          autofocus: false,
                          initialValue: "vishal Bharadwaj",
                          decoration: const InputDecoration(
                            labelText: "Account holder name",
                            border: OutlineInputBorder(),
                            filled: true, //<-- SEE HERE
                            fillColor: Colors.white,
                          ),
                          readOnly: true,
                        ),
                        const SizedBox(height: 20),
                        TextFormField(
                          autofocus: false,
                          initialValue: "697584728250",
                          decoration: const InputDecoration(
                            labelText: "Account Number",
                            border: OutlineInputBorder(),
                            filled: true, //<-- SEE HERE
                            fillColor: Colors.white,
                          ),
                          readOnly: true,
                        ),
                        const SizedBox(height: 20),
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
                          initialValue: "INDB000341",
                          decoration: const InputDecoration(
                            labelText: "IFSC Code",
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
                ListTile(
                  title: const Text(
                    'Health confirmation',
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
                            "have you been treated for and /or taken medication for any of the following ?",
                            style: const TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 20),
                          ListTile(
                            title: const Text(
                              'Hypertension ?',
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
                                  groupValue: consentt,
                                  onChanged: (value) {
                                    setState(() {
                                      consentt = value.toString();
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
                                  groupValue: consentt,
                                  onChanged: (value) {
                                    setState(() {
                                      consentt = value.toString();
                                    });
                                  },
                                ),
                              )),
                            ],
                          ),
                          const SizedBox(height: 20),
                          ListTile(
                            title: const Text(
                              'High blood pressure',
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
                                  groupValue: type,
                                  onChanged: (value) {
                                    setState(() {
                                      type = value.toString();
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
                                  groupValue: type,
                                  onChanged: (value) {
                                    setState(() {
                                      type = value.toString();
                                    });
                                  },
                                ),
                              )),
                            ],
                          ),
                          const SizedBox(height: 20),
                          ListTile(
                            title: const Text(
                              'Diabetes',
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
                                  groupValue: typee,
                                  onChanged: (value) {
                                    setState(() {
                                      typee = value.toString();
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
                                  groupValue: typee,
                                  onChanged: (value) {
                                    setState(() {
                                      typee = value.toString();
                                    });
                                  },
                                ),
                              )),
                            ],
                          ),
                          const SizedBox(height: 20),
                          ListTile(
                            title: const Text(
                              'Psychiatric disorders',
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
                                  groupValue: con,
                                  onChanged: (value) {
                                    setState(() {
                                      con = value.toString();
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
                                  groupValue: con,
                                  onChanged: (value) {
                                    setState(() {
                                      con = value.toString();
                                    });
                                  },
                                ),
                              )),
                            ],
                          ),
                          const SizedBox(height: 20),
                          ListTile(
                            title: const Text(
                              'Blood disorders',
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
                                  groupValue: cons,
                                  onChanged: (value) {
                                    setState(() {
                                      cons = value.toString();
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
                                  groupValue: cons,
                                  onChanged: (value) {
                                    setState(() {
                                      cons = value.toString();
                                    });
                                  },
                                ),
                              )),
                            ],
                          ),
                          const SizedBox(height: 20),
                          ListTile(
                            title: const Text(
                              'None of the above apply to me',
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
                                  groupValue: conse,
                                  onChanged: (value) {
                                    setState(() {
                                      conse = value.toString();
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
                                  groupValue: conse,
                                  onChanged: (value) {
                                    setState(() {
                                      conse = value.toString();
                                    });
                                  },
                                ),
                              )),
                            ],
                          ),
                        ]),
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
                                builder: (context) => AddAccount(),
                              ));
                        },
                        child: const Text("Next"),
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
