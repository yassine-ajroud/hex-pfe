import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final String text;
  final TextEditingController controller;
  final bool enabled;
  final TextInputType? type;
  final int? length;
  const MyTextField({super.key, required this.text, required this.controller, this.enabled =true ,this.type, this.length});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        maxLength: length,
      decoration: InputDecoration(
      enabled: enabled,
      filled: true,
      fillColor: Colors.white,
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
      labelText: text
      ),
      controller: controller,
      keyboardType: type,
      ),
    );
  }
}