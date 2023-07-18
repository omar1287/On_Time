import 'package:flutter/material.dart';

import '../../../core/utils/app_styles.dart';

class CustomButton extends StatefulWidget {
  const CustomButton({
    super.key,
    required this.text,
  });
  final String text;

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(
        widget.text,
        style: AppStyles.textStyle13,
      ),
    );
  }
}