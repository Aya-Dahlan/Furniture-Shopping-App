import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_shopping/screens/add_payment_screen.dart';
import 'package:furniture_shopping/screens/add_shipping_screen.dart';
import 'package:furniture_shopping/screens/my_review_screen.dart';
import 'package:furniture_shopping/screens/payment_screen.dart';
import 'package:furniture_shopping/screens/settings_screen.dart';
import 'package:furniture_shopping/screens/shipping_sceen.dart';
import 'package:furniture_shopping/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widge t is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.grey.shade300),
            useMaterial3: true,
          ),
          home: const SplashScreen(),
        );
      },
    );
  }
}
