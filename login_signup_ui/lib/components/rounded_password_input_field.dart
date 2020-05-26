import 'package:flutter/material.dart';
import 'package:login_signup_ui/components/text_field_container.dart';
import 'package:login_signup_ui/constants.dart';

class RoundedPasswordInputField extends StatefulWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const RoundedPasswordInputField({
    Key key,
    this.hintText,
    this.icon = Icons.person,
    this.onChanged,
  }) : super(key: key);

  @override
  _RoundedPasswordInputFieldState createState() =>
      _RoundedPasswordInputFieldState();
}

class _RoundedPasswordInputFieldState extends State<RoundedPasswordInputField> {
  bool obsecureText = true;
  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: obsecureText,
        onChanged: widget.onChanged,
        decoration: InputDecoration(
            icon: Icon(
              widget.icon,
              color: kPrimaryColor,
            ),
            hintText: widget.hintText,
            border: InputBorder.none,
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  obsecureText = !obsecureText;
                });
              },
              child: Icon(
                Icons.visibility,
                color: kPrimaryColor,
              ),
            )),
      ),
    );
  }
}
