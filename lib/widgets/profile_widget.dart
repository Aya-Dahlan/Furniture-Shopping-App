
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_shopping/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class profileWidget extends StatelessWidget {
   profileWidget({
    super.key,
    required this.title, 
    required this.subT,
    this.onTap,
  });

  String? title;
  String? subT;
  VoidCallback? onTap;


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20.w,top: 18.h, right: 20.w),
      width: 335.w,
      height: 80.h,
      decoration: BoxDecoration(
        color: Color(0xffFFFFFF),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 1,
            blurRadius: 10,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: GestureDetector(
        onTap: onTap,
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title!,
                  style: GoogleFonts.nunitoSans(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.sp,
                      color: Color(0xff242424)),
                ),
                  Text(
                  subT!,
                  style: GoogleFonts.nunitoSans(
                      fontWeight: FontWeight.normal,
                      fontSize: 12.sp,
                      color: Color(0xff808080)),
                ),
              ],
            ), 
            Spacer(),
            Padding(
              padding:  EdgeInsets.only(bottom: 10.h, ),
              child: Icon(Icons.arrow_forward_ios, color: kMainColor,),
            )
          ],
        ),
      ),
    );
  }
}
