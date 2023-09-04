import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';
// import 'package:otp_text_field/style.dart';
import 'package:reliance_demo/pre_issuance_verifi.dart';

import 'Request_co_browsing.dart';
// import 'package:otp_text_field/otp_field.dart';

bool isChecked = false;

class OTPValidation extends StatefulWidget {
  const OTPValidation({super.key});

  @override
  State<OTPValidation> createState() => _OTPValidationState();
}

class _OTPValidationState extends State<OTPValidation> {
  OtpFieldController otpController = OtpFieldController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        actions: const <Widget>[
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
              const SizedBox(height: 30),
              const Center(
                child: Text(
                  "Enter OTP",
                  style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w100,
                      color: Color.fromARGB(255, 35, 53, 251)),
                ),
              ),
              const SizedBox(height: 30),
              const Text(
                "  Enter 6-digit OTP code that has been send to ",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const Text(
                "  8208828231 ",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              const SizedBox(height: 20),
              OTPTextField(
                  obscureText: true,
                  controller: otpController,
                  length: 6,
                  width: MediaQuery.of(context).size.width,
                  textFieldAlignment: MainAxisAlignment.spaceEvenly,
                  fieldWidth: 45,
                  fieldStyle: FieldStyle.box,
                  outlineBorderRadius: 15,
                  style: const TextStyle(fontSize: 32),
                  onChanged: (pin) {
                    print("Changed: $pin");
                  },
                  onCompleted: (pin) {
                    print("Completed: $pin");
                  }),
              const SizedBox(height: 20),
              Row(
                children: [
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Haven't got the conformation code yet ?",
                        style: TextStyle(color: Color.fromRGBO(0, 0, 0, 1)),
                      )),
                  const Text(
                    "    Resend",
                    style: TextStyle(color: Color.fromRGBO(14, 173, 128, 1)),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Center(
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    width: 460,
                    height: 40,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Request_Co_B(),
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
