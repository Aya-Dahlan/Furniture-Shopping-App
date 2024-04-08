import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_shopping/constants.dart';
import 'package:furniture_shopping/widgets/custom_button_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios)),
        centerTitle: true,
        title: Text(
          'My order',
          style: GoogleFonts.merriweather(
              fontWeight: FontWeight.bold, fontSize: 16.sp, color: kMainColor),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(
          top: 20.h,
          left: 20.w,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Delivered',
                        style: GoogleFonts.nunitoSans(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.sp,
                            color: Color(0xff242424)),
                      ),
                      SizedBox(
                        height: 3.h,
                      ),
                      Container(
                        width: 40.w,
                        height: 4.h,
                        decoration: BoxDecoration(
                            color: Color(0xff242424),
                            borderRadius: BorderRadius.circular(4)),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 44.w,
                  ),
                  Text(
                    'Processing',
                    style: GoogleFonts.nunitoSans(
                        fontWeight: FontWeight.normal,
                        fontSize: 18.sp,
                        color: Color(0xff999999)),
                  ),
                  SizedBox(
                    width: 47.w,
                  ),
                  Text(
                    'Canceled',
                    style: GoogleFonts.nunitoSans(
                        fontWeight: FontWeight.normal,
                        fontSize: 18.sp,
                        color: Color(0xff999999)),
                  ),
                ],
              ),
              SizedBox(
                height: 25.h,
              ),
              orderWidget(),
              SizedBox(
                height: 25.h,
              ),
              orderWidget(),
              SizedBox(
                height: 25.h,
              ),
              orderWidget(),
              SizedBox(
                height: 25.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class orderWidget extends StatelessWidget {
  const orderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 20.w),
      child: Container(
        width: 335.w,
        height: 172.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 3,
              blurRadius: 5,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 15.h, left: 20.w, right: 15.w),
              child: Row(
                children: [
                  Text(
                    'Order No238562312',
                    style: GoogleFonts.nunitoSans(
                        fontWeight: FontWeight.w600,
                        fontSize: 16.sp,
                        color: Color(0xff242424)),
                  ),
                  Spacer(),
                  Text(
                    '20/03/2020',
                    style: GoogleFonts.nunitoSans(
                        fontWeight: FontWeight.normal,
                        fontSize: 14.sp,
                        color: Color(0xff808080)),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Container(
              width: 335.w,
              height: 3,
              decoration: BoxDecoration(
                color: Color(0xffF0F0F0),
                borderRadius: BorderRadius.circular(6),
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.w, right: 15.w),
              child: Row(
                children: [
                  Text(
                    'Quantity:',
                    style: GoogleFonts.nunitoSans(
                        fontWeight: FontWeight.w600,
                        fontSize: 16.sp,
                        color: Color(0xff808080)),
                  ),
                  Text(
                    '03',
                    style: GoogleFonts.nunitoSans(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.sp,
                        color: Color(0xff242424)),
                  ),
                  Spacer(),
                  Text(
                    'Total Amount:',
                    style: GoogleFonts.nunitoSans(
                        fontWeight: FontWeight.w600,
                        fontSize: 16.sp,
                        color: Color(0xff808080)),
                  ),
                  Text(
                    '\$150',
                    style: GoogleFonts.nunitoSans(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.sp,
                        color: Color(0xff242424)),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.w, right: 15.w),
              child: Row(
                children: [
                  CustomButton(
                    text: 'Detail',
                    width: 100.w,
                    height: 36.h,
                    radius: 4,
                    fontSize: 16.sp,
                  ),
                  Spacer(),
                  Text(
                    'Delivered',
                    style: GoogleFonts.nunitoSans(
                        fontWeight: FontWeight.w600,
                        fontSize: 16.sp,
                        color: Color(0xff27AE60)),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
