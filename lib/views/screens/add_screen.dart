import 'package:flutter/material.dart';
import 'package:sle_stock/core/styles/colors.dart';
import 'package:sle_stock/core/styles/text_styles.dart';
import 'package:sle_stock/views/widgets/button.dart';
import 'package:sle_stock/views/widgets/dropdown.dart';
import 'package:sle_stock/views/widgets/text_field.dart';

class AddScreen extends StatefulWidget {
  const AddScreen({super.key});

  @override
  State<AddScreen> createState() => _AddScreenState();
}


class _AddScreenState extends State<AddScreen> {
   late final TextEditingController code;  
      late final TextEditingController nom;  
   late final TextEditingController quantity;  

@override
  void initState() {
    code =TextEditingController();
        nom =TextEditingController();
    quantity =TextEditingController();

    code.text='2345462446878';
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
        title: Text('Ajouter produit',style: MyTextStyles.appBarTextStyle,),
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
              TypeInput(),
              MyTextField(text: 'quantity',controller: quantity ,type:TextInputType.number,),
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
                     MyButton(text: 'Ajouter',onPressed: () {},),
                                  
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