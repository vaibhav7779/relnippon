import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:reliance_demo/1Eypage.dart';
import 'package:reliance_demo/personal_detail.dart';
import 'package:reliance_demo/pre_issuance_verifi.dart';
import 'package:reliance_demo/recording.dart';

import 'package:reliance_demo/tp.dart';

import '5thpage.dart';
import '6thpage.dart';
import '7page.dart';
import '8page.dart';
import 'Position_your_face.dart';
import 'choosemethod1.dart';
import 'complete_record.dart';
import 'healthquestion.dart';
import 'image.dart';

// import 'package:flutter_application_1/pages/address.dart';
// import 'package:flutter_application_1/pages/home.dart';
// import 'package:flutter_application_1/pages/incomeverification.dart';
// import 'package:flutter_application_1/pages/personalloan.dart';
// import 'package:flutter_application_1/pages/drawer.dart';
// import 'package:flutter_application_1/pages/login.dart';
// import 'package:flutter_application_1/pages/my_theams.dart';
// import 'package:flutter_application_1/pages/enterotp.dart';
// import 'package:flutter_application_1/utils/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IncomeVerification(),
      theme: ThemeData(
        textSelectionTheme: TextSelectionThemeData(
          cursorColor: Colors.pink,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Color.fromARGB(255, 7, 52, 175),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
          ),
        ),
        unselectedWidgetColor: Color.fromARGB(255, 219, 140, 21),
        checkboxTheme: CheckboxThemeData(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
          fillColor: MaterialStateColor.resolveWith(
            (states) => Color.fromARGB(255, 223, 138, 27),
          ),
        ),

        // title and subtitle fontSize and color
        listTileTheme: const ListTileThemeData(
          // titleTextStyle: TextStyle(fontSize: 20),
          // subtitleTextStyle: TextStyle(fontSize: 14),
          textColor: Colors.black,
        ),

        textTheme: Theme.of(context).textTheme.copyWith(
              titleMedium: const TextStyle(
                color: Colors.black, fontSize: 10,

                // backgroundColor: Colors.pink
              ),
            ),
        radioTheme: RadioThemeData(
          fillColor: MaterialStateColor.resolveWith((states) =>
              Color.fromARGB(255, 255, 167, 53)), // Fill color when selected
          overlayColor: MaterialStateColor.resolveWith(
              (states) => Colors.blue.withOpacity(0.1)), // Color when pressed
          splashRadius: 16.0, // Size of the ripple effect when pressed
        ),
        inputDecorationTheme: InputDecorationTheme(
          hintStyle: TextStyle(fontSize: 25, color: Colors.red),
          enabledBorder: new OutlineInputBorder(
            borderRadius: new BorderRadius.circular(15.0),
            borderSide: new BorderSide(
              color: const Color.fromARGB(255, 1, 1, 1),
            ),
          ),
          focusedBorder: new OutlineInputBorder(
            borderRadius: new BorderRadius.circular(25.0),
            borderSide: new BorderSide(
              color: Color.fromARGB(255, 0, 0, 0),
            ),
          ),
          labelStyle: new TextStyle(
              color: Color.fromARGB(255, 19, 19, 19), fontSize: 10),
        ),
        appBarTheme: AppBarTheme(
            backgroundColor: Color.fromARGB(255, 4, 63, 227),
            centerTitle: false),
      ),
    );
  }
}
