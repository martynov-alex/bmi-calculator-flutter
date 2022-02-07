import 'package:flutter/material.dart';
import 'screens/input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color(0xff003300),
        //primaryColor: Color(0xff003d00),
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xff003300),
          centerTitle: true,
          elevation: 0,
          titleTextStyle: TextStyle(
            fontSize: 20,
            //fontWeight: FontWeight.bold,
          ),
        ),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Color(0xffc9bc1f),
        ),
        textTheme: TextTheme(
          bodyText2: TextStyle(
            fontSize: 20,
          ),
        ),
      ),

      // theme: ThemeData(
      //   brightness: Brightness.dark,
      //   ...
      // ),
      home: InputPage(),
    );
  }
}
