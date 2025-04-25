import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sle_stock/core/styles/colors.dart';
import 'package:sle_stock/core/styles/text_styles.dart';
import 'package:sle_stock/models/product.dart';
import 'package:sle_stock/views/screens/allocate_screen.dart';
import 'package:sle_stock/views/screens/update_screen.dart';
import 'package:sle_stock/views/widgets/button.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;
  const DetailsScreen({super.key,required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
       appBar: AppBar(
        backgroundColor: MyColors.primary,
        title: Text('Détails du produits',style: MyTextStyles.appBarTextStyle,),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: SizedBox(
          height: MediaQuery.sizeOf(context).height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10,),
              Text('Code : ${product.code}',style: MyTextStyles.scannedProductTextStyle,),
                            Text('Nom : ${product.title}',style: MyTextStyles.scannedProductTextStyle,),
              Text('Type : ${product.type}',style: MyTextStyles.scannedProductTextStyle,),
              Text('Quantité : ${product.quantity}',style: MyTextStyles.scannedProductTextStyle,),
              Text('créé à : 12-2-2025',style: MyTextStyles.scannedProductTextStyle,),
             Text('mis à jour à : 14-2-2025',style: MyTextStyles.scannedProductTextStyle,),

              const Spacer(),
              Align(
                //alignment: Alignment.bottomCenter,
               child: Padding(
                 padding: const EdgeInsets.symmetric(vertical: 8.0),
                 child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                   children: [
                    MyButton(text: 'Supprimer',onPressed: () {},color: Colors.red,width:115.w ,),
                    MyButton(text: 'Allouer',onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (_)=>AllocateScreen(product:Product(title: 'title', code: '1122221111', type: 'Trimble', quantity: 2) )));
                    },width: 100.w,),
                     MyButton(text: 'Modifier',onPressed: () {
                       Navigator.of(context).push(MaterialPageRoute(builder: (_)=>UpdateScreen(product:Product(title: 'title', code: '1122221111', type: 'Trimble', quantity: 2) )));
                     },width: 100.w,),
                                  
                   ],
                 ),
               ),
             ) ,  ],
          ),
        ),
      ),
    );
  }
}