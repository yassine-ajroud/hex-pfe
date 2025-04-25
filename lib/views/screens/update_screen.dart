import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sle_stock/core/styles/colors.dart';
import 'package:sle_stock/core/styles/text_styles.dart';
import 'package:sle_stock/models/product.dart';
import 'package:sle_stock/views/screens/details_screen.dart';
import 'package:sle_stock/views/widgets/button.dart';
import 'package:sle_stock/views/widgets/dropdown.dart';
import 'package:sle_stock/views/widgets/text_field.dart';

class UpdateScreen extends StatefulWidget {
  final Product product;
  const UpdateScreen({super.key , required this.product});

  @override
  State<UpdateScreen> createState() => _UpdateScreenState();
}

class _UpdateScreenState extends State<UpdateScreen> {
   late final TextEditingController code;  
      late final TextEditingController nom;  
   late final TextEditingController quantity;  
   String type='';

@override
  void initState() {
    code =TextEditingController();
    nom =TextEditingController();
    quantity =TextEditingController();

    code.text=widget.product.code;
    nom.text = widget.product.title;
    quantity.text = widget.product.quantity.toString();
    type=widget.product.type;
    super.initState();
  }

  @override
  void dispose() {
    code.dispose();
    nom.dispose();
    quantity.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
       appBar: AppBar(
        backgroundColor: MyColors.primary,
        title: Text('Modifier produit',style: MyTextStyles.appBarTextStyle,),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: SizedBox(
          height: MediaQuery.sizeOf(context).height,
          child: Column(
            children: [
              const SizedBox(height: 10,),
              MyTextField(text: 'code',controller: code,enabled: false,),
              MyTextField(text: 'nom',controller: nom),
              TypeInput(value: type,),
              MyTextField(text: 'Quantité',controller: quantity ,type:TextInputType.number,),
              const Spacer(),
              Align(
                //alignment: Alignment.bottomCenter,
               child: Padding(
                 padding: const EdgeInsets.symmetric(vertical: 8.0),
                 child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                   children: [
                    MyButton(text: 'Annuler',onPressed: () {},color: Colors.grey,),
                    const SizedBox(width: 10,),
                     MyButton(text: 'Enregistrer',onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>DetailsScreen(product: widget.product,)));
                     },width: 120.w,),
                                  
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