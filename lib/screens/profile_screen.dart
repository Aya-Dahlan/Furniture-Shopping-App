import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture_shopping/constants.dart';
import 'package:furniture_shopping/screens/my_review_screen.dart';
import 'package:furniture_shopping/screens/order_screen.dart';
import 'package:furniture_shopping/screens/payment_screen.dart';
import 'package:furniture_shopping/screens/settings_screen.dart';
import 'package:furniture_shopping/screens/shipping_sceen.dart';
import 'package:furniture_shopping/screens/splash_screen.dart';
import 'package:furniture_shopping/widgets/profile_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            'assets/images/icons/search.svg',
            color: kMainColor,
          ),
        ),
        centerTitle: true,
        title: Text(
          'Profile',
          style: GoogleFonts.merriweather(
              fontWeight: FontWeight.bold, fontSize: 16.sp, color: kMainColor),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SplashScreen()),
              );
            },
            icon: SvgPicture.asset('assets/images/icons/logout.svg'),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20.h,
            ),
            Row(
              children: [
                Container(
                  width: 80.w,
                  height: 80.h,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset('assets/images/profile.png'),
                ),
                SizedBox(
                  width: 17.w,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Bruno Pham',
                      style: GoogleFonts.nunitoSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.sp,
                          color: kMainColor),
                    ),
                    SizedBox(
                      height: 0.h,
                    ),
                    Text(
                      'bruno203@gmail.com',
                      style: GoogleFonts.nunitoSans(
                          fontWeight: FontWeight.normal,
                          fontSize: 14.sp,
                          color: Color(0xff808080)),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 30.h,
            ),
            profileWidget(
              title: 'My orders',
              subT: 'Already have 10 orders',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => OrderScreen()),
                );
              },
            ),
            SizedBox(
              height: 15.h,
            ),
            profileWidget(
              title: 'Shipping Addresses',
              subT: '03 Addresses',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ShippingScreen()),
                );
              },
            ),
            SizedBox(
              height: 15.h,
            ),
            profileWidget(
              title: 'Payment Method',
              subT: 'You have 2 cards',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PaymentScreen()),
                );
              },
            ),
            SizedBox(
              height: 15.h,
            ),
            profileWidget(
              title: 'My reviews',
              subT: 'Reviews for 5 items',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyReviewScreen()),
                );
              },
            ),
            SizedBox(
              height: 15.h,
            ),
            profileWidget(
              title: 'Setting',
              subT: 'Notification, Password, FAQ, Contact',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SettingsScreen()),
                );
              },
            ),
            SizedBox(
              height: 15.h,
            ),
          ],
        ),
      ),
    );
  }
}
