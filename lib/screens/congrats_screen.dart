import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_shopping/constants.dart';
import 'package:furniture_shopping/screens/bottom_nav_bar.dart';
import 'package:furniture_shopping/widgets/custom_button_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class CongratsScreen extends StatelessWidget {
  const CongratsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 30.w, right: 30.w),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'SUCCESS!',
              style: GoogleFonts.merriweather(
                fontWeight: FontWeight.bold,
                fontSize: 36.sp,
                color: kMainColor,
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            SvgPicture.asset('assets/images/icons/success.svg'),
            SizedBox(
              height: 25.h,
            ),
            Container(
              width: 283.w,
              height: 54.h,
              child: Text(
                'Your order will be delivered soon.Thank you for choosing our app!',
                style: GoogleFonts.nunitoSans(
                  fontWeight: FontWeight.normal,
                  fontSize: 18.sp,
                  color: const Color(0xff606060),
                ),
              ),
            ),
            SizedBox(
              height: 40.h,
            ),
            CustomButton(
                text: 'Track your orders',
                width: 315.w,
                height: 60.h,
                radius: 8),
            SizedBox(
              height: 25.h,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) =>  BottomNav()),
                );
              },
              child: Container(
                width: 315.w,
                height: 60.h,
                decoration: BoxDecoration(
                    border: Border.all(color: kMainColor),
                    borderRadius: BorderRadius.circular(8)),
                child: Center(
                  child: Text(
                    'BACK TO HOME',
                    style: GoogleFonts.nunitoSans(
                      fontWeight: FontWeight.w600,
                      fontSize: 18.sp,
                      color: kMainColor,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
