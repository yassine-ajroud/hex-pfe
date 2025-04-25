import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sle_stock/core/styles/colors.dart';

class IncButon extends StatelessWidget {
  final IconData icon;
  final void Function()? onPressed;
  const IncButon({super.key , required this.icon ,required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: 40.h,
        width: 50.w,
        decoration: BoxDecoration(
          color: MyColors.lightGrey,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(child: Icon(icon)),
      ),
    );
  }
}