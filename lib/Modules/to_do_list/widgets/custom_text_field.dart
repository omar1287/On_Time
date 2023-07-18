import 'package:flutter/material.dart';


class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {Key? key,
      required this.hint,
      this.maxLines = 1,
      this.onSaved,
      this.onChanged}) : super(key: key);

  final String hint;
  final int maxLines;

  final void Function(String)? onSaved;

  final Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      onSaved: (data){
        onSaved!(data!);
      },
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'Field is required ';
        } else {
          return null;
        }
      },
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: hint,
        filled: true,
        fillColor: const Color(0xffF6F6F6),
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(),
      ),
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(
          8,
        ),
        borderSide: BorderSide(
          color: color ?? Colors.white,
        ));
  }
}
