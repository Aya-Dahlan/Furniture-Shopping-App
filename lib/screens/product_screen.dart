import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_shopping/constants.dart';
import 'package:furniture_shopping/screens/rating_screen.dart';
import 'package:furniture_shopping/widgets/custom_button_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 455.h,
            child: Expanded(
              child: Stack(
                children: [
                  Positioned(
                    left: 52.w,
                    child: Container(
                      clipBehavior: Clip.antiAlias,
                      width: 323.w,
                      height: 455.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(70))),
                      child: Image.asset(
                        'assets/images/table.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 32.w,
                    top: 53.h,
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            width: 40.w,
                            height: 40.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: Color(0xffFFFFFF),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.1),
                                  spreadRadius: 3,
                                  blurRadius: 4,
                                  offset: Offset(
                                      0, 0), // changes position of shadow
                                ),
                              ],
                            ),
                            child: Padding(
                                padding: EdgeInsets.only(left: 10.w),
                                child: Icon(Icons.arrow_back_ios)),
                          ),
                        ),
                        SizedBox(
                          height: 56.h,
                        ),
                        Container(
                          width: 64.w,
                          height: 192.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Color(0xffFFFFFF)),
                          child: Padding(
                            padding: EdgeInsets.only(
                              top: 15.h,
                              // left: 15.w,
                            ),
                            child: Column(
                              children: [
                                Container(
                                  width: 34.w,
                                  height: 34.h,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xff909090),
                                  ),
                                  child: Center(
                                    child: Container(
                                      width: 24.w,
                                      height: 24.h,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Color(0xffFFFFFF),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 30.h,
                                ),
                                Container(
                                  width: 34.w,
                                  height: 34.h,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xffF0F0F0),
                                  ),
                                  child: Center(
                                    child: Container(
                                      width: 24.w,
                                      height: 24.h,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Color(0xffB4916C),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 30.h,
                                ),
                                Container(
                                  width: 34.w,
                                  height: 34.h,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xffF0F0F0),
                                  ),
                                  child: Center(
                                    child: Container(
                                      width: 24.w,
                                      height: 24.h,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Color(0xffE4CBAD),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 421.h,
                    left: 245.w,
                    child: Row(
                      children: [
                        Container(
                          width: 30.w,
                          height: 4.h,
                          decoration: BoxDecoration(
                              color: kMainColor,
                              borderRadius: BorderRadius.circular(4)),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Container(
                          width: 15.w,
                          height: 4.h,
                          decoration: BoxDecoration(
                              color: Color(0xffF0F0F0),
                              borderRadius: BorderRadius.circular(4)),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Container(
                          width: 15.w,
                          height: 4.h,
                          decoration: BoxDecoration(
                              color: Color(0xffF0F0F0),
                              borderRadius: BorderRadius.circular(4)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 25.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 25.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Minimal Stand',
                  style: GoogleFonts.gelasio(
                      fontWeight: FontWeight.bold,
                      fontSize: 24.sp,
                      color: kMainColor),
                ),
                Row(
                  children: [
                    Text(
                      '\$ 50',
                      style: GoogleFonts.nunitoSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 30.sp,
                          color: kMainColor),
                    ),
                    Spacer(),
                    Container(
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
                    ),
                    SizedBox(
                      width: 25.w,
                    )
                  ],
                ),
                GestureDetector(
                  onTap: (){
                         Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => RatingScreen()),
                      );
                  },

                  child: Row(
                    children: [
                      SvgPicture.asset('assets/images/star.svg'),
                      SizedBox(
                        width: 10.w,
                      ),
                      Text(
                        '4.5',
                        style: GoogleFonts.nunitoSans(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.sp,
                            color: kMainColor),
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                      Text(
                        '(50 reviews)',
                        style: GoogleFonts.nunitoSans(
                            fontWeight: FontWeight.w600,
                            fontSize: 14.sp,
                            color: Color(0xff808080)),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Container(
                  width: 360,
                  child: Text(
                    'Minimal Stand is made of by natural wood. The design that is very simple and minimal. This is truly one of the best furnitures in any family for now. With 3 different colors, you can easily select the best match for your home. ',
                    style: GoogleFonts.nunitoSans(
                        fontWeight: FontWeight.w300,
                        fontSize: 14.sp,
                        color: Color(0xff808080)),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  children: [
                    Container(
                      width: 60.w,
                      height: 60.h,
                      decoration: BoxDecoration(
                        color: Color(0xffF0F0F0),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(
                          child: SvgPicture.asset(
                        'assets/images/icons/saved.svg',
                        color: kMainColor,
                      )),
                    ),
                    SizedBox(
                      width: 15.w,
                    ),
                    CustomButton(
                      text: 'Add to cart',
                      width: 250.w,
                      height: 60.h,
                      radius: 8,
                      fontSize: 20.sp,
                      onTap: (){
                        Navigator.pop(context);
                      },
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
