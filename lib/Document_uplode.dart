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

class AddAccount extends StatefulWidget {
  const AddAccount({super.key});

  @override
  State<AddAccount> createState() => _AddAccountState();
}

class _AddAccountState extends State<AddAccount> {
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
                      Text(
                        "Verify via E-KYC",
                        style: const TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        autofocus: false,
                        initialValue: "1234567899",
                        decoration: const InputDecoration(
                          labelText: "Adhar Number",
                          border: OutlineInputBorder(),
                          filled: true, //<-- SEE HERE
                          fillColor: Color(0xFFF5F5F5),
                          suffixIcon: Text(
                            "Verify    ",
                            style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 46, 83, 232)),
                          ),
                        ),
                        readOnly: true,
                      ),
                      const SizedBox(height: 40),
                      Column(
                        children: [
                          Text(
                            "OR",
                            style: const TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Column(
                        children: [
                          Text(
                            "Upload the following document",
                            style: const TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
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
                              builder: (context) => P_Image(),
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
