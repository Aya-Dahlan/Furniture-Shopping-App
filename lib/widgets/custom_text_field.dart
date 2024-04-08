import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_shopping/constants.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class TextFieldCustom extends StatelessWidget {
  TextFieldCustom({required this.name, this.isPass});
  String? name;
  bool? isPass = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          name!,
          style: GoogleFonts.nunitoSans(
              fontWeight: FontWeight.normal,
              fontSize: 18.sp,
              color: const Color(0xff909090)),
        ),
    
        Container(
          width: 280.w,
          height:30.h,
          decoration: BoxDecoration(
           // color: const Color(0xffE0E0E0),
            borderRadius: BorderRadius.circular(2),
          ),
          child: TextField(
            obscureText: isPass == true ? true : false,
            decoration: InputDecoration(
             
              suffixIcon: isPass == true
                  ? Icon(
                      Icons.remove_red_eye_outlined,
                      color: kMainColor,
                      size: 23.sp,
                    )
                  : null,
             enabledBorder:  UnderlineInputBorder(
              borderSide: BorderSide(color:  Color(0xffE0E0E0),width: 2.w),   

              
             ),
            ),
          ),
        )
      ],
    );
  }
}
