import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
  CustomButton(
      {required this.text,
      required this.width,
      required this.height,
      required this.radius,
      this.fontSize,
      this.isSplash, 
      this.onTap,
      });
  String? text;
  double? width;
  double? height;
  bool? isSplash = false;
  double? fontSize = 18.sp;
  double? radius;
  VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: Color(0xff242424),
          borderRadius: BorderRadius.circular(radius!),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.4),
              spreadRadius: 4,
              blurRadius: 5,
              offset: Offset(0, 5), // changes position of shadow
            ),
          ],
        ),
        child: Center(
            child: isSplash == true
                ? Text(
                    'Get Started',
                    style: GoogleFonts.gelasio(
                      fontWeight: FontWeight.w700,
                      fontSize: 18.sp,
                      color: Colors.white,
                    ),
                  )
                : Text(
                    text!,
                    style: GoogleFonts.nunitoSans(
                      fontWeight: FontWeight.w700,
                      fontSize: fontSize,
                      color: Colors.white,
                    ),
                  )),
      ),
    );
  }
}
