import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_shopping/constants.dart';
import 'package:furniture_shopping/screens/congrats_screen.dart';
import 'package:furniture_shopping/widgets/custom_button_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class ChaeckOutScreen extends StatelessWidget {
  const ChaeckOutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Color(0xff242424),
          ),
        ),
        title: Text(
          'Check out',
          style: GoogleFonts.merriweather(
            fontWeight: FontWeight.bold,
            fontSize: 16.sp,
            color: const Color(0xff303030),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'Shipping Address',
                  style: GoogleFonts.nunitoSans(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff909090),
                  ),
                ),
                const Spacer(),
                SvgPicture.asset('assets/images/icons/edit.svg')
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Container(
              // padding: EdgeInsets.only(left: 20.w, top: 15.h),
              width: 335.w,
              height: 127.h,
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 5,
                  blurRadius: 10,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ], borderRadius: BorderRadius.circular(8), color: Colors.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20.w, top: 15.h),
                    child: Text(
                      'Bruno Fernandes',
                      style: GoogleFonts.nunitoSans(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.sp,
                        color: const Color(0xff303030),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Container(
                    width: 335.w,
                    height: 2.h,
                    decoration: BoxDecoration(
                        color: Color(0xffF0F0F0),
                        borderRadius: BorderRadius.circular(6)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20.w, top: 15.h),
                    child: Text(
                      '25 rue Robert Latouche, Nice, 06200, Côte D’azur, France',
                      style: GoogleFonts.nunitoSans(
                        fontWeight: FontWeight.normal,
                        fontSize: 14.sp,
                        color: const Color(0xff808080),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            Row(
              children: [
                Text(
                  'Payment',
                  style: GoogleFonts.nunitoSans(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff909090),
                  ),
                ),
                const Spacer(),
                SvgPicture.asset('assets/images/icons/edit.svg')
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Container(
              //  padding: EdgeInsets.only(left: 20.w, top: 15.h),
              width: 335.w,
              height: 68.h,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 5,
                    blurRadius: 10,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
              ),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20.w),
                    child: Container(
                      width: 64.w,
                      height: 38.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset:
                                  Offset(0, 2), // changes position of shadow
                            ),
                          ]),
                      child: Center(
                          child: SvgPicture.asset(
                              'assets/images/icons/master.svg')),
                    ),
                  ),
                  SizedBox(
                    width: 17.w,
                  ),
                  Text(
                    '**** **** **** 3947',
                    style: GoogleFonts.nunitoSans(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.sp,
                      color: const Color(0xff303030),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 32.h,
            ),
            Row(
              children: [
                Text(
                  'Delivery method',
                  style: GoogleFonts.nunitoSans(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff909090),
                  ),
                ),
                const Spacer(),
                SvgPicture.asset('assets/images/icons/edit.svg')
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Container(
              //  padding: EdgeInsets.only(left: 20.w, top: 15.h),
              width: 335.w,
              height: 68.h,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 5,
                    blurRadius: 10,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
              ),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20.w),
                    child: SvgPicture.asset('assets/images/icons/dhl.svg'),
                  ),
                  SizedBox(
                    width: 17.w,
                  ),
                  Text(
                    'Fast (2-3days)',
                    style: GoogleFonts.nunitoSans(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.sp,
                      color: const Color(0xff303030),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            Container(
              padding: EdgeInsets.only(top: 15.h, right: 20.w, left: 10.w),
              width: 335.w,
              height: 135.h,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 5,
                    blurRadius: 10,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 17.w,
                      ),
                      Text(
                        'Order: ',
                        style: GoogleFonts.nunitoSans(
                          fontWeight: FontWeight.normal,
                          fontSize: 18.sp,
                          color: const Color(0xff808080),
                        ),
                      ),
                      Spacer(),
                      Text(
                        '\$ 95.00',
                        style: GoogleFonts.nunitoSans(
                            fontWeight: FontWeight.w600,
                            fontSize: 18.sp,
                            color: kMainColor),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 17.w,
                      ),
                      Text(
                        'Delivery: ',
                        style: GoogleFonts.nunitoSans(
                          fontWeight: FontWeight.normal,
                          fontSize: 18.sp,
                          color: const Color(0xff808080),
                        ),
                      ),
                      Spacer(),
                      Text(
                        '\$ 5.00',
                        style: GoogleFonts.nunitoSans(
                            fontWeight: FontWeight.w600,
                            fontSize: 18.sp,
                            color: kMainColor),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 17.w,
                      ),
                      Text(
                        'Total:',
                        style: GoogleFonts.nunitoSans(
                          fontWeight: FontWeight.normal,
                          fontSize: 18.sp,
                          color: const Color(0xff808080),
                        ),
                      ),
                      Spacer(),
                      Text(
                        '\$ 100.00',
                        style: GoogleFonts.nunitoSans(
                            fontWeight: FontWeight.w600,
                            fontSize: 18.sp,
                            color: kMainColor),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25.h,
            ),
            CustomButton(
              text: 'SUBMIT ORDER',
              width: 335.w,
              height: 60.h,
              radius: 8,
              fontSize: 20.sp,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  CongratsScreen()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
