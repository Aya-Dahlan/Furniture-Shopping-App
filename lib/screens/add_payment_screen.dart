import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_shopping/constants.dart';
import 'package:furniture_shopping/widgets/custom_button_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class AddPaymentScreen extends StatelessWidget {
  const AddPaymentScreen({super.key});

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
          'Add payment method',
          style: GoogleFonts.merriweather(
              fontWeight: FontWeight.bold, fontSize: 16.sp, color: kMainColor),
        ),
      ),
      body: Column(
        children: [
          Image.asset(
            'assets/images/paymentCard.png',
            fit: BoxFit.fill,
          ),
          SizedBox(
            height: 10.h,
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
                  'CardHolder Name',
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
                  'Card Number',
                  style: GoogleFonts.nunitoSans(
                      fontWeight: FontWeight.normal,
                      fontSize: 12.sp,
                      color: Color(0xff808080)),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Text(
                  '**** **** **** 3456',
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
          Padding(
            padding: EdgeInsets.only(left: 20.w),
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 10.h, left: 16.w),
                  width: 157.w,
                  height: 70.h,
                  decoration: BoxDecoration(
                    color: Color(0xffF5F5F5),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'CVV',
                        style: GoogleFonts.nunitoSans(
                            fontWeight: FontWeight.normal,
                            fontSize: 12.sp,
                            color: Color(0xff808080)),
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      Text(
                        'Ex: 123',
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
                  width: 20.w,
                ),
                Container(
                  padding: EdgeInsets.only(top: 10.h, left: 16.w),
                  width: 157.w,
                  height: 70.h,
                  decoration: BoxDecoration(
                      color: Color(0xffFFFFFF),
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(color: Color(0xffDBDBDB))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Expiration Date',
                        style: GoogleFonts.nunitoSans(
                            fontWeight: FontWeight.normal,
                            fontSize: 12.sp,
                            color: Color(0xff808080)),
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      Text(
                        '03/22',
                        style: GoogleFonts.nunitoSans(
                            fontWeight: FontWeight.w600,
                            fontSize: 16.sp,
                            color: Color(0xff242424)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          CustomButton(
            text: 'ADD NEW CARD',
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
    );
  }
}
