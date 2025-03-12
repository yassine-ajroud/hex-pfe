import 'package:flutter/material.dart';
import 'package:sle_stock/core/styles/colors.dart';
import 'package:sle_stock/core/styles/text_styles.dart';

class MyButton extends StatelessWidget {
  final String text;
  final Color color;
  final void Function() onPressed;
  const MyButton({super.key, required this.text, required this.onPressed, this.color = MyColors.primary});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120, // <-- Your width
      height: 50, // <-
      child: ElevatedButton(
            style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(color),
    
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
       RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      )
      )
    ),
            onPressed: () {},
            child: Text(text,  style:MyTextStyles.buttonTextStyle ,),
          ),
    );
  }
}