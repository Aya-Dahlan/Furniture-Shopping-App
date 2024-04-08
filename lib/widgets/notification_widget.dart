import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_shopping/constants.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable, camel_case_types
class notificationWidget extends StatelessWidget {
  notificationWidget(
      {super.key,
      required this.title,
      required this.desc,
      required this.image});
  String? title;
  String? desc;
  String? image;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 375.w,
      height: 81.h,
      child: Column(
        children: [
          Padding(
      padding: EdgeInsets.only(left: 20.w),
            child: Row(
              children: [
                Container(
                  width: 70.w,
                  height: 70.h,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image.asset(
                    image!,
                    fit: BoxFit.fill,
                  ),
                ),
                SizedBox(
                  width: 10.w,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 255.w,
                      child: Text(
                        title!,
                        style: GoogleFonts.nunitoSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 12.sp,
                          color: kMainColor,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    Container(
                      width: 255.w,
                      child: Text(
                        desc!,
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
              ],
            ),
          ),
          Spacer(),
              Container(
                width: 335.w,
                height: 3,
                decoration: BoxDecoration(color: Color(0xffF0F0F0), 
                
                borderRadius: BorderRadius.circular(10)
                ),
              )
        ],
      ),
    );
  }
}
