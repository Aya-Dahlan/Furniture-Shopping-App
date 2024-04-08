import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:furniture_shopping/constants.dart';
import 'package:furniture_shopping/screens/bottom_nav_bar.dart';
import 'package:furniture_shopping/screens/signup_screen.dart';
import 'package:furniture_shopping/widgets/custom_button_widget.dart';
import 'package:furniture_shopping/widgets/custom_text_field.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: Padding(
        padding: EdgeInsets.only(
          top: 85.8.h,
        ),
        child: Padding(
          padding: EdgeInsets.only(left: 30.w, right: 30.w),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      width: 105.w,
                      height: 1.h,
                      decoration: BoxDecoration(
                        color: const Color(0xffBDBDBD),
                        borderRadius: BorderRadius.circular(2),
                      ),
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                    Image(
                      width: 65.w,
                      height: 65.h,
                      image: Svg('assets/images/image.svg'),
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                    Container(
                      width: 105.w,
                      height: 1.h,
                      decoration: BoxDecoration(
                        color: const Color(0xffBDBDBD),
                        borderRadius: BorderRadius.circular(2),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30.h,
                ),
                Text(
                  "Hello !",
                  style: GoogleFonts.merriweather(
                      fontWeight: FontWeight.normal,
                      fontSize: 30.sp,
                      color: Color(0xff909090)),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Text(
                  "WELCOME BACK",
                  style: GoogleFonts.merriweather(
                      fontWeight: FontWeight.bold,
                      fontSize: 24.sp,
                      color: kMainColor),
                ),
                SizedBox(
                  height: 25.h,
                ),
                Container(
                  width: 345.w,
                  height: 437.h,
                  decoration:
                      BoxDecoration(color: const Color(0xffFFFFFF), boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 3,
                      blurRadius: 5,
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ]),
                  child: Padding(
                    padding: EdgeInsets.only(top: 30.h, left: 15.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextFieldCustom(
                          name: 'Email',
                        ),
                        SizedBox(
                          height: 35.h,
                        ),
                        TextFieldCustom(
                          name: 'Password',
                          isPass: true,
                        ),
                        SizedBox(
                          height: 35.h,
                        ),
                        Center(
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              'Forgot Password',
                              style: GoogleFonts.nunitoSans(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18.sp,
                                  color: kMainColor),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 25.h,
                        ),
                        CustomButton(
                          text: 'Log in',
                          width: 285.w,
                          height: 50.h,
                          radius: 8,
                          fontSize: 18.sp,
                          onTap: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => BottomNav()),
                            );
                          },
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Center(
                          child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>  SignUpScreen()),
                              );
                            },
                            child: Text(
                              'SIGN UP',
                              style: GoogleFonts.nunitoSans(
                                fontWeight: FontWeight.w600,
                                fontSize: 18.sp,
                                color: kMainColor,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
