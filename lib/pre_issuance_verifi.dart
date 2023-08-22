import 'package:flutter/material.dart';
import 'package:reliance_demo/Position_your_face.dart';
import 'package:reliance_demo/tp.dart';

class Verification extends StatefulWidget {
  const Verification({super.key});

  @override
  State<Verification> createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {
  String? consent;

  bool? check1 = false;
  bool? check2 = false;
  bool? check3 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 18, 24, 214),
        title: Image.asset(
          'assets/download 1.png',
          height: 38,
          width: 230,
          fit: BoxFit.fitWidth,
        ),
        actions: <Widget>[
          Icon(Icons.search_sharp, color: Colors.white),
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
                ListTile(
                  title: const Text(
                    'Hii',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                ),
                ListTile(
                  title: const Text(
                    'vishal',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
                  ),
                ),
                ListTile(
                  title: const Text(
                    'PRE-ISSURANCE-VERIFICATION',
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.w100),
                  ),
                ),
                const SizedBox(height: 16),
                ListTile(
                  title: const Text(
                    'Thank you for choosing Reliance Nippon Life Insurance Nischit Samruddh for securing your future . Pre-issuance verification process is mandatory for further processing of your insurance proposal.',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                  ),
                ),
                const SizedBox(height: 16),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  elevation: 5,
                  child: Padding(
                    padding: const EdgeInsets.all(2),
                    child: Column(
                      children: [
                        const SizedBox(height: 16),
                        ListTile(
                          title: const Text(
                            'Your Varification Process will be Completed in easy step',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w400),
                          ),
                        ),
                        const SizedBox(height: 16),
                        const Divider(),
                        const SizedBox(height: 16),
                        Container(
                          alignment: Alignment.center,
                          child: Image.asset(
                            'assets/Group.png',
                            height: 301,
                            width: 360,
                            fit: BoxFit.fitWidth,
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
                                        builder: (context) => Face_Pos(),
                                      ));
                                },
                                child: const Text(" Start Your Verification "),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                      ],
                    ),
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
