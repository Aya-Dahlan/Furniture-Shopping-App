import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_shopping/constants.dart';
import 'package:furniture_shopping/screens/login_screen.dart';
import 'package:furniture_shopping/widgets/custom_button_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/image.png',
            fit: BoxFit.fill,
            height: double.infinity.h,
            width: double.infinity.w,
          ),
          Padding(
            padding: EdgeInsets.only(left: 30.w, right: 30.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 230.h,
                ),
                Text(
                  "MAKE YOUR",
                  style: GoogleFonts.gelasio(
                    fontWeight: FontWeight.w600,
                    fontSize: 24.sp,
                    color: const Color(0xff606060),
                  ),
                ),
                SizedBox(
                  height: 25.h,
                ),
                Text(
                  "HOME BEAUTIFUL",
                  style: GoogleFonts.gelasio(
                      fontWeight: FontWeight.bold,
                      fontSize: 30.sp,
                      color: kMainColor),
                ),
                SizedBox(
                  height: 25.h,
                ),
                Flexible(
                  child: Container(
                    padding: EdgeInsets.only(left: 22.w),
                    width: 350.w,
                    child: RichText(
                      text: TextSpan(
                        style: GoogleFonts.nunitoSans(
                          fontWeight: FontWeight.normal,
                          fontSize: 18.sp,
                          color: const Color(0xff808080),
                          height: 1.7.h, // Adjust the line height as needed
                        ),
                        children: <TextSpan>[
                          const TextSpan(
                            text:
                                "The best simple place where you discover most wonderful furnitures ",
                          ),
                          TextSpan(
                            text: "and make your home beautiful",
                            style: TextStyle(
                              height: 1.7.h, // Adjust the line height as needed
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 154.h,
                ),
                Center(
                  child: CustomButton(
                    text: '',
                    width: 159.w,
                    height: 54.h,
                    isSplash: true,
                    radius: 4,
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginScreen()),
                      );
                    },
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
