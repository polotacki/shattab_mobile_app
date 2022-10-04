import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../utils/styles/constants.dart';

class Logo extends StatelessWidget {
  const Logo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: "P",
        style: TextStyle(
            fontSize: 30.sp,
            color: kSecondaryColor,
            fontWeight: FontWeight.w700),
        children: [
          TextSpan(
            text: "olotacki",
            style: TextStyle(
              color: kPrimaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
