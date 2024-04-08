import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_shopping/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class MyReviewScreen extends StatelessWidget {
  const MyReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios)),
        centerTitle: true,
        title: Text(
          'My reviews',
          style: GoogleFonts.merriweather(
              fontWeight: FontWeight.bold, fontSize: 16.sp, color: kMainColor),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                'assets/images/icons/search.svg',
                color: kMainColor,
              ))
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 17.h, left: 20.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const MyRevWidget(),
              SizedBox(
                height: 20.h,
              ),
              const MyRevWidget(),
              SizedBox(
                height: 20.h,
              ),
              const MyRevWidget(),
              SizedBox(
                height: 20.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyRevWidget extends StatelessWidget {
  const MyRevWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 335.w,
      height: 242.h,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 7,
            offset: Offset(0, 5), // changes position of shadow
          ),
        ],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: EdgeInsets.only(top: 16.h, left: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  clipBehavior: Clip.antiAlias,
                  width: 70.w,
                  height: 70.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.black,
                  ),
                  child: Image.asset(
                    'assets/images/coffee.png',
                    fit: BoxFit.fill,
                  ),
                ),
                SizedBox(
                  width: 20.w,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Coffee Table',
                      style: GoogleFonts.nunitoSans(
                          fontWeight: FontWeight.w600,
                          fontSize: 16.sp,
                          color: Color(0xff606060)),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Text(
                      '\$ 50.00',
                      style: GoogleFonts.nunitoSans(
                          fontWeight: FontWeight.w900,
                          fontSize: 16.sp,
                          color: Color(0xff242424)),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 15.h,
            ),
            Row(
              children: [
                SvgPicture.asset('assets/images/star.svg'),
                SvgPicture.asset('assets/images/star.svg'),
                SvgPicture.asset('assets/images/star.svg'),
                SvgPicture.asset('assets/images/star.svg'),
                SvgPicture.asset('assets/images/star.svg'),
                Spacer(),
                Text(
                  '20/03/2020',
                  style: GoogleFonts.nunitoSans(
                      fontWeight: FontWeight.normal,
                      fontSize: 12.sp,
                      color: Color(0xff606060)),
                ),
                SizedBox(
                  width: 16.w,
                )
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Container(
              width: 303.w,
              height: 100.h,
              child: Text(
                maxLines: 5,
                'Nice Furniture with good delivery. The delivery time is very fast. Then products look like exactly the picture in the app. Besides, color is also the same and quality is very good despite very cheap price ',
                style: GoogleFonts.nunitoSans(
                  fontWeight: FontWeight.normal,
                  fontSize: 14.sp,
                  color: Color(0xff242424),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
