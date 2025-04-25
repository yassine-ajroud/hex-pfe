import 'package:flutter/material.dart';
import 'package:sle_stock/core/styles/colors.dart';
import 'package:sle_stock/core/styles/text_styles.dart';
import 'package:sle_stock/models/product.dart';
import 'package:sle_stock/views/screens/add_screen.dart';
import 'package:sle_stock/views/screens/details_screen.dart';
import 'package:sle_stock/views/widgets/scanned_product_widget.dart';

class ScanScreen extends StatelessWidget {
  const ScanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: MyColors.primary,
        title: Text('Produits scannés',style: MyTextStyles.appBarTextStyle,),
        actions: [
          IconButton(onPressed: (){}, icon:const Icon(Icons.delete_outline_outlined , color: Colors.white,)),
          IconButton(onPressed: (){}, icon:const Icon(Icons.refresh , color: Colors.white,))
        ],
      ),

      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (_,index)=>InkWell(
          onTap: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (_)=>index.isEven?const AddScreen():DetailsScreen(product: Product(title: 'title', code: '1122221111', type: 'Trimble', quantity: 2))));
          },
          child: ScannedProduct(code: "2345462446878",time: '10:05',lastItem: index ==4,))),
    );
  }
}