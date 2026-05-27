import 'package:flutter/material.dart';

class Customtextfeild extends StatelessWidget {
  final TextEditingController txtCtrl;
  final String hintText;
  final bool isMobileNumber;
  final bool isGmail;
  final bool isPassword;

  const Customtextfeild({
    super.key,
    this.hintText = "",
    required this.txtCtrl,
    this.isMobileNumber = false,
    this.isGmail = false,
    this.isPassword = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: txtCtrl,
      obscureText: isPassword ? true : false,
      keyboardType: isMobileNumber
          ? TextInputType.phone
          : isGmail
          ? TextInputType.emailAddress
          : null,
      decoration: InputDecoration(
        hint: Text(hintText),
        suffixIcon: isPassword ? IconButton(onPressed: (){}, icon: Icon(Icons.remove_red_eye)) : null,
        border: OutlineInputBorder(),
      ),
    );
  }
}
