import 'package:flutter/material.dart';
import 'package:reliance_demo/personal_detail.dart';

import '6thpage.dart';
import 'main.dart';

class EY_Page extends StatefulWidget {
  const EY_Page({super.key, required String nextPage});

  @override
  State<EY_Page> createState() => _EY_PageState();
}

class _EY_PageState extends State<EY_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12),

// image

          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 160),
              Center(
                child: Stack(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.center,
                      child: Image.asset(
                        'assets/download 1.png',
                        height: 61,
                        width: 270,
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 70),
              const Padding(
                padding: EdgeInsets.only(left: 76.0),
                child: Text(
                  "Tap Here TO Start Prototype >>>",
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 23, 69, 142),
                  ),
                ),
              ),
              const SizedBox(
                height: 62.0,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 179.0),
                child: Text(
                  "POWERD BY",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Color.fromARGB(255, 72, 72, 75),
                  ),
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const P_Detail(),
                          ),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 160.0),
                        child: Image.asset(
                          "assets/OIP 1.png",
                          fit: BoxFit.cover,
                          width: 141,
                          height: 141,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
