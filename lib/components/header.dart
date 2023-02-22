import 'package:alurabank/themes/theme_colors.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: ThemeColors.gradient,
          ),
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(10))),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 80, 20, 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    text: '\$ ',
                    children: <TextSpan>[
                      TextSpan(
                        text: '1000.00',
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ],
                  ),
                ),
                const Text("Available balance")
              ],
            ),
            const Icon(
              Icons.account_circle,
              size: 35,
            )
          ],
        ),
      ),
    );
  }
}
