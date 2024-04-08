import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_shopping/constants.dart';
import 'package:furniture_shopping/screens/check_out_screen.dart';
import 'package:furniture_shopping/widgets/cart_widget.dart';
import 'package:furniture_shopping/widgets/custom_button_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Color(0xff242424),
          ),
        ),
        title: Text(
          'My cart',
          style: GoogleFonts.merriweather(
            fontWeight: FontWeight.bold,
            fontSize: 16.sp,
            color: const Color(0xff303030),
          ),
        ),
      ),
      body: Column(
        children: [
          CartWidget(
            image: 'assets/images/table.png',
            name: 'Minimal Stand',
            cost: '25.00',
          ),
          SizedBox(
            height: 12.h,
          ),
          CartWidget(
            image: 'assets/images/coffee.png',
            name: 'Coffee Table',
            cost: '20.00',
          ),
          SizedBox(
            height: 12.h,
          ),
          CartWidget(
            image: 'assets/images/desk.png',
            name: 'Minimal Desk',
            cost: '50.00',
          ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 291.w,
                height: 44.h,
                decoration: BoxDecoration(
                  color: const Color(0xffFFFFFF),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 5,
                      blurRadius: 10,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 20.w, top: 11.h),
                  child: Text(
                    'Enter your promo code',
                    style: GoogleFonts.nunitoSans(
                        fontSize: 16.sp, color: Color(0xff999999)),
                  ),
                ),
              ),
              Container(
                width: 43.w,
                height: 44.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: kMainColor,
                ),
                child: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 40.w, right: 40.w),
            child: Row(
              children: [
                Text(
                  'Total :',
                  style: GoogleFonts.nunitoSans(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff808080),
                  ),
                ),
                Spacer(),
                Text(
                  '\$ 95.00',
                  style: GoogleFonts.nunitoSans(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                    color: kMainColor,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          CustomButton(
            text: 'Check out',
            width: 335.w,
            height: 60.h,
            radius: 8,
            fontSize: 20.sp,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ChaeckOutScreen()),
              );
            },
          ),
          SizedBox(
            height: 20.h,
          )
        ],
      ),
    );
  }
}
