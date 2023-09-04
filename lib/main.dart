import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:reliance_demo/1Eypage.dart';
import 'package:reliance_demo/personal_detail.dart';
import 'package:reliance_demo/pre_issuance_verifi.dart';
import 'package:reliance_demo/recording.dart';
import 'package:reliance_demo/switching_customer.dart';

import 'package:reliance_demo/tp.dart';

import '2co-browsing.dart';
import '2switching_back.dart';
import '3co_browsing.dart';
import '5thpage.dart';
import '7page.dart';
import '8page.dart';
import 'AA_pvt.dart';
import 'Document_uplode.dart';
import 'Finnance_detail.dart';
import 'Last_personal_detail.dart';
import 'Leader_board.dart';
import 'Life_assured.dart';
import 'Pimage.dart';
import 'Position_your_face.dart';
import 'Quote_Generation.dart';
import 'ROtp.dart';
import 'Request_co_browsing.dart';
import 'Thankyou.dart';
import 'Your_Appli_No.dart';
import 'choosemethod1.dart';
import 'complete_record.dart';
import 'dot.dart';
import 'fetch_income.dart';
import 'healthquestion.dart';
import 'mob_view.dart';

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
            backgroundColor: Color.fromARGB(255, 9, 60, 203),
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

        inputDecorationTheme: const InputDecorationTheme(
          isDense: true,
          contentPadding: EdgeInsets.fromLTRB(10, 18, 10, 18),
          filled: false,
          labelStyle: TextStyle(
            color: Color(0xFFBABABA),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
            borderRadius: BorderRadius.all(Radius.circular(8)),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8)),
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

        appBarTheme: AppBarTheme(
            backgroundColor: Color.fromARGB(255, 4, 63, 227),
            centerTitle: false),
      ),
    );
  }
}
