import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable, camel_case_types
class favWidget extends StatelessWidget {
   favWidget({
    super.key,
    required this.title, 
    required this.image, 
    required this.cost
  });

  String? title; 
  String?  image;
 String? cost;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 355.w,
      //height: 120.h,
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 100.w,
                height: 100.h,
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
                width: 15.w,
              ),
              Container(
                padding: EdgeInsets.only(top: 10.h),
                child: Column(
                  children: [
                    Text(
                      title!,
                      style: GoogleFonts.nunitoSans(
                        fontWeight: FontWeight.w600,
                        fontSize: 14.sp,
                        color: const Color(0xff606060),
                      ),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Text(
                      cost!,
                      style: GoogleFonts.nunitoSans(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.sp,
                        color: const Color(0xff303030),
                      ),
                    ),
                  ],
                ),
              ),
            Spacer(),
              Column(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon:
                        SvgPicture.asset('assets/images/icons/close.svg'),
                  ),
                  SizedBox(
                    height: 35.h,
                  ),
                  Container(
                    width: 34.w,
                    height: 34.h,
                    decoration: BoxDecoration(
                        color: Color(0xffE0E0E0),
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: SvgPicture.asset(
                        'assets/images/icons/shopping.svg',
                        color: Color(0xff242424),
                      ),
                    ),
                  ),
                 
                ],
              ), 
              
            ],
          ),
                   SizedBox(
                height: 12.h,
              ),
              Container(
                width: 335.w,
                height: 2.h,
                decoration: BoxDecoration(
                  color: Color(0xffF0F0F0), 
                  borderRadius: BorderRadius.circular(10)
                ),
              ),
        ],
      ),
    );
  }
}
