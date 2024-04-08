import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture_shopping/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool _switchValue = true;
  bool _switchValue2 = false;
  bool _switchValue3 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios)),
        centerTitle: true,
        title: Text(
          'Setting',
          style: GoogleFonts.merriweather(
              fontWeight: FontWeight.bold, fontSize: 16.sp, color: kMainColor),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 20.h, right: 20.w, left: 20.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    'Personal Information',
                    style: GoogleFonts.nunitoSans(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff909090),
                    ),
                  ),
                  const Spacer(),
                  SvgPicture.asset('assets/images/icons/edit.svg')
                ],
              ),
              SizedBox(
                height: 15.h,
              ),
              Container(
                padding: EdgeInsets.only(top: 10.h, left: 16.w),
                width: 335.w,
                height: 64.h,
                decoration: BoxDecoration(
                    color: Color(0xffFFFFFF),
                    borderRadius: BorderRadius.circular(4),
                    // border: Border.all(color: Color(0xffDBDBDB)
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        spreadRadius: 5,
                        blurRadius: 10,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ]),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Name',
                      style: GoogleFonts.nunitoSans(
                          fontWeight: FontWeight.normal,
                          fontSize: 12.sp,
                          color: Color(0xff808080)),
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    Text(
                      'Bruno Pham',
                      style: GoogleFonts.nunitoSans(
                          fontWeight: FontWeight.w600,
                          fontSize: 16.sp,
                          color: Color(0xff242424)),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Container(
                padding: EdgeInsets.only(top: 10.h, left: 16.w),
                width: 335.w,
                height: 64.h,
                decoration: BoxDecoration(
                    color: Color(0xffFFFFFF),
                    borderRadius: BorderRadius.circular(4),
                    // border: Border.all(color: Color(0xffDBDBDB)
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        spreadRadius: 5,
                        blurRadius: 10,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ]),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Email',
                      style: GoogleFonts.nunitoSans(
                          fontWeight: FontWeight.normal,
                          fontSize: 12.sp,
                          color: Color(0xff808080)),
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    Text(
                      'bruno20 3@gmail.com',
                      style: GoogleFonts.nunitoSans(
                          fontWeight: FontWeight.w600,
                          fontSize: 16.sp,
                          color: Color(0xff242424)),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40.h,
              ),
              Row(
                children: [
                  Text(
                    'Password',
                    style: GoogleFonts.nunitoSans(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff909090),
                    ),
                  ),
                  const Spacer(),
                  SvgPicture.asset('assets/images/icons/edit.svg')
                ],
              ),
              SizedBox(
                height: 15.h,
              ),
              Container(
                padding: EdgeInsets.only(top: 10.h, left: 16.w),
                width: 335.w,
                height: 64.h,
                decoration: BoxDecoration(
                    color: Color(0xffFFFFFF),
                    borderRadius: BorderRadius.circular(4),
                    // border: Border.all(color: Color(0xffDBDBDB)
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        spreadRadius: 5,
                        blurRadius: 10,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ]),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Name',
                      style: GoogleFonts.nunitoSans(
                          fontWeight: FontWeight.normal,
                          fontSize: 12.sp,
                          color: Color(0xff808080)),
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    Text(
                      '***************',
                      style: GoogleFonts.nunitoSans(
                          fontWeight: FontWeight.w600,
                          fontSize: 16.sp,
                          color: Color(0xff242424)),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              Row(
                children: [
                  Text(
                    'Notifications',
                    style: GoogleFonts.nunitoSans(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff909090),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                padding: EdgeInsets.only(top: 10.h, left: 16.w, bottom: 10.h),
                width: 335.w,
                height: 54.h,
                decoration: BoxDecoration(
                    color: Color(0xffFFFFFF),
                    borderRadius: BorderRadius.circular(4),
                    // border: Border.all(color: Color(0xffDBDBDB)
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        spreadRadius: 5,
                        blurRadius: 10,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ]),
                child: Row(
                  children: [
                    Text(
                      'Saless',
                      style: GoogleFonts.nunitoSans(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff242424),
                      ),
                    ),
                    Spacer(),
                    CupertinoSwitch(
                      value: _switchValue,
                      onChanged: (value) {
                        setState(() {
                          _switchValue = value;
                        });
                      },
                    ),
                    SizedBox(
                      width: 13.w,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                padding: EdgeInsets.only(top: 10.h, left: 16.w, bottom: 10.h),
                width: 335.w,
                height: 54.h,
                decoration: BoxDecoration(
                    color: Color(0xffFFFFFF),
                    borderRadius: BorderRadius.circular(4),
                    // border: Border.all(color: Color(0xffDBDBDB)
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        spreadRadius: 5,
                        blurRadius: 10,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ]),
                child: Row(
                  children: [
                    Text(
                      'New arrivals',
                      style: GoogleFonts.nunitoSans(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff242424),
                      ),
                    ),
                    Spacer(),
                    CupertinoSwitch(
                      value: _switchValue2,
                      onChanged: (value) {
                        setState(() {
                          _switchValue2 = value;
                        });
                      },
                    ),
                    SizedBox(
                      width: 13.w,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                padding: EdgeInsets.only(top: 10.h, left: 16.w, bottom: 10.h),
                width: 335.w,
                height: 54.h,
                decoration: BoxDecoration(
                    color: Color(0xffFFFFFF),
                    borderRadius: BorderRadius.circular(4),
                    // border: Border.all(color: Color(0xffDBDBDB)
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        spreadRadius: 5,
                        blurRadius: 10,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ]),
                child: Row(
                  children: [
                    Text(
                      'Delivery status changes',
                      style: GoogleFonts.nunitoSans(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff242424),
                      ),
                    ),
                    Spacer(),
                    CupertinoSwitch(
                      value: _switchValue3,
                      onChanged: (value) {
                        setState(() {
                          _switchValue3 = value;
                        });
                      },
                    ),
                    SizedBox(
                      width: 13.w,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              Row(
                children: [
                  Text(
                    'Help Center',
                    style: GoogleFonts.nunitoSans(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff909090),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15.h,
              ),
              Container(
                padding: EdgeInsets.only(top: 10.h, left: 16.w, bottom: 10.h),
                width: 335.w,
                height: 54.h,
                decoration: BoxDecoration(
                    color: Color(0xffFFFFFF),
                    borderRadius: BorderRadius.circular(4),
                    // border: Border.all(color: Color(0xffDBDBDB)
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        spreadRadius: 5,
                        blurRadius: 10,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ]),
                child: Row(
                  children: [
                    Text(
                      'FAQ',
                      style: GoogleFonts.nunitoSans(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff242424),
                      ),
                    ),
                    Spacer(),
                    Icon(Icons.arrow_forward_ios),
                    SizedBox(
                      width: 13.w,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
