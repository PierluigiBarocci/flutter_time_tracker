import 'package:flutter/material.dart';
import 'package:flutter_time_tracker/widgets/custom_elevated_button.dart';

class SignInButton extends CustomElevatedButton {
  SignInButton({
    String? text,
    Color? color,
    Color? textColor,
    VoidCallback? onPressed,
  }) : super(
          child: Text(
            text!,
            style: TextStyle(
              color: textColor,
              fontSize: 15.0,
            ),
          ),
          color: color!,
          onPressed: onPressed!,
        );
}
