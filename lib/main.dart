import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sle_stock/core/styles/colors.dart';
import 'package:sle_stock/views/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          iconButtonTheme: IconButtonThemeData( style: ButtonStyle(iconColor:MaterialStateProperty.all(Colors.white) )),
          colorScheme: ColorScheme.fromSeed(seedColor: MyColors.primary),
          useMaterial3: true,
        ),
        home: const SplashScreen(),
      ),
    );
  }
}