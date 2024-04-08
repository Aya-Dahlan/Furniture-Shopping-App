import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_shopping/constants.dart';
import 'package:furniture_shopping/widgets/custom_button_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class AddShippingScreen extends StatelessWidget {
  const AddShippingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios)),
        centerTitle: true,
        title: Text(
          'Add shipping address',
          style: GoogleFonts.merriweather(
              fontWeight: FontWeight.bold, fontSize: 16.sp, color: kMainColor),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 17.h, left: 20.w),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 10.h, left: 16.w),
              width: 335.w,
              height: 70.h,
              decoration: BoxDecoration(
                color: Color(0xffF5F5F5),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Full name',
                    style: GoogleFonts.nunitoSans(
                        fontWeight: FontWeight.normal,
                        fontSize: 12.sp,
                        color: Color(0xff808080)),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Text(
                    'Ex: Bruno Pham',
                    style: GoogleFonts.nunitoSans(
                        fontWeight: FontWeight.w600,
                        fontSize: 16.sp,
                        color: Color(0xffB3B3B3)),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              padding: EdgeInsets.only(top: 10.h, left: 16.w),
              width: 335.w,
              height: 70.h,
              decoration: BoxDecoration(
                color: Color(0xffF5F5F5),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Address',
                    style: GoogleFonts.nunitoSans(
                        fontWeight: FontWeight.normal,
                        fontSize: 12.sp,
                        color: Color(0xff808080)),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Text(
                    'Ex: 25 Robert Latouche Street',
                    style: GoogleFonts.nunitoSans(
                      fontWeight: FontWeight.w600,
                      fontSize: 16.sp,
                      color: Color(0xffB3B3B3),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              padding: EdgeInsets.only(top: 10.h, left: 16.w),
              width: 335.w,
              height: 70.h,
              decoration: BoxDecoration(
                  color: Color(0xffFFFFFF),
                  borderRadius: BorderRadius.circular(4),
                  border: Border.all(color: Color(0xffDBDBDB))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Zipcode (Postal Code)',
                    style: GoogleFonts.nunitoSans(
                        fontWeight: FontWeight.normal,
                        fontSize: 12.sp,
                        color: Color(0xff808080)),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Text(
                    'Pham Cong Thanh',
                    style: GoogleFonts.nunitoSans(
                        fontWeight: FontWeight.w600,
                        fontSize: 16.sp,
                        color: Color(0xff242424)),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              padding: EdgeInsets.only(top: 10.h, left: 16.w),
              width: 335.w,
              height: 70.h,
              decoration: BoxDecoration(
                color: Color(0xffF5F5F5),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Country',
                        style: GoogleFonts.nunitoSans(
                            fontWeight: FontWeight.normal,
                            fontSize: 12.sp,
                            color: Color(0xff808080)),
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      Text(
                        'Select Country',
                        style: GoogleFonts.nunitoSans(
                            fontWeight: FontWeight.w600,
                            fontSize: 16.sp,
                            color: Color(0xffB3B3B3)),
                      ),
                    ],
                  ),
                  Spacer(),
                  SvgPicture.asset('assets/images/icons/down.svg'),
                  SizedBox(
                    width: 25.w,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              padding: EdgeInsets.only(top: 10.h, left: 16.w),
              width: 335.w,
              height: 70.h,
              decoration: BoxDecoration(
                  color: Color(0xffFFFFFF),
                  borderRadius: BorderRadius.circular(4),
                  border: Border.all(color: Color(0xffDBDBDB))),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'City',
                        style: GoogleFonts.nunitoSans(
                            fontWeight: FontWeight.normal,
                            fontSize: 12.sp,
                            color: Color(0xff808080)),
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      Text(
                        'New York',
                        style: GoogleFonts.nunitoSans(
                            fontWeight: FontWeight.w600,
                            fontSize: 16.sp,
                            color: Color(0xff242424)),
                      ),
                    ],
                  ),
                  Spacer(),
                  SvgPicture.asset('assets/images/icons/down.svg'),
                  SizedBox(
                    width: 25.w,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              padding: EdgeInsets.only(top: 10.h, left: 16.w),
              width: 335.w,
              height: 70.h,
              decoration: BoxDecoration(
                color: Color(0xffF5F5F5),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'District',
                        style: GoogleFonts.nunitoSans(
                            fontWeight: FontWeight.normal,
                            fontSize: 12.sp,
                            color: Color(0xff808080)),
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      Text(
                        'Select District',
                        style: GoogleFonts.nunitoSans(
                            fontWeight: FontWeight.w600,
                            fontSize: 16.sp,
                            color: Color(0xffB3B3B3)),
                      ),
                    ],
                  ),
                  Spacer(),
                  SvgPicture.asset('assets/images/icons/down.svg'),
                  SizedBox(
                    width: 25.w,
                  ),
                ],
              ),
            ),
            Spacer(),
            CustomButton(
              text: 'SAVE ADDRESS',
              width: 335.w,
              height: 60.h,
              radius: 8,
              fontSize: 20.sp,
              onTap: (){
                Navigator.pop(context);
              },
            ),

            SizedBox(
              height: 35.h,
            )
          ],
        ),
      ),
    );
  }
}
