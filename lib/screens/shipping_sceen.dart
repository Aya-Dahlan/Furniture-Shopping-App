import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_shopping/constants.dart';
import 'package:furniture_shopping/screens/add_shipping_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class ShippingScreen extends StatefulWidget {
  const ShippingScreen({super.key});

  @override
  State<ShippingScreen> createState() => _ShippingScreenState();
}

class _ShippingScreenState extends State<ShippingScreen> {
  bool _isChecked = false;
  bool _isChecked2 = false;
  bool _isChecked3 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       floatingActionButton: GestureDetector(
        onDoubleTap: (){
               Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AddShippingScreen()),
                      );
        },
         child: Container(
          width:52.w ,
          height:52.h ,
          decoration:BoxDecoration(
            shape: BoxShape.circle, 
            color: Colors.white,
            boxShadow: [   BoxShadow(
          color: Colors.grey.withOpacity(0.3),
          spreadRadius: 4,
          blurRadius: 10,
          offset: Offset(0, 3), // changes position of shadow
               ),]
          ) ,
          child: Icon(Icons.add, size: 35,color: kMainColor,),
               ),
       ),
      appBar: AppBar(
        leading: IconButton(onPressed: () {

          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios)),
        centerTitle: true,
        title: Text(
          'Shipping address',
          style: GoogleFonts.merriweather(
              fontWeight: FontWeight.bold, fontSize: 16.sp, color: kMainColor),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 0.h, left: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 15),
            Row(
              children: [
                Checkbox(
                  focusColor: kMainColor,
                  activeColor: kMainColor,
                  value: _isChecked,
                  onChanged: (bool? value) {
                    setState(() {
                      _isChecked = value ?? false;
                    });
                  },
                ),
                Text(
                  'Use as the shipping address',
                  style: GoogleFonts.nunitoSans(
                    fontSize: 18.sp,
                    color: Color(0xff242424),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15.h,
            ),
            Container(
              // padding: EdgeInsets.only(left: 20.w, top: 15.h),
              width: 335.w,
              height: 127.h,
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 5,
                  blurRadius: 10,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ], borderRadius: BorderRadius.circular(8), color: Colors.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20.w, top: 15.h),
                    child: Text(
                      'Bruno Fernandes',
                      style: GoogleFonts.nunitoSans(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.sp,
                        color: const Color(0xff303030),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Container(
                    width: 335.w,
                    height: 2.h,
                    decoration: BoxDecoration(
                        color: Color(0xffF0F0F0),
                        borderRadius: BorderRadius.circular(6)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20.w, top: 15.h),
                    child: Text(
                      '25 rue Robert Latouche, Nice, 06200, Côte D’azur, France',
                      style: GoogleFonts.nunitoSans(
                        fontWeight: FontWeight.normal,
                        fontSize: 14.sp,
                        color: const Color(0xff808080),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            Row(
              children: [
                Checkbox(
                  focusColor: kMainColor,
                  activeColor: kMainColor,
                  value: _isChecked2,
                  onChanged: (bool? value) {
                    setState(() {
                      _isChecked2 = value ?? false;
                    });
                  },
                ),
                Text(
                  'Use as the shipping address',
                  style: GoogleFonts.nunitoSans(
                    fontSize: 18.sp,
                    color: Color(0xff242424),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15.h,
            ),
            Container(
              // padding: EdgeInsets.only(left: 20.w, top: 15.h),
              width: 335.w,
              height: 127.h,
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 5,
                  blurRadius: 10,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ], borderRadius: BorderRadius.circular(8), color: Colors.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20.w, top: 15.h),
                    child: Text(
                      'Bruno Fernandes',
                      style: GoogleFonts.nunitoSans(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.sp,
                        color: const Color(0xff303030),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Container(
                    width: 335.w,
                    height: 2.h,
                    decoration: BoxDecoration(
                        color: Color(0xffF0F0F0),
                        borderRadius: BorderRadius.circular(6)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20.w, top: 15.h),
                    child: Text(
                      '25 rue Robert Latouche, Nice, 06200, Côte D’azur, France',
                      style: GoogleFonts.nunitoSans(
                        fontWeight: FontWeight.normal,
                        fontSize: 14.sp,
                        color: const Color(0xff808080),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            Row(
              children: [
                Checkbox(
                  focusColor: kMainColor,
                  activeColor: kMainColor,
                  value: _isChecked3,
                  onChanged: (bool? value) {
                    setState(() {
                      _isChecked3 = value ?? false;
                    });
                  },
                ),
                Text(
                  'Use as the shipping address',
                  style: GoogleFonts.nunitoSans(
                    fontSize: 18.sp,
                    color: Color(0xff242424),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15.h,
            ),
            Container(
              // padding: EdgeInsets.only(left: 20.w, top: 15.h),
              width: 335.w,
              height: 127.h,
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 5,
                  blurRadius: 10,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ], borderRadius: BorderRadius.circular(8), color: Colors.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20.w, top: 15.h),
                    child: Text(
                      'Bruno Fernandes',
                      style: GoogleFonts.nunitoSans(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.sp,
                        color: const Color(0xff303030),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Container(
                    width: 335.w,
                    height: 2.h,
                    decoration: BoxDecoration(
                        color: Color(0xffF0F0F0),
                        borderRadius: BorderRadius.circular(6)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20.w, top: 15.h),
                    child: Text(
                      '25 rue Robert Latouche, Nice, 06200, Côte D’azur, France',
                      style: GoogleFonts.nunitoSans(
                        fontWeight: FontWeight.normal,
                        fontSize: 14.sp,
                        color: const Color(0xff808080),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
