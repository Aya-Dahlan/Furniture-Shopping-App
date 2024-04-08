import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class Products extends StatelessWidget {
   Products({
    super.key, required  this.name , this.image, this.cost, 
    this.onTap
  });

  String? cost;
  String? name;
  String? image;
  VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        
        children: [
          Stack(
            children: [
              Container(
                width: 157.w,
                height: 200.h,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.asset(
                  image!,
                ),
              ),
              Positioned(
                top: 160.h,
                left: 117.w,
                child: Container(
                  width: 30.w,
                  height: 30.h,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(80, 96, 96, 96),
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                      child:
                          SvgPicture.asset('assets/images/icons/shopping.svg')),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          Text(
          name!,
            style: GoogleFonts.nunitoSans(
              fontWeight: FontWeight.normal,
              fontSize: 14.sp,
              color: const Color(0xff606060),
            ),
          ),
          Text(cost!,   style: GoogleFonts.nunitoSans(
              fontWeight: FontWeight.bold,
              fontSize: 14.sp,
              color: const Color(0xff303030),
            ),)
        ],
      ),
    );
  }
}
