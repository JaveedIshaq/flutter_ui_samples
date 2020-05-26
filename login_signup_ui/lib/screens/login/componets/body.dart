import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_signup_ui/components/already_have_an_account_check.dart';
import 'package:login_signup_ui/components/rounded_button.dart';
import 'package:login_signup_ui/components/rounded_input_field.dart';
import 'package:login_signup_ui/components/rounded_password_input_field.dart';
import 'package:login_signup_ui/screens/login/componets/background.dart';
import 'package:login_signup_ui/screens/signup/sign_up_screen.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "LOGIN",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              "assets/icons/login.svg",
              height: size.height * 0.35,
            ),
            SizedBox(height: size.height * 0.02),
            RoundedInputField(
              hintText: "Your Email",
              onChanged: (value) {},
            ),
            RoundedPasswordInputField(
              hintText: "Your Password",
              icon: Icons.lock,
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "LOGIN",
              press: () {},
            ),
            AlreadyHaveAnAccountCheck(
              onPress: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SignUpScreen()));
              },
            )
          ],
        ),
      ),
    );
  }
}
