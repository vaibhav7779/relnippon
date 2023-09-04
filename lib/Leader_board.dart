import 'package:flutter/material.dart';
import 'package:reliance_demo/1Eypage.dart';

import '6thpage.dart';
// import 'package:flutter_breadcrumb/flutter_breadcrumb.dart';
// import 'package:sar/pages/approval.dart';
// import 'package:sar/pages/loanSummary.dart';
// import 'package:step_progress_indicator/step_progress_indicator.dart';

// import 'e-nach.dart';
// import 'loan-disbursed.dart';

bool isChecked = true;

class Leader_Board extends StatefulWidget {
  const Leader_Board({super.key});

  @override
  State<Leader_Board> createState() => _Leader_BoardState();
}

String dropdownValue = 'one';

class _Leader_BoardState extends State<Leader_Board> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 18, 24, 214),
        title: const Text(
          "Leaderboard",
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
              Column(children: [
                Center(
                  child: Stack(
                    children: <Widget>[
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              "",
                              style: const TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w400),
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            child: Image.asset(
                              'assets/rahuljoshi.png',
                              height: 51,
                              width: 50,
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                          Expanded(
                            child: Text(
                              "    Rahul Joshi",
                              style: const TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w400),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              "",
                              style: const TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w400),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 6),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(35.0),
                    side: const BorderSide(
                      color: Color(0xFFF7B61A),
                      width: 3,
                    ),
                  ),
                  elevation: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(2),
                    child: Column(children: [
                      const SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            "85 Policies away from improving your rank ",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            "by 10 Positions ",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                    ]),
                  ),
                ),
                const Divider(),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(35.0),
                    side: const BorderSide(
                      color: Color.fromARGB(255, 2, 49, 201),
                      width: 1,
                    ),
                  ),
                  elevation: 3,
                  child: Padding(
                    padding: const EdgeInsets.all(1),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Row(
                          children: [
                            Center(
                              child: DropdownButton<String>(
                                value: dropdownValue,
                                icon: const Icon(Icons.arrow_drop_down,
                                    color: Color.fromARGB(255, 29, 19, 220)),
                                style: const TextStyle(
                                    color: Color.fromARGB(255, 44, 30, 232)),
                                onChanged: (String? newValue) {
                                  setState(() {
                                    dropdownValue = newValue!;
                                  });
                                },
                                items: const [
                                  DropdownMenuItem<String>(
                                    value: 'one',
                                    child: Text('     Overall'),
                                  ),
                                  DropdownMenuItem<String>(
                                    value: 'two',
                                    child: Text('Overall'),
                                  ),
                                  DropdownMenuItem<String>(
                                    value: 'three',
                                    child: Text('Renewal'),
                                  ),
                                  DropdownMenuItem<String>(
                                    value: 'four',
                                    child: Text('Activation'),
                                  ),
                                  DropdownMenuItem<String>(
                                    value: 'five',
                                    child: Text('Loss Ratio'),
                                  ),
                                ],
                              ),
                            ),
                            Center(
                              child: DropdownButton<String>(
                                value: dropdownValue,
                                icon: const Icon(Icons.arrow_drop_down,
                                    color: Color.fromARGB(255, 29, 19, 220)),
                                style: const TextStyle(
                                    color: Color.fromARGB(255, 44, 30, 232)),
                                onChanged: (String? newValue) {
                                  setState(() {
                                    dropdownValue = newValue!;
                                  });
                                },
                                items: const [
                                  DropdownMenuItem<String>(
                                    value: 'one',
                                    child: Text(
                                        '                              west Zone'),
                                  ),
                                  DropdownMenuItem<String>(
                                    value: 'two',
                                    child: Text('Location'),
                                  ),
                                  DropdownMenuItem<String>(
                                    value: 'three',
                                    child: Text('Distric'),
                                  ),
                                  DropdownMenuItem<String>(
                                    value: 'four',
                                    child: Text('West Zone'),
                                  ),
                                  DropdownMenuItem<String>(
                                    value: 'five',
                                    child: Text('National'),
                                  ),
                                ],
                              ),
                            ),
                            Center(
                              child: DropdownButton<String>(
                                value: dropdownValue,
                                icon: const Icon(Icons.arrow_drop_down,
                                    color: Color.fromARGB(255, 29, 19, 220)),
                                style: const TextStyle(
                                    color: Color.fromARGB(255, 44, 30, 232)),
                                onChanged: (String? newValue) {
                                  setState(() {
                                    dropdownValue = newValue!;
                                  });
                                },
                                items: const [
                                  DropdownMenuItem<String>(
                                    value: 'one',
                                    child:
                                        Text('                          MTD'),
                                  ),
                                  DropdownMenuItem<String>(
                                    value: 'five',
                                    child: Text('YTD'),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                Container(
                  alignment: Alignment.center,
                  child: Image.asset(
                    'assets/pooja.png',
                    height: 251,
                    width: 550,
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ]),
              const SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "All Ranking",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    "See Full List",
                    style: TextStyle(
                      fontWeight: FontWeight.w200,
                      color: Color.fromARGB(255, 13, 81, 44),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(1.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Lapsed_Policies(),
                      ),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Image.asset(
                      "assets/Cardd.png",
                      fit: BoxFit.cover,
                      width: 450,
                      height: 270,
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
