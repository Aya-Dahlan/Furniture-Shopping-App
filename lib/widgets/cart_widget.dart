
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture_shopping/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class CartWidget extends StatelessWidget {
   CartWidget({
    super.key,
    required this.name, required this.cost , required this.image
  });
  String? name; 
  String? cost;
  String? image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 20.w),
          child: Row(
            children: [
              Container(
                clipBehavior: Clip.antiAlias,
                width: 100.w,
                height: 100.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  // color: Colors.black,
                ),
                child: Image.asset(
                  image!,
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(
                width: 14.w,
              ),
              Container(
                height: 100.h,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name!,
                      style: GoogleFonts.nunitoSans(
                        fontWeight: FontWeight.w600,
                        fontSize: 14.sp,
                        color: const Color(0xff606060),
                      ),
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    Text(
                      '\$ '+cost!,
                      style: GoogleFonts.nunitoSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.sp,
                          color: kMainColor),
                    ),
                    Spacer(), 
                    Row(children: [      Container(
                    width: 30.w,
                    height: 30.h,
                    decoration: BoxDecoration(
                      color: Color(0xffE0E0E0),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Icon(
                      Icons.add,
                      color: kMainColor,
                    ),
                  ),
                  SizedBox(
                    width: 15.w,
                  ),
                  Text(
                    '01',
                    style: GoogleFonts.nunitoSans(
                        fontWeight: FontWeight.w600,
                        fontSize: 18.sp,
                        color: kMainColor),
                  ),
                  SizedBox(
                    width: 15.w,
                  ),
                  Container(
                    width: 30.w,
                    height: 30.h,
                    decoration: BoxDecoration(
                      color: Color(0xffE0E0E0),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Center(
                      child: Container(
                        width: 14.w,
                        height: 2.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2),
                          color: kMainColor,
                        ),
                      ),
                    ),
                  ),],)
                    
    
                  ],
                ),
              ),
              Spacer(),
              Container(
                height: 100.h,
                child: Column(
                  children: [
                    SvgPicture.asset('assets/images/icons/close.svg', color: kMainColor,),
                  ],
                ),
              ),
              SizedBox(
                width: 26.w,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 12.h,
        ),
        Container(
          width: 335.w,
          height: 2,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0xffF0F0F0)),
        ),
        SizedBox(
          height: 12.h,
        ),
      ],
    );
  }
}
