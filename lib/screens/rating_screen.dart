import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture_shopping/constants.dart';
import 'package:furniture_shopping/widgets/custom_button_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class RatingScreen extends StatelessWidget {
  const RatingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: CustomButton(
          text: 'Write a review', width: 334.w, height: 50.h, radius: 8, fontSize: 18.sp,),
      appBar: AppBar(
        leading: IconButton(onPressed: () {
               Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios)),
        centerTitle: true,
        title: Text(
          'Rating & Review',
          style: GoogleFonts.merriweather(
              fontWeight: FontWeight.bold, fontSize: 16.sp, color: kMainColor),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 20.w, top: 20.h),
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
                      'assets/images/table.png',
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
                          'Minimal Stand',
                          style: GoogleFonts.nunitoSans(
                            fontWeight: FontWeight.normal,
                            fontSize: 14.sp,
                            color: kMainColor,
                          ),
                        ),
                        SizedBox(
                          height: 3.h,
                        ),
                        Row(
                          children: [
                            SvgPicture.asset('assets/images/star.svg'),
                            SizedBox(
                              width: 10.w,
                            ),
                            Text(
                              '4.5',
                              style: GoogleFonts.nunitoSans(
                                fontWeight: FontWeight.bold,
                                fontSize: 25.sp,
                                color: kMainColor,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          '10 reviews',
                          style: GoogleFonts.nunitoSans(
                            fontWeight: FontWeight.w600,
                            fontSize: 18.sp,
                            color: kMainColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 12.h,
            ),
            Container(
              width: 335.w,
              height: 3,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xffF0F0F0)),
            ),
            SizedBox(
              height: 40.h,
            ),
            revWidget(
              name: 'Bruno Fernandes',
              image: 'assets/images/rev1.png',
            ),
            SizedBox(
              height: 40.h,
            ),
            revWidget(
              name: 'Tracy Mosby',
              image: 'assets/images/rev2.png',
            ),
            SizedBox(
              height: 40.h,
            ),
            revWidget(
              name: 'Bruno Fernandes',
              image: 'assets/images/rev3.png',
            ),
          ],
        ),
      ),
    );
  }
}

class revWidget extends StatelessWidget {
  revWidget({super.key, required this.image, required this.name});

  String? image;
  String? name;

  @override
  Widget build(BuildContext context) {
    return Stack(clipBehavior: Clip.none, children: [
      Container(
        width: 335.w,
        height: 190.h,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 3,
              blurRadius: 5,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.only(top: 20.h, left: 18.w, right: 20.w),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    name!,
                    style: GoogleFonts.nunitoSans(
                      fontWeight: FontWeight.w600,
                      fontSize: 14.sp,
                      color: kMainColor,
                    ),
                  ),
                  Spacer(),
                  Text(
                    '20/03/2020',
                    style: GoogleFonts.nunitoSans(
                      fontWeight: FontWeight.normal,
                      fontSize: 12.sp,
                      color: const Color(0xff808080),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 5.h,
              ),
              Row(
                children: [
                  SvgPicture.asset('assets/images/star.svg'),
                  SizedBox(
                    width: 2.w,
                  ),
                  SvgPicture.asset('assets/images/star.svg'),
                  SizedBox(
                    width: 2.w,
                  ),
                  SvgPicture.asset('assets/images/star.svg'),
                  SizedBox(
                    width: 2.w,
                  ),
                  SvgPicture.asset('assets/images/star.svg'),
                  SizedBox(
                    width: 2.w,
                  ),
                  SvgPicture.asset('assets/images/star.svg'),
                  SizedBox(
                    width: 2.w,
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                width: 303.w,
                height: 100.h,
                child: Text(
                  'Nice Furniture with good delivery. The delivery time is very fast. Then products look like exactly the picture in the app. Besides, color is also the same and quality is very good despite very cheap price',
                  style: GoogleFonts.nunitoSans(
                    fontWeight: FontWeight.normal,
                    fontSize: 14.sp,
                    color: kMainColor,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      Positioned(
        //top: 0.h,
        bottom: 170.h,
        left: 158.w,
        child: Container(
          width: 40.w,
          height: 40.h,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
          ),
          child: Image.asset(image!),
        ),
      ),
    ]);
  }
}
