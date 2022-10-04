import 'package:flutter/material.dart';

const PrymaryColor = Color.fromRGBO(197, 105, 100, 1);
const PrymaryColor2 = Color.fromRGBO(52, 58, 64, 1);
const PrymaryColor3 = Color.fromRGBO(121, 82, 179, 1);
const PrymaryColor4 = Color.fromRGBO(239, 84, 102, 1);
const PrymaryColor5 = Color.fromRGBO(255, 232, 235, 1);
const PrymaryColorTask1 = Color.fromRGBO(180, 207, 234, 1);
const PrymaryColorTask2 = Color.fromRGBO(160, 175, 197, 1);
const PrymaryColorTask3 = Color.fromRGBO(25, 22, 165, 1);
const PrymaryColorTask4 = Color.fromRGBO(17, 12, 47, 1.0);
const PrymaryColorTask5 = Color.fromRGBO(111, 141, 172, 1);
const PrymaryColorTask6 = Color.fromRGBO(77, 86, 185, 1);
const PrymaryColorTask7 = Color.fromRGBO(34, 176, 212, 1.0);
const kPrimaryColor = Color(0xFFFF7643);
const kPrimaryLightColor = Color(0xFFFFECDF);
const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFFFFA53E), Color(0xFFFF7643)],
);
const kSecondaryColor = Color(0xFF979797);
const kTextColor = Color(0xFF757575);

const kAnimationDuration = Duration(milliseconds: 200);

final headingStyle = TextStyle(
  fontSize: 28,
  fontWeight: FontWeight.bold,
  color: Colors.black,
  height: 1.5,
);

const defaultDuration = Duration(milliseconds: 250);

// Form Error
final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Please Enter your email";
const String kInvalidEmailError = "Please Enter Valid Email";
const String kPassNullError = "Please Enter your password";
const String kShortPassError = "Password is too short";
const String kMatchPassError = "Passwords don't match";
const String kNamelNullError = "Please Enter your name";
const String kPhoneNumberNullError = "Please Enter your phone number";
const String kAddressNullError = "Please Enter your address";

final otpInputDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(vertical: 15),
  border: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
  enabledBorder: outlineInputBorder(),
);

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(15),
    borderSide: BorderSide(color: kTextColor),
  );
}
