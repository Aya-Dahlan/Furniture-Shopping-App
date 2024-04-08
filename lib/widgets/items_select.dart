import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class ItemsSelect extends StatefulWidget {
  ItemsSelect(
      {super.key, required this.title, required this.image, required this.selectedIndex});

  @override
  State<ItemsSelect> createState() => _ItemsSelectState();

  String? title;
  String? image;
  int? selectedIndex;
  int index = 0;
}

class _ItemsSelectState extends State<ItemsSelect> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: (){
            setState(() {
              widget.selectedIndex!=widget.index;

            });

          },
          child: Container(
            width: 44.w,
            height: 44.h,
            decoration: BoxDecoration(
              color: widget.index == widget.selectedIndex
                  ? Color(0xff242424)
                  : Color(0xffF5F5F5),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Center(
              child: SvgPicture.asset(widget.image!,
                  color: widget.index == widget.selectedIndex
                      ? Colors.white
                      : Color(0xff909090)),
            ),
          ),
        ),
        SizedBox(
          height: 5.h,
        ),
        Text(
          widget.title!,
          style: GoogleFonts.nunitoSans(
              fontWeight: FontWeight.normal,
              fontSize: 14.sp,
              color: widget.index == widget.selectedIndex
                  ? Color(0xff242424)
                  : Color(0xff909090)),
        ),
      ],
    );
  }
}
