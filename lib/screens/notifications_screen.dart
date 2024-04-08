import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_shopping/constants.dart';
import 'package:furniture_shopping/widgets/notification_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/images/icons/search.svg',
              color: kMainColor,
            )),
        centerTitle: true,
        title: Text(
          'Notification',
          style: GoogleFonts.merriweather(
              fontWeight: FontWeight.bold, fontSize: 16.sp, color: kMainColor),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(children: [
              Container(
                width: 375.w,
                height: 95.h,
                color: Color(0xffF5F5F5),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 20.w),
                      child: Container(
                        width: 70.w,
                        height: 70.h,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Image.asset(
                          'assets/images/table.png',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 15.h),
                      child: Column(
                        children: [
                          Text(
                            'Your order #123456789 has been confirmed',
                            style: GoogleFonts.nunitoSans(
                              fontWeight: FontWeight.bold,
                              fontSize: 12.sp,
                              color: kMainColor,
                            ),
                          ),
                          SizedBox(
                            height: 3.h,
                          ),
                          Container(
                            width: 255.w,
                            child: Text(
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Turpis pretium et in arcu adipiscing nec. Turpis pretium et in arcu adipiscing nec. ',
                              style: GoogleFonts.nunitoSans(
                                fontWeight: FontWeight.normal,
                                fontSize: 10.sp,
                                color: Color(0xff808080),
                              ),
                              maxLines: 3,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                left: 324.w,
                top: 71.h,
                child: Text(
                  'New',
                  style: GoogleFonts.nunitoSans(
                    fontWeight: FontWeight.w800,
                    fontSize: 14.sp,
                    color: Color(0xff27AE60),
                  ),
                ),
              ),
            ]),
            SizedBox(
              height: 18.h,
            ),
            Container(
              width: 375.w,
              height: 95.h,
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20.w),
                    child: Container(
                      width: 70.w,
                      height: 70.h,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Image.asset(
                        'assets/images/lamb.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 15.h),
                    child: Column(
                      children: [
                        Text(
                          'Your order #123456789 has been canceled',
                          style: GoogleFonts.nunitoSans(
                            fontWeight: FontWeight.bold,
                            fontSize: 12.sp,
                            color: kMainColor,
                          ),
                        ),
                        SizedBox(
                          height: 3.h,
                        ),
                        Container(
                          width: 255.w,
                          child: Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Turpis pretium et in arcu adipiscing nec. Turpis pretium et in arcu adipiscing nec. ',
                            style: GoogleFonts.nunitoSans(
                              fontWeight: FontWeight.normal,
                              fontSize: 10.sp,
                              color: Color(0xff808080),
                            ),
                            maxLines: 3,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Stack(children: [
              Container(
                width: 375.w,
                height: 95.h,
                color: Color(0xffF0F0F0),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 15.h, left: 20.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Discover hot sale furnitures this week.',
                            style: GoogleFonts.nunitoSans(
                              fontWeight: FontWeight.bold,
                              fontSize: 14.sp,
                              color: kMainColor,
                            ),
                          ),
                          SizedBox(
                            height: 3.h,
                          ),
                          Container(
                            width: 335.w,
                            child: Text(
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Turpis pretium et in arcu adipiscing nec. Turpis pretium et in arcu adipiscing nec. ',
                              style: GoogleFonts.nunitoSans(
                                fontWeight: FontWeight.normal,
                                fontSize: 10.sp,
                                color: Color(0xff808080),
                              ),
                              maxLines: 3,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                left: 321.w,
                top: 71.h,
                right: 20.w,
                child: Text(
                  'HOT!',
                  style: GoogleFonts.nunitoSans(
                    fontWeight: FontWeight.w800,
                    fontSize: 14.sp,
                    color: Color(0xffEB5757),
                  ),
                ),
              ),
            ]),
            SizedBox(
              height: 10.h,
            ),
            notificationWidget(
              image: 'assets/images/coffee.png',
              title: 'Your order #123456789 has been shipped successfully',
              desc:
                  'Please help us to confirm and rate your order to get 10% discount code for next order.',
            ), 
        
            SizedBox(
        
              height: 20.h,
            ), 
             notificationWidget(
              image: 'assets/images/coffee.png',
              title: 'Your order #123456789 has been confirmed',
              desc:
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Turpis pretium et in arcu adipiscing nec. Turpis pretium et in arcu adipiscing nec. ',
            ), 
            SizedBox(
              height: 20.h,
            ), 
                 notificationWidget(
              image: 'assets/images/desk.png',
              title: 'Your order #123456789 has been canceled',
              desc:
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Turpis pretium et in arcu adipiscing nec. Turpis pretium et in arcu adipiscing nec. ',
            ), 
            SizedBox(height: 20.h,), 
        
                 notificationWidget(
              image: 'assets/images/coffee.png',
              title: 'Your order #123456789 has been shipped successfully',
              desc:
                  'Please help us to confirm and rate your order to get 10% discount code for next order.',
            ), 
          ],
        ),
      ),
    );
  }
}
