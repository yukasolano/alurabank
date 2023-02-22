import 'package:alurabank/themes/theme_colors.dart';
import 'package:flutter/material.dart';

class LineDivider extends StatelessWidget {
  const LineDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
      child: Container(
        height: 1,
        decoration: const BoxDecoration(color: ThemeColors.divider),
      ),
    );
  }
}
