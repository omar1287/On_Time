import 'package:flutter/material.dart';

import '../../../core/utils/app_styles.dart';

class ListSettings extends StatelessWidget {
  const ListSettings({
    super.key,
    required this.title,
    required this.icons,
  });

  final String title;
  final IconData icons;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0x19034488),
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8))
      ),
      child: ListTile(
        title: Text(
          title,
          style: AppStyles.textStyle16,
        ),
        leading: Icon(
            icons
        ),
      ),
    );
  }
}