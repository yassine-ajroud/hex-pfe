import 'package:flutter/material.dart';
import 'package:sle_stock/views/screens/scan_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

     Future<void> init(BuildContext context, int duration) async {
        Future.delayed( Duration(seconds: duration), () {

          Navigator.pushReplacement(
           // ignore: use_build_context_synchronously
           context,
             MaterialPageRoute(
              builder:(_)=>const ScanScreen()));
    });}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: FutureBuilder(
        future: init(context,3),
        builder: (context, snapshot) {
          return Center(child: 
          Image.asset('assets/images/SLE-logo-1-1.png',width: MediaQuery.sizeOf(context).width/2,fit: BoxFit.cover,),);
        }
      ),
    );
  }
}


