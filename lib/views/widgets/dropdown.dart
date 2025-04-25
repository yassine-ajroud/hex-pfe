import 'package:flutter/material.dart';

class TypeInput extends StatefulWidget {
  final String? value;
  final bool? enabled;
  const TypeInput({super.key,this.value , this.enabled});

  @override
  State<TypeInput> createState() => _TypeInputState();
}

class _TypeInputState extends State<TypeInput> {
  String type='';

  @override
  void initState() {
    type=widget.value??'Nikon';
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
          padding: const EdgeInsets.all(9.0),
          child: InputDecorator(
            decoration: InputDecoration(
              labelText: 'type',
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              contentPadding:const EdgeInsets.all(10),
            ),
            child: ButtonTheme(
              materialTapTargetSize: MaterialTapTargetSize.padded,
              child: DropdownButton<String>(
                hint: const Text("type"),
                isExpanded: true,
                value: type,
                elevation: 16,
                underline: DropdownButtonHideUnderline(
                  child: Container(),
                ),
                onChanged: (String? newValue) {
                  setState(() {
                    type = newValue!;
                  });
                },
                items: <String>['Nikon', 'Spectra', 'Trimble']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
          ),
        );
  }
}