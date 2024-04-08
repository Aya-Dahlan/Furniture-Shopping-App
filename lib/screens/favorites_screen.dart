import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture_shopping/models/fav_model.dart';
import 'package:furniture_shopping/screens/cart_screen.dart';
import 'package:furniture_shopping/widgets/custom_button_widget.dart';
import 'package:furniture_shopping/widgets/fav_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class FavoritesScreen extends StatelessWidget {
  FavoritesScreen({super.key});
  final List<FavoriteModel> favoriteItems = [
    FavoriteModel(
        image: 'assets/images/coffee.png',
        title: 'Coffee Table',
        cost: '\$ 50.00'),
    FavoriteModel(
        image: 'assets/images/chair.png',
        title: 'Coffee Chair',
        cost: '\$ 20.00'),
    FavoriteModel(
        image: 'assets/images/table.png',
        title: 'Minimal Stand',
        cost: '\$ 25.00'),
    FavoriteModel(
        image: 'assets/images/desk.png',
        title: 'Minimal Desk',
        cost: '\$ 50.00'),
    FavoriteModel(
        image: 'assets/images/lamb.png',
        title: 'Minimal Lamp',
        cost: '\$ 12.00'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Padding(
        padding: EdgeInsets.only(
          left: 25.w,
        ),
        child: CustomButton(
          text: 'Add all to my cart',
          width: 434.w,
          height: 50.h,
          radius: 8,
          fontSize: 18.sp,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 50.h, left: 20.w, right: 17.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                 
                    },
                    icon: SvgPicture.asset(
                      'assets/images/icons/search.svg',
                      color: const Color(0xff808080),
                      width: 24.w,
                      height: 24.h,
                    ),
                  ),
                  SizedBox(width: 80.w),
                  Text(
                    'Favorites',
                    style: GoogleFonts.gelasio(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.sp,
                      color: const Color(0xff242424),
                    ),
                  ),
                  SizedBox(width: 80.w),
                  IconButton(
                    onPressed: () {     Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => CartScreen()),
                      );},
                    icon: SvgPicture.asset(
                      'assets/images/icons/cart.svg',
                      width: 21.w,
                      height: 21.h,
                    ),
                  ),
                ],
              ),
              //  SizedBox(height: 18.h),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: favoriteItems.length,
                itemBuilder: (BuildContext context, int index) {
                  final item = favoriteItems[index];
                  return Padding(
                    padding: EdgeInsets.only(bottom: 10.h),
                    child: favWidget(
                      image: item.image,
                      title: item.title,
                      cost: item.cost,
                    ),
                  );
                },
              ),
              Container(
                height: 40.h,
              )
            ],
          ),
        ),
      ),
    );
  }
}
