import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:shattab_mobile_app/presentation/auth/login_screen/login_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../data/on_boarding.dart';
import '../../models/on_boarding_data.dart';
import '../../utils/styles/constants.dart';
import 'widgets/logo.dart';
import 'widgets/on_boarding_element.dart';
import 'widgets/skip_button.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  double _currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
          child: Column(
            children: [
              SkipButton(),
              Logo(),
              SizedBox(height: 35.h),
              Expanded(
                child: PageView.builder(
                  itemCount: 3,
                  onPageChanged: (index) {
                    setState(() {
                      _currentPageIndex = index.toDouble();
                    });
                  },
                  itemBuilder: (context, index) {
                    final OnBoardingData element = onBoardingData[index];
                    return OnBoardingElement(
                        subTitle: element.subTitle,
                        title: element.title,
                        imagePath: element.image);
                  },
                ),
              ),
              SizedBox(height: 15.h),
              Column(
                children: [
                  AnimatedSmoothIndicator(
                    activeIndex: _currentPageIndex.toInt(),
                    count: 3,
                    effect: WormEffect(
                      dotColor: kPrimaryColor,
                      activeDotColor: kSecondaryColor,
                      dotWidth: 35.w,
                      dotHeight: 10.h,
                      spacing: 20.w,
                      type: WormType.normal,
                    ),
                    curve: Curves.easeOutCubic,
                  ),
                  SizedBox(height: 15.h),
                  Container(
                    width: double.infinity,
                    height: 45.h,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: kPrimaryColor),
                      onPressed: () {
                        Get.to(LoginScreen());
                      },
                      child: Text(
                        "Get Started",
                        style: TextStyle(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 15.h),
                  RichText(
                    text: TextSpan(
                      text: "Dont't have an account? ",
                      style: TextStyle(
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                      children: [
                        TextSpan(
                          text: "Sign up",
                          style: TextStyle(
                            color: kPrimaryColor,
                            fontWeight: FontWeight.w500,
                            fontSize: 14.sp,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
