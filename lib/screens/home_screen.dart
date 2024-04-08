import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_shopping/screens/cart_screen.dart';
import 'package:furniture_shopping/screens/product_screen.dart';
import 'package:furniture_shopping/widgets/items_select.dart';
import 'package:furniture_shopping/widgets/product_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: Padding(
        padding: EdgeInsets.only(top: 50.h, left: 17.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      'assets/images/icons/search.svg',
                      color: const Color(0xff808080),
                      width: 24.w,
                      height: 24.h,
                    ),
                  ),
                  SizedBox(width: 70.w),
                  Column(
                    children: [
                      Text(
                        'Make home',
                        style: GoogleFonts.gelasio(
                          fontWeight: FontWeight.normal,
                          fontSize: 18.sp,
                          color: const Color(0xff909090),
                        ),
                      ),
                      Text(
                        'BEAUTIFUL',
                        style: GoogleFonts.gelasio(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.sp,
                          color: const Color(0xff242424),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 70.w),
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => CartScreen()),
                      );
                    },
                    icon: SvgPicture.asset(
                      'assets/images/icons/cart.svg',
                      width: 21.w,
                      height: 21.h,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.h),
              const itemsList(),
              SizedBox(height: 20.h),
              Row(
                children: [
                  Products(
                    name: 'Black Simple Lamp',
                    image: 'assets/images/lamb.png',
                    cost: '12.00 \$',
                  ),
                  SizedBox(
                    width: 21.w,
                  ),
                  Products(
                    name: 'Minimal Stand',
                    image: 'assets/images/table.png',
                    cost: '25.00',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>  ProductScreen()),
                      );
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 15.h,
              ),
              Row(
                children: [
                  Products(
                    name: 'Coffee Chair',
                    image: 'assets/images/chair.png',
                    cost: '20.00 \$',
                  ),
                  SizedBox(
                    width: 21.w,
                  ),
                  Products(
                    name: 'Simple Desk',
                    image: 'assets/images/desk.png',
                    cost: '50.00 \$',
                  ),
                ],
              ),
              SizedBox(
                height: 15.h,
              ),
              Row(
                children: [
                  Products(
                    name: 'Coffee Table',
                    image: 'assets/images/coffee.png',
                    cost: '50.00 \$',
                  ),
                  SizedBox(
                    width: 21.w,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class itemsList extends StatelessWidget {
  const itemsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ItemsSelect(
            title: 'Popular',
            image: 'assets/images/icons/star.svg',
            selectedIndex: 0,
          ),
          SizedBox(
            width: 25.w,
          ),
          ItemsSelect(
            title: 'Chair',
            image: 'assets/images/icons/chair.svg',
            selectedIndex: 1,
          ),
          SizedBox(
            width: 25.w,
          ),
          ItemsSelect(
            title: 'Table',
            image: 'assets/images/icons/table.svg',
            selectedIndex: 2,
          ),
          SizedBox(
            width: 25.w,
          ),
          ItemsSelect(
            title: 'Armchair',
            image: 'assets/images/icons/armchair.svg',
            selectedIndex: 3,
          ),
          SizedBox(
            width: 25.w,
          ),
          ItemsSelect(
            title: 'Bed',
            image: 'assets/images/icons/bed.svg',
            selectedIndex: 4,
          ),
          SizedBox(
            width: 25.w,
          ),
          ItemsSelect(
            title: 'Lamb',
            image: 'assets/images/icons/lamb.svg',
            selectedIndex: 5,
          ),
          SizedBox(
            width: 25.w,
          ),
        ],
      ),
    );
  }
}
