import 'package:flutter/material.dart';
import 'package:reliance_demo/Position_your_face.dart';
import 'package:reliance_demo/tp.dart';

import 'Request_co_browsing.dart';

class AA_PVT_LTD extends StatefulWidget {
  const AA_PVT_LTD({super.key});

  @override
  State<AA_PVT_LTD> createState() => _AA_PVT_LTDState();
}

class _AA_PVT_LTDState extends State<AA_PVT_LTD> {
  String? consent;
  bool detailsRadio = false;
  bool temrsRadio = false;

  bool? check1 = false;
  bool? check2 = false;
  bool? check3 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
                ListTile(
                  title: const Text(
                    'AA Pvt.Ltd',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w100,
                        color: Color.fromARGB(255, 56, 35, 240)),
                  ),
                ),
                ListTile(
                  title: const Text(
                    'Requires customers consent',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                ListTile(
                  title: const Text(
                    'Requested on 19 july 2023',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w100,
                        color: Color.fromARGB(255, 187, 187, 187)),
                  ),
                ),
                ListTile(
                  title: const Text(
                    'AA handler: AAdemo@AA.com',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w300,
                        color: Color.fromARGB(255, 0, 0, 0)),
                  ),
                ),
                ListTile(
                  title: const Text(
                    'Details of access on the account information',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w100,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  elevation: 5,
                  child: Padding(
                    padding: const EdgeInsets.all(0),
                    child: Column(children: [
                      ListTile(
                        title: const Text(
                          '         Details of access on the account information',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w100,
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: Image.asset(
                          'assets/Pcontainer.png',
                          height: 111,
                          width: 360,
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: Image.asset(
                          'assets/Acontainer.png',
                          height: 111,
                          width: 360,
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                      ListTile(
                        title: const Text(
                          '           Select Accounta',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w100,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            alignment: Alignment.topLeft,
                            child: Image.asset(
                              'assets/1bank.png',
                              height: 127,
                              width: 390,
                            ),
                          ),
                          const SizedBox(height: 46),
                          Checkbox(
                            value: detailsRadio,
                            onChanged: (value) {
                              setState(() {
                                detailsRadio = value!;
                              });
                            },
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            alignment: Alignment.topLeft,
                            child: Image.asset(
                              'assets/iccbank.png',
                              height: 127,
                              width: 390,
                            ),
                          ),
                          Checkbox(
                            value: temrsRadio,
                            onChanged: (value) {
                              setState(() {
                                temrsRadio = value!;
                              });
                            },
                          ),
                        ],
                      ),
                      ListTile(
                        title: const Text(
                          '         Add Account',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w100,
                              color: Color.fromARGB(198, 8, 102, 93)),
                        ),
                      ),
                      const SizedBox(height: 20),
                    ]),
                  ),
                ),
                const SizedBox(height: 20),
                Center(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      width: 470,
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
              ]),
        ),
      ),
    );
  }
}
