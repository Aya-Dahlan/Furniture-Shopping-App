import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_shopping/constants.dart';
import 'package:furniture_shopping/screens/add_payment_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  bool _isChecked = false;
    bool _isChecked2 = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: GestureDetector(
        onTap: (){
               Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AddPaymentScreen()),
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
          'Payment method',
          style: GoogleFonts.merriweather(
              fontWeight: FontWeight.bold, fontSize: 16.sp, color: kMainColor),
        ),
      ),
      body: Column(
        children: [
          Image.asset(
            'assets/images/paymentCard.png',
            fit: BoxFit.fill,
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.w),
            child: Row(
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
                  'Use as default payment method',
                  style: GoogleFonts.nunitoSans(
                    fontSize: 18.sp,
                    color: Color(0xff242424),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20.h, left: 19.w, right: 10.w),
            child: Image.asset(
              'assets/images/paymentCard2.png',
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.w),
            child: Row(
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
                  'Use as default payment method',
                  style: GoogleFonts.nunitoSans(
                    fontSize: 18.sp,
                    color: Color(0xff242424),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
