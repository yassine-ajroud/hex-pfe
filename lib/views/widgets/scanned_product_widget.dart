import 'package:flutter/material.dart';
import 'package:sle_stock/core/styles/text_styles.dart';

class ScannedProduct extends StatelessWidget {
  final String code;
  final String time;
  final bool lastItem;
  const ScannedProduct({super.key,required this.code , required this.time , required this.lastItem});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(code,style: MyTextStyles.scannedProductTextStyle,),
              Text(time,style: MyTextStyles.timeTextStyle,)
            ],
          ),
          lastItem? const SizedBox():const Divider()
        ],
      ),
    );
  }
}