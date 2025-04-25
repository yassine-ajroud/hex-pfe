import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sle_stock/core/styles/colors.dart';
import 'package:sle_stock/core/styles/text_styles.dart';
import 'package:sle_stock/models/product.dart';
import 'package:sle_stock/views/screens/details_screen.dart';
import 'package:sle_stock/views/widgets/button.dart';
import 'package:sle_stock/views/widgets/increment_button.dart';
import 'package:sle_stock/views/widgets/text_field.dart';

class AllocateScreen extends StatefulWidget {
  final Product product;
  const AllocateScreen({super.key , required this.product});

  @override
  State<AllocateScreen> createState() => _AllocateScreenState();
}

class _AllocateScreenState extends State<AllocateScreen> {
   late final TextEditingController code;  
      late final TextEditingController nom;  
      late final TextEditingController username;  
      late final TextEditingController cin;  
      late final TextEditingController client;  
   late final TextEditingController quantity;  
   String type='';

@override
  void initState() {
    code =TextEditingController();
    nom =TextEditingController();
    quantity =TextEditingController();
    cin = TextEditingController();
    client = TextEditingController();
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
    client.dispose();
    cin.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
       appBar: AppBar(
        backgroundColor: MyColors.primary,
        title: Text('Allouer produit',style: MyTextStyles.appBarTextStyle,),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10,),
              MyTextField(text: 'code',controller: code,enabled: false,),
              MyTextField(text: 'nom',controller: nom,enabled: false,),
              MyTextField(text: 'type',controller: TextEditingController.fromValue(TextEditingValue(text: type)),enabled: false,),
              MyTextField(text: 'client',controller: client),
              MyTextField(text: 'cin',controller: cin,type: TextInputType.number,length: 8,),
        
        
              Row(
                children: [
                  SizedBox(
                    width: 100.w,
                    child: MyTextField(text: 'Quantité',controller: quantity ,type:TextInputType.number,)),
                    IncButon(icon: Icons.remove, onPressed: (){}),
                    const SizedBox(width: 5,),
                    IncButon(icon:Icons.add, onPressed: (){}),

                ],
                
              ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text('ajouter 6 photos',style: MyTextStyles.imageTextStyle,),
                                        ),

              Padding(
                padding: const EdgeInsets.only(bottom:8.0 , left: 8.0, right: 8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: AspectRatio(
                    aspectRatio: 2/1.2,
                    child: Image.asset('assets/images/placeholder.jpg',fit: BoxFit.cover))),
              ),
              //const Spacer(),
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