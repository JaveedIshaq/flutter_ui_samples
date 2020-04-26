import 'package:flutter/material.dart';
import 'package:flutter_login_ui/colors.dart';
import 'package:flutter_login_ui/signin_screen.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 3,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/perosn.jpeg"),
                    fit: BoxFit.fitWidth),
              ),
            ),
          ),
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(children: [
                  TextSpan(
                    text: "Baking Lessons\n",
                    style: Theme.of(context).textTheme.display1,
                  ),
                  TextSpan(
                    text: "Master the art of Baking",
                    style: Theme.of(context).textTheme.headline,
                  ),
                ]),
              ),
              FittedBox(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SigninScreen()));
                  },
                  child: Container(
                    margin: EdgeInsets.only(bottom: 25.0),
                    padding: EdgeInsets.symmetric(horizontal: 26, vertical: 16),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: primaryColor),
                    child: Row(
                      children: <Widget>[
                        Text(
                          "START LEARNING",
                          style: Theme.of(context)
                              .textTheme
                              .button
                              .copyWith(color: Colors.black),
                        ),
                        SizedBox(width: 10.0),
                        Icon(
                          Icons.arrow_forward,
                          color: Colors.black,
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ))
        ],
      ),
    );
  }
}
