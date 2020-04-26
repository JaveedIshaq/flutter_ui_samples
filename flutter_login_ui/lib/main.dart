import 'package:flutter/material.dart';
import 'package:flutter_login_ui/colors.dart';
import 'package:flutter_login_ui/welcome_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          brightness: Brightness.dark,
          primaryColor: primaryColor,
          scaffoldBackgroundColor: bgColor,
          textTheme: TextTheme(
            display1:
                TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            button: TextStyle(color: primaryColor),
            headline:
                TextStyle(color: Colors.white, fontWeight: FontWeight.normal),
          ),
          inputDecorationTheme: InputDecorationTheme(
              enabledBorder: UnderlineInputBorder(
                  borderSide:
                      BorderSide(color: Colors.white.withOpacity(0.1))))),
      home: WelcomeScreen(),
    );
  }
}
