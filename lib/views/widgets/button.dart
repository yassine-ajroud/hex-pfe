import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sle_stock/core/styles/colors.dart';
import 'package:sle_stock/core/styles/text_styles.dart';

class MyButton extends StatelessWidget {
  final String text;
  final Color color;
  final void Function() onPressed;
  final double? width;
  const MyButton({super.key, required this.text, required this.onPressed, this.color = MyColors.primary,this.width});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width:width?? 110.w, // <-- Your width
      height: 45.h, // <-
      child: ElevatedButton(
            style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(color),
    
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
       RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      )
      )
    ),
            onPressed: onPressed,
            child: Text(text,  style:MyTextStyles.buttonTextStyle ,),
          ),
    );
  }
}